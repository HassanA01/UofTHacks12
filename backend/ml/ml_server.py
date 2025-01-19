from flask import Flask, request, jsonify
from flask_cors import CORS  # Import CORS
import pandas as pd
from sklearn.linear_model import LinearRegression
from datetime import datetime, timedelta
from sqlalchemy import create_engine

app = Flask(__name__)
CORS(app)

# Database connection settings
DB_CONFIG = {
    "dbname": "postgres",
    "user": "postgres",
    "password": "ahmedthe23",
    "host": "localhost", 
    "port": 5432
}

# Create SQLAlchemy engine
def get_engine():
    connection_string = f"postgresql+psycopg2://{DB_CONFIG['user']}:{DB_CONFIG['password']}@{DB_CONFIG['host']}:{DB_CONFIG['port']}/{DB_CONFIG['dbname']}"
    return create_engine(connection_string)

# Fetch data using SQLAlchemy engine
def fetch_data(query):
    try:
        engine = get_engine()
        df = pd.read_sql(query, engine)
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

# New endpoint for goals
@app.route('/goals', methods=['GET'])
def get_goals():
    # Fetch goals data
    query = "SELECT * FROM goals"
    goals_data = fetch_data(query)

    if "error" in goals_data:
        return jsonify({"error": goals_data["error"]}), 500
    
    # Convert DataFrame to a list of dictionaries
    goals_data_list = goals_data.to_dict(orient='records')
    
    return jsonify(goals_data_list)


if __name__ == '__main__':
    app.run(host="127.0.0.1", port=5001)
