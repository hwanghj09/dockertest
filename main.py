from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def root():
    return {"message": "태윤이 바보 멍청이 똥개"}