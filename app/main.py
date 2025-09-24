from fastapi import FastAPI

from .api.v1 import router as v1_router
app = FastAPI(title="My FastAPI App")
app.include_router(v1_router, prefix="/api/v1")

@app.get("/")
async def root():
    return {"message": "Hello from FastAPI!"}


