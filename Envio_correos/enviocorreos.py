import smtplib
import email.mime.multipart
import email.mime.base
import os
from email.mime.text import MIMEText
#!pip install smtplib
#jesus eduardo garcia campos
#2000965
# Crea la conexión SMTP

  
server = smtplib.SMTP('smtp.gmail.com', 587)

correo = ''
pas =''
  #  Inicia sesión en tu cuenta de Gmail
server.starttls()

server.login(correo, pas)

# Definir el remitente y destinatario del correo electrónico
remitente = ""
destinatario = ""

# Crear el mensaje del correo electrónico
mensaje = email.mime.multipart.MIMEMultipart()
mensaje['From'] = remitente
mensaje['To'] = destinatario
mensaje['Subject'] = "Correo electrónico con archivo adjunto"

# Añadir el cuerpo del mensaje
cuerpo = "Practica 12\n\nEjercicio de practica 12 envio de correos,\n\nAlumno: jesus eduardo garcia campos\n\nMatricula: 2000965"
mensaje.attach(email.mime.text.MIMEText(cuerpo, 'plain'))

# Añadir el archivo 
ruta_archivo = ""
archivo = open(ruta_archivo, 'rb')
adjunto = email.mime.base.MIMEBase('application', 'octet-stream')
adjunto.set_payload((archivo).read())
email.encoders.encode_base64(adjunto)
adjunto.add_header('Content-Disposition', "attachment; filename= %s" % ruta_archivo)
mensaje.attach(adjunto)

# Convertir el mensaje a texto plano
texto = mensaje.as_string()

# Enviar el correo electrónico
server.sendmail(remitente, destinatario, texto)

# Cerrar la conexión SMTP
server.quit()