from flask import Flask, request, Response

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, This is Main Page!"

@app.route('/about')
def about():
    return "This is the about page"

@app.route('/company')
def company():
    return "This is the company page"

#동적으로 url 파라미터 값을 받아서 처리해준다.
@app.route('/user/<username>')
def user_profile(username):
    return f'UserName : {username}'

@app.route('/number/<int:number>')
def number(number):
    return f'Number : {number}'

#post 요청 날리는 법
# (1) postman - 프로그램 이름
# (2) requests
import requests #pip install requests
@app.route('/test')
def test():
    url = 'http://127.0.0.1:5000'
    data = 'test data'
    response = requests.post(url=url, data=data)

    return Response("success", status=200)

@app.route('/submit', methods=['GET', 'POST', 'PUT', 'DELETE'])
def submit():
    print(request.method)

    if request.method == 'GET':
        print("GET method")

    if request.method == 'POST':
        print("***POST method***", request.data)

if __name__ == "__main__":
    app.run()