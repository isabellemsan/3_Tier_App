import boto3

dynamodb = boto3.resource('dynamodb', region_name='eu-central-1')

table_name='CakeInventory'

def create_table():
    try:
        table = dynamodb.create_table(
                TableName=table_name,
                KeySchema=[
            {
                'AttributeName': 'cake_id',
                'KeyType': 'HASH'
            }
        ],
                AttributeDefinitions=[
            {
                'AttributeName': 'cake_id',
                'AttributeType': 'S'
            }
        ],
            ProvisionedThroughput={
            'ReadCapacityUnits': 5,
            'WriteCapacityUnits': 5
            }
        )
            
        table.wait_until_exists()
        print(f"Table {table_name} created successfully.")
    except dynamodb.meta.client.exceptions.ResourceInUseException:
        print(f"Table {table_name} already exists.")

def insert_sample_items():
    table = dynamodb.Table(table_name)
    items = [
        {'cake_id': 1, 'name': 'Vanilla cake', 'description': 'Delicious vanilla cake'},
        {'cake_id': 2, 'name': 'Red Velvet cake', 'description': 'Rich red velvet cake'},
        {'cake_id': 3, 'name': 'Chocolate Cake', 'description': 'Tasty vanilla cake'}
    ]

if __name__ == "__main__":
    create_table()
    insert_sample_items()