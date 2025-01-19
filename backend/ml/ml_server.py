from flask import Flask, request, jsonify
import psycopg2
import pandas as pd
from sklearn.linear_model import LinearRegression
from datetime import datetime, timedelta

app = Flask(__name__)

# Database connection settings
DB_CONFIG = {
    "dbname": "postgres",
    "user": "postgres",
    "password": "helloworld123",
    "host": "localhost", 
    "port": 5432
}

# Connect to PostgreSQL
def fetch_data(query):
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        df = pd.read_sql(query, conn)
        conn.close()
        return df
    except Exception as e:
        return {"error": str(e)}

# Train the regression model
def train_model(data):
    X = data[["month"]]
    y = data["total_spent"]
    model = LinearRegression()
    model.fit(X, y)
    return model

# Endpoint for future predictions
@app.route('/predict', methods=['POST'])  # Changed to GET
def predict():
    # Fetch historical data from PostgreSQL
    query = """
        SELECT 
            EXTRACT(MONTH FROM transaction_date) AS month,
            SUM(amount) AS total_spent
        FROM transactions
        GROUP BY EXTRACT(MONTH FROM transaction_date)
        ORDER BY month
    """
    data = fetch_data(query)

    if "error" in data:
        return jsonify({"error": data["error"]}), 500

    # Train model
    model = train_model(data)

    # Predict next month's spending
    current_month = datetime.now().month
    next_month = pd.DataFrame({"month": [current_month + 1]})
    next_month["total_spent"] = model.predict(next_month[["month"]])

    prediction = next_month.to_dict(orient="records")[0]
    return jsonify(prediction)

# Endpoint for insights
@app.route('/insights', methods=['GET'])
def insights():
    # Fetch goals and transactions data
    goals_query = "SELECT * FROM goals"
    transactions_query = """
        SELECT 
            user_id, category, SUM(amount) AS total_spent
        FROM transactions
        GROUP BY user_id, category
    """
    goals = fetch_data(goals_query)
    transactions = fetch_data(transactions_query)

    if "error" in goals or "error" in transactions:
        return jsonify({"error": goals.get("error", transactions.get("error"))}), 500

    # Generate savings insights
    insights = []
    for _, goal in goals.iterrows():
        user_transactions = transactions[transactions["user_id"] == goal["user_id"]]
        total_spent = user_transactions["total_spent"].sum()

        # Calculate required savings rate
        days_to_deadline = (goal["deadline"] - datetime.now().date()).days
        required_savings_rate = (goal["target_amount"] - goal["current_savings"]) / days_to_deadline

        insights.append({
            "user_id": goal["user_id"],
            "goal_name": goal["goal_name"],
            "target_amount": goal["target_amount"],
            "required_savings_rate": round(required_savings_rate, 2),
            "avg_monthly_spent": round(total_spent / len(user_transactions), 2)
        })

    return jsonify(insights)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5001)
