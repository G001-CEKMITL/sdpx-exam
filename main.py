from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

#test
@app.route('/next2/<float:num>')
#can be negative
def next2(num):
    return str(num + 2)



if __name__ == '__main__':
    app.run(debug=True , port=5050)
