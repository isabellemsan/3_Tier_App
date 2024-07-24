from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/cakes")
def get_cakes():
try: 
    response = 


@app.get("/cake-descirption/{cake_id}")
def get_cakes_description():
    try: 
        response =