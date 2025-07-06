#  _________________
#  Import LIBRARIES
from fastapi import FastAPI

#  Import FILES
#  _________________


app: FastAPI = FastAPI(
    title="simple_fastapi_todos", description="Learning how to dockerize FastAPI"
)


@app.get("/")
async def ping() -> dict[str, str]:
    return {"msg": "Pong"}
