import socket
import psycopg2


def get_info_person(phone):
    try: 
        connection = psycopg2.connect(
            user = "postgres",
            password = "admin",
            host = "127.0.0.1",
            dbname = "project"
        )

        cursor = connection.cursor()

        cursor.execute("SELECT P.dir_nombre AS NOMBRE, P.dir_direccion AS DIRECCION, C.ciud_nombre AS CIUDAD FROM PERSONAS P INNER JOIN CIUDADES C ON P.dir_ciud_id = C.ciud_id WHERE P.dir_tel = %s",(phone,))

        row = cursor.fetchone()

        cursor.close()
        connection.close()

        return row
    
    except psycopg2.Error as e:
        print("Error intentando conectar", e)
        return None
    
# Configurar Socket TCP/IP
server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server_address = ('192.168.10.2',9999)
server_socket.bind(server_address)

# Escuchar conexiones

server_socket.listen(1)

while True:

    connection, client_address = server_socket.accept()

    try:
        print(f"Conexion establecida desde {client_address}")

        data = connection.recv(1024)
        if data:
           telefono = data.decode('utf-8')

           resultado = get_info_person(telefono)

           if resultado:
               nombre, direccion, ciudad = resultado
               mensaje = f"Nombre: {nombre}, Direccion: {direccion}, Ciudad: {ciudad}"
           else: 
               mensaje = "No se encontro usuario"
           
           connection.sendall(mensaje.encode('utf-8'))
        

    finally: 
    
        connection.close()


