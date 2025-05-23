from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware


origins = [
    "*",
]


app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/root")
def config():
    return {"message": "Hello World"}
