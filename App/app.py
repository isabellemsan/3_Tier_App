
from fastapi import FastAPI
import boto3

app = FastAPI()
dynamodb = boto3.resource('dynamodb', region_name='eu-central-1')

def scan_dynamodb_table(table_name: str):
        table = dynamodb.Table(table_name)
        response = table.scan()
        items = response.get('Items', [])
        return items


@app.get("/cakes")
def get_cakes():
    try:
        table_name="CakeInventory"
        response = scan_dynamodb_table(table_name)
        items  = response.get('Items,[]')
        cake_list = [{"cake_id": item["cake_id"], "name": item["name"]} for item in response]
        return {"status": "success", "data": cake_list}
    except Exception as e:
            return {"status": "error", "message": str(e)}


@app.get("/cake-descirption")
def get_cakes_description():
        try: 
            table_name="CakeInventory"
            response = scan_dynamodb_table(table_name)
            item = response.get('Item')
            cake_descriptions = [{"cake_id": item["cake_id"], "name": item["name"], "description": item["description"]} for item in response]
            return {"status": "success", "data": cake_descriptions}
        except Exception as e:
            return {"status": "error", "message": str(e)}


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)