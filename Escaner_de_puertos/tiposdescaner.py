import socket
import os 
import platform
import subprocess
#jesus eduardo garcia campos
#2000965
def UDP():
  target_ip = ''
  target_ports = [21, 22, 23, 25, 53, 80, 443]


  udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


  udp_socket.settimeout(1)


  for port in target_ports:
      try:

          udp_socket.sendto(b'', (target_ip, port))
        

          data = udp_socket.recvfrom(1024)
        

          print(f"puerto {port} abierrto: {data}")
        
      except socket.timeout:

          print(f"puerto {port} cerrado")


def completo():
  ip = ''
  start_port = 1
  end_port = 1000


  for port in range(start_port, end_port+1):

      s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
      s.settimeout(0.1) 

      result = s.connect_ex((ip, port))
    

      if result == 0:
          print(f"Port {port} open")
      else:
          print(f"Port {port} closed")
    

      s.close()
          




  
  
def SOdetect():
  username = os.getlogin()
  current_os = platform.system()

  print(f"Hola, {username}! corriendo {current_os}.")


  tools = {
      'Linux': 'cat /etc/*-release | grep -i pretty_name',
      'Windows': 'wmic os get Caption',
      'MacOS': 'sw_vers -productName'
  }


  tool = tools.get(current_os)

  if tool is None:
      print("No encontrado")
      exit()


  result = subprocess.check_output(tool, shell=True)


  output = result.decode('utf-8').strip()
  print(f"Tu sistema operativo es: {output}")
  
  
  

def ping():
  base_ip = '192.168.1.'
  start_range = 1
  end_range = 255

  for i in range(start_range, end_range+1):
      ip = base_ip + str(i)
      response = os.system(f"ping {ip} -n 1 -w 1000 > nul")
    

      if response == 0:
          print(f"IP address {ip} disponible")
      else:
          print(f"IP address {ip} no disponible")



 
print("1-escaneo UDP\n2-escaneo completo\n3-SO\n4-ping\n5-Salir")
c = int(input(""))
while c != 5:
  if c == 1:
    UDP()
  elif c == 2:
    completo()
  elif c == 3:
    SOdetect()
  elif c ==4:
    ping()
  print("1-escaneo UDP\n2-escaneo completo\n3-SO\n4-ping\n5-Salir")
  c = int(input(""))