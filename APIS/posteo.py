import requests
import json
#jesus eduardo garcia campos
#2000965
if __name__ == '__main__':
  url = "http://httpbin.org/post"
  argumentos = {'nonbre':'Jesus','matricula':'2000965','curso':'programacion para ciberseguridad'}
  response = requests.post(url, params=argumentos)
  
  if response.status_code == 200:
    print(response.content)