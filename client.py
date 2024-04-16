import socket

client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server_address = ('192.168.10.2',9999)
client_socket.connect(server_address)


try:
    for _ in range(2):

        telefono = input("Ingrese numero de telefono: ")

        client_socket.sendall(telefono.encode('utf-8'))

        data = client_socket.recv(1024)

        if data:
            respuesta = data.decode('utf-8')
            print(respuesta)

finally:
    client_socket.close()