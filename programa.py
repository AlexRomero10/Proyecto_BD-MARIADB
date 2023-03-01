from funciones import *

db=Conectar_BD("localhost","usuario","contraseña","trajes")

opcion= MostrarMenu()

while opcion!=7:

    #Ejercicio1
    if opcion == 1:
        print("")
        mostrar_tabla(db)
    
    #Ejercicio2
    if opcion == 2:
        print("")
        mostrar_tabla_sueldo(db)
    
    #Ejercicio3
    if opcion == 3:
        correo_electronico = input("Ingresa el correo electrónico del cliente: ")
        mostrar_trajes_cliente(db, correo_electronico)
    
    #Ejercicio4
    if opcion == 4:
        material = input("Introduce el material del traje: ")
        talla = input("Introduce la talla del traje: ")
        color = input("Introduce el color del traje: ")
        disenador = input("Introduce el nombre del diseñador del traje: ")
        agregar_traje(db,material,talla,color,disenador)
        actualizar_tabla_trajes(db)

    #Ejercicio5
    if opcion == 5:
        print("")
        eliminar_clientes(db)
    
    #Ejercicio6
    if opcion == 6:
        codigo_cliente = input("Ingrese el codigo del cliente que desea actualizar: ")
        campo = input("Ingrese el campo que desea actualizar (direccion, correo_electronico, telefono): ")
        nuevo_valor = input("Ingrese el nuevo valor para el campo seleccionado: ")
        actualizar_cliente(db, codigo_cliente, campo, nuevo_valor)
