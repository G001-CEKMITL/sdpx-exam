from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/is_prime/<int:num>')
def is_prime(num):
    if num < 2:
        return 'False'
    for i in range(2, num):
        if num % i == 0:
            return 'False'
    return 'True'


        

if __name__ == '__main__':
    app.run(debug=True , port=5050)
