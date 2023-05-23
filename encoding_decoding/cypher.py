from cryptography.fernet import Fernet
#jesus edaurdo garcia campos 
#2000965
def genwrite():
  key = Fernet.generate_key()
  with open("pass.key","wb") as key_file: 
    key_file.write(key)

genwrite()
def call_key():
  return open("pass.key","rb").read()
key =  call_key()
banner = "La vida es buena".encode()
a= Fernet(key)
coded_banner = a.encrypt(banner)
print(coded_banner)

key = call_key()
b = Fernet(key)
decoded_banner = b.decrypt(coded_banner)
print(decoded_banner)

