--Primero accedemos con -> mysql -u root -p

--Creación de BD y usuario (Definiendole los privilegios)

CREATE DATABASE Trajes;
CREATE USER 'alejandro'@'%' IDENTIFIED BY 'proyectobd';
GRANT ALL PRIVILEGES ON Trajes.* TO 'alejandro'@'%';
FLUSH PRIVILEGES;
USE Trajes;


--Luego podremos acceder a la base de datos desde el programa, con las credenciales del usuario que hemos definido.

--Creación de tablas
create table trajes (
    codigo_trajes int(10) primary key,
    material varchar(30),
    talla varchar(10),
    color varchar(15),
    disenador varchar(20)
);
insert into trajes values('111','Algodon','L','Azul','Pablo');
insert into trajes values('222','Poliester','XL','Rojo','Daniel');
insert into trajes values('333','Lino','S','Negro','Hugo');
insert into trajes values('444','Lana','M','Marrón','Mario');
insert into trajes values('555','Algodon','L','Blanco','Jairo');
insert into trajes values('666','Seda','M','Azul','Andres');
insert into trajes values('777','Seda','XL','Verde','Alex');
insert into trajes values('888','Algodon','S','Marrón','Francisco');
insert into trajes values('999','Lino','XS','Negro','Jose');

create table clientes (
    codigo_cliente int(10) primary key,
    direccion varchar(30),
    correo_electronico varchar(30),
    telefono varchar(9)
);
insert into clientes values('111','Calle Peru','juan13@gmail.com','955862023');
insert into clientes values('222','Calle Tona','alex18@gmail.com','955863024');
insert into clientes values('333','Calle Goya','dani20@gmail.com','955864025');
insert into clientes values('444','Calle Jaen','manu30@gmail.com','955865026');
insert into clientes values('555','Calle Luna','hugo70@gmail.com','955866027');
insert into clientes values('666','Calle Peru','leo13@gmail.com', '955861078');
insert into clientes values('777','Calle Luna','perez4@gmail.com','955123456');
insert into clientes values('888','Calle Sol','maria0@gmail.com',' 955789012');
insert into clientes values('999','Calle Cadiz','luis9@gmail.com','955654321');


create table personal_de_atencion (
    DNI_Personal_de_Atencion varchar(9) primary key,
    Nombre varchar(30),
    Fecha DATE,
    Sueldo decimal(7,2),
    Anosdeexperiencia date
);

insert into personal_de_atencion values ('49167338P','Juan','1999-01-12',20.5,'2013-01-13');
insert into personal_de_atencion values ('75894125F','Alex','1999-05-01',40.5,'2040-01-13');
insert into personal_de_atencion values ('75804020A','Dani','1990-05-01',90.5,'2010-01-13');
insert into personal_de_atencion values ('49657812G','Manu','1980-10-31',60.5,'2020-01-13');
insert into personal_de_atencion values ('49367412T','Hugo','2003-01-12',10.5,'2030-01-13');
insert into personal_de_atencion values ('49357311Z','Leo','2004-02-13',30.5,'2050-01-13');
insert into personal_de_atencion values ('49347210W','Perez','2005-03-14',50.5,'2060-01-13');
insert into personal_de_atencion values ('49337119C','Maria','2006-04-15',70.5,'2070-01-13');
insert into personal_de_atencion values ('49327018M','Luis','2007-05-16',80.5,'2080-01-13');
