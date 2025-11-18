from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def root():
    return {"message": "FastAPI Docker build test success!"}