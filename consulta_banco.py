import pymysql

db = pymysql.connect("localhost","root","","banco" )
cur = db.cursor()

def consulta_banco(telefone):
    cur.execute("select nome,idade,turista,pref_cultura,pref_turismo,pref_historia,pref_esporte,pref_noticias,c_whatsapp,c_messenger,c_sms,c_email,c_direct from usuarios where telefone = '%s'" % (telefone))
    lista = cur.fetchall()
    return lista[0]
info = consulta_banco('12345')

nome = info[0]
idade = info[1]
turista = info[2]
pref_cultura = info[3]
pref_turismo = info[4]
pref_historia = info[5]
pref_esporte = info[6]
pref_noticias = info[7]
c_whatsapp = info[8]
c_messenger = info[9]
c_sms = info[10]
c_email = info[11]
c_direct = info[12]
