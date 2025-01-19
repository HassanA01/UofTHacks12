import random
import datetime

# --------------------------
# 1. Basic Config
# --------------------------
USER_ID = 1  # Replace this with the actual user ID if available
START_DATE = datetime.date(2024, 1, 1)
END_DATE = datetime.date(2025, 1, 18)
# Probability distribution for categories (excluding income, which is scheduled separately)
categories = [
    ('food', 0.40),          # 40% chance
    ('transport', 0.15),     # 15% chance
    ('rent', 0.10),          # 10% chance
    ('entertainment', 0.15), # 15% chance
    ('clothes', 0.05),       # 5% chance
    ('misc', 0.15)           # 15% chance
]
# Spending ranges for each category (in dollars). Adjust as needed.
spending_ranges = {
    'food': (5, 30),         # Min/Max per transaction
    'transport': (2, 25),
    'rent': (700, 1200),
    'entertainment': (10, 100),
    'clothes': (20, 150),
    'misc': (5, 75)
}

# --------------------------
# 2. Helper Functions
# --------------------------
def random_category():
    """Return a category name based on the defined probabilities."""
    r = random.random()
    cumulative = 0
    for cat, prob in categories:
        cumulative += prob
        if r < cumulative:
            return cat
    return categories[-1][0]  # Fallback

def random_amount_for_category(cat):
    """Return a random amount within the category's typical range."""
    low, high = spending_ranges[cat]
    return round(random.uniform(low, high), 2)

def daterange(start_date, end_date):
    """Generator to iterate from start_date to end_date (inclusive)."""
    for n in range(int((end_date - start_date).days) + 1):
        yield start_date + datetime.timedelta(n)

# Bi-weekly paycheque planning
def biweekly_paydates(start_date, end_date, pay_amount=5000.00):
    """Generate paydates (every 14 days) for the user, starting from the start_date."""
    current = start_date
    while current <= end_date:
        yield current
        current += datetime.timedelta(days=14)

# --------------------------
# 3. Generate SQL Inserts
# --------------------------
def generate_mock_data():
    insert_statements = []

    # insert transactions
    txn_id = 1
    # 1. Create scheduled paycheques
    paydays = list(biweekly_paydates(START_DATE, END_DATE))
    pay_set = set(paydays)  # to quickly check if a given date is pay day

    for single_date in daterange(START_DATE, END_DATE):
        # Check if it's a paycheque day
        if single_date in pay_set:
            # Insert paycheque
            insert_statements.append(
                f"INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)\n"
                f"VALUES ({txn_id}, {USER_ID}, '{single_date}', 5000.00, 'income', NOW());"
            )
            txn_id += 1

        # Insert one random expense per day
        cat = random_category()
        amt = random_amount_for_category(cat)
        insert_statements.append(
            f"INSERT INTO transactions (transaction_id, user_id, transaction_date, amount, category, created_at)\n"
            f"VALUES ({txn_id}, {USER_ID}, '{single_date}', {amt}, '{cat}', NOW());"
        )
        txn_id += 1

    return insert_statements


if __name__ == "__main__":
    statements = generate_mock_data()
    # Print or write to a file
    print("-- BEGIN TRANSACTION;")
    for s in statements:
        print(s)
    print("-- COMMIT;")
