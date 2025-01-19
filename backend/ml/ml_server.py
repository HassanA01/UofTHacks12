from flask import Flask, request, jsonify
from flask_cors import CORS  # Import CORS
import pandas as pd
from sklearn.linear_model import LinearRegression
from datetime import datetime, timedelta
from sqlalchemy import create_engine

app = Flask(__name__)
CORS(app)

# Database connection settings (this part is still needed even if we're mocking data)
DB_CONFIG = {
    "dbname": "postgres",
    "user": "postgres",
    "password": "ahmedthe23",
    "host": "localhost", 
    "port": 5432
}

# Mocked data for goals
mock_goals = pd.DataFrame({
    "user_id": [1, 2],
    "goal_name": ["Goal 1", "Goal 2"],
    "target_amount": [1000, 1500],
    "current_savings": [200, 500],
    "deadline": [datetime.now() + timedelta(days=30), datetime.now() + timedelta(days=60)]
})

# Mocked data for transactions
mock_transactions = pd.DataFrame({
    "user_id": [1, 1, 2],
    "category": ["Food", "Transport", "Food"],
    "total_spent": [300, 150, 400]
})

# Train the regression model (no change here, just uses mock data)
def train_model(data):
    X = data[["month"]]
    y = data["total_spent"]
    model = LinearRegression()
    model.fit(X, y)
    return model

# Endpoint for future predictions
@app.route('/predict', methods=['POST'])  # Changed to GET
def predict():
    # Mocked historical data for predictions
    mock_data = pd.DataFrame({
        "month": [1, 2, 3, 4, 5],
        "total_spent": [200, 300, 250, 400, 350]
    })

    # Train model
    model = train_model(mock_data)

    # Predict next month's spending
    current_month = datetime.now().month
    next_month = pd.DataFrame({"month": [current_month + 1]})
    next_month["total_spent"] = model.predict(next_month[["month"]])

    prediction = next_month.to_dict(orient="records")[0]
    return jsonify(prediction)

# Endpoint for insights using mocked data
@app.route('/insights', methods=['GET'])
def insights():
    # Use mocked goals and transactions data
    insights = []
    for _, goal in mock_goals.iterrows():
        user_transactions = mock_transactions[mock_transactions["user_id"] == goal["user_id"]]
        total_spent = user_transactions["total_spent"].sum()

        # Calculate required savings rate
        days_to_deadline = (goal["deadline"] - datetime.now()).days
        required_savings_rate = (goal["target_amount"] - goal["current_savings"]) / days_to_deadline

        # Include user name and better format the data
        user_name = f"User {goal['user_id']}"

        insights.append({
            "user_name": user_name,
            "goal_name": goal["goal_name"],
            "target_amount": goal["target_amount"],
            "current_savings": goal["current_savings"],
            "required_savings_rate": round(required_savings_rate, 2),
            "avg_monthly_spent": round(total_spent / len(user_transactions), 2) if len(user_transactions) > 0 else 0
        })

    return jsonify(insights)


# New endpoint for goals using mocked data
@app.route('/goals', methods=['GET'])
def get_goals():
    # Use mocked goals data
    goals_data_list = mock_goals.to_dict(orient='records')
    # Formatting to make sure the data is easy to present
    for goal in goals_data_list:
        goal['days_left'] = (goal['deadline'] - datetime.now()).days
    return jsonify(goals_data_list)



if __name__ == '__main__':
    app.run(host="127.0.0.1", port=5001)