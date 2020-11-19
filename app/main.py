
import sys

from fastapi import FastAPI

version = f"{sys.version_info.major}.{sys.version_info.minor}"

app = FastAPI()


@app.get("/")
async def read_root():
    message = f"Using Python {version}."
    return {"message": message}


@app.post("/healthcheck", status_code=200)
async def health_check():
    return
