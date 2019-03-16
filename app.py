from flask import Flask, jsonify, request
from twilio.rest import Client
import df_response_lib

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'


# function for responses
def results():
    # build a request object
    req = request.get_json(force=True)

    # fetch action from json
    action = req.get('queryResult').get('action')

    df_response_lib.fulfillment_text("Olá seja bem vindo ao Canito Bot webhook")


# create a route for webhook
@app.route('/webhook', methods=['GET', 'POST'])
def webhook():
    # return response
    return jsonify(results())


# create a route for webhook new facebook post
@app.route('/facebook', methods=['POST'])
def facebook():
    # Your Account SID from twilio.com/console
    account_sid = "ACd5557d737f48c4c546ee7a0eb19bdebd"
    # Your Auth Token from twilio.com/console
    auth_token = "3512d102b87e15bebb963518ce52bf4f"

    client = Client(account_sid, auth_token)

    mensagem = request.data

    client.messages.create(
        from_='whatsapp:+14155238886',
        body=mensagem,
        to='whatsapp:+5519993828181'
    )

    client.messages.create(
        from_='whatsapp:+14155238886',
        body=mensagem,
        to='whatsapp:+5519995024462'
    )

    client.messages.create(
        from_='whatsapp:+14155238886',
        body=mensagem,
        to='whatsapp:+5511958382498'
    )

    client.messages.create(
        from_='whatsapp:+14155238886',
        body=mensagem,
        to='whatsapp:+5519991696333'
    )

    client.messages.create(
        from_='whatsapp:+14155238886',
        body=mensagem,
        to='whatsapp:+5511933058026'
    )

    client.messages.create(
        to="+5519993828181",
        from_="+5511933058026",
        body=mensagem)

    client.messages.create(
        to="+5511933058026",
        from_="+5511933058026",
        body=mensagem)

    client.messages.create(
        to="+55199950224462",
        from_="+5511933058026",
        body=mensagem)

    client.messages.create(
        to="+5511958382498",
        from_="+5511933058026",
        body=mensagem)

    return "Mensagens enviadas com sucesso!"


if __name__ == '__main__':
    app.run()
