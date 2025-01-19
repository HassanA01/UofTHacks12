#!/bin/bash

PYTHON_SCRIPT="transactionGeneration.py"
OUTPUT_SQL_FILE="mock_data.sql"
DATABASE="postgres"
USER="postgres"

# generating mock data
echo "Generating mock data using $PYTHON_SCRIPT..."
python3 $PYTHON_SCRIPT > $OUTPUT_SQL_FILE

# validating sql file
if [ $? -ne 0 ]; then
    echo "Error: Failed to generate mock data."
    exit 1
fi

# inserting data into psql
echo "Importing mock data into PostgreSQL database: $DATABASE..."
psql -d $DATABASE -f $OUTPUT_SQL_FILE -U $USER

# validating data injection
if [ $? -ne 0 ]; then
    echo "Error: Failed to import mock data into PostgreSQL."
    exit 1
fi

echo "Mock data generated and imported successfully."
