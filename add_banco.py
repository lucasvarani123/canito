import pymysql

nome = 'Lucas Varani'
email = 'lucas.varani123@gmail.com'
telefone = '12345'
idade = '3'
turista = '1'
pref_cultura = '1'
pref_turismo = '1'
pref_historia = '1'
pref_esporte = '1'
pref_noticias = '0'
c_whatsapp = '1'
c_messenger = '1'
c_sms = '1'
c_email = '1'
c_direct = '1'
import requests

db = pymysql.connect("localhost","root","","banco" )
cur = db.cursor()

def add_banco(nome,email,telefone,idade,turista,pref_cultura,pref_turismo,pref_historia,pref_esporte,pref_noticias,c_whatsapp,c_messenger,c_sms,c_email,c_direct):
    cur.execute("insert into usuarios (nome,email,telefone,idade,turista,pref_cultura,pref_turismo,pref_historia,pref_esporte,pref_noticias,c_whatsapp,c_messenger,c_sms,c_email,c_direct) values ('%s','%s','%s',%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);" % (nome,email,telefone,idade,turista,pref_cultura,pref_turismo,pref_historia,pref_esporte,pref_noticias,c_whatsapp,c_messenger,c_sms,c_email,c_direct))

add_banco(nome,email,telefone,idade,turista,pref_cultura,pref_turismo,pref_historia,pref_esporte,pref_noticias,c_whatsapp,c_messenger,c_sms,c_email,c_direct)
db.commit()
