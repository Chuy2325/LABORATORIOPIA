from ftplib import FTP 
#2000965
#jesus eduardo garcia campos
ftp = FTP("host")
ftp.login("user", "passwd")
ftp.dir()
ftp.cwd('upload')
print("carpeta actual" + ftp.pwd())
ftp.retrlines('LIST')
fich = open("ADVERTENCIA.txt", "rb")
ftp.storbinary("STOR ADVERTENCIA.txt", fich)
ftp.quit()