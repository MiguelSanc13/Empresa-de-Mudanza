/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     06/07/2021 15:57:30                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_EMPRESA_E_EMPRESA')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_EMPRESA_E_EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANTENIMIENTO') and o.name = 'FK_MANTENIM_MANTENIMI_VEHICULO')
alter table MANTENIMIENTO
   drop constraint FK_MANTENIM_MANTENIMI_VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OBSERVACION') and o.name = 'FK_OBSERVAC_CLIENTE_O_CLIENTE')
alter table OBSERVACION
   drop constraint FK_OBSERVAC_CLIENTE_O_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERSONAL_EXTRA') and o.name = 'FK_PERSONAL_PERSONAL__SERVICIO')
alter table PERSONAL_EXTRA
   drop constraint FK_PERSONAL_PERSONAL__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO') and o.name = 'FK_SERVICIO_CLIENTE_S_CLIENTE')
alter table SERVICIO
   drop constraint FK_SERVICIO_CLIENTE_S_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO') and o.name = 'FK_SERVICIO_EMPLEADO__EMPLEADO')
alter table SERVICIO
   drop constraint FK_SERVICIO_EMPLEADO__EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO') and o.name = 'FK_SERVICIO_SERVICIO__PAGO')
alter table SERVICIO
   drop constraint FK_SERVICIO_SERVICIO__PAGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_CLIENTE_S_CLIENTE')
alter table SOLICITUD
   drop constraint FK_SOLICITU_CLIENTE_S_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_SERVICIO__SERVICIO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_SERVICIO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_SOLICITUD_SERVICIO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_SOLICITUD_SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRASLADO') and o.name = 'FK_TRASLADO_TRASLADO__SERVICIO')
alter table TRASLADO
   drop constraint FK_TRASLADO_TRASLADO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO_SERVICIO') and o.name = 'FK_VEHICULO_VEHICULO__SERVICIO')
alter table VEHICULO_SERVICIO
   drop constraint FK_VEHICULO_VEHICULO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO_SERVICIO') and o.name = 'FK_VEHICULO_VEHICULO__VEHICULO')
alter table VEHICULO_SERVICIO
   drop constraint FK_VEHICULO_VEHICULO__VEHICULO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'EMPRESA_EMPLEADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.EMPRESA_EMPLEADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPRESA')
            and   type = 'U')
   drop table EMPRESA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANTENIMIENTO')
            and   name  = 'MANTENIMIENRO_VEHICULO_FK'
            and   indid > 0
            and   indid < 255)
   drop index MANTENIMIENTO.MANTENIMIENRO_VEHICULO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MANTENIMIENTO')
            and   type = 'U')
   drop table MANTENIMIENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OBSERVACION')
            and   name  = 'CLIENTE_OBSERVACION_FK'
            and   indid > 0
            and   indid < 255)
   drop index OBSERVACION.CLIENTE_OBSERVACION_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OBSERVACION')
            and   type = 'U')
   drop table OBSERVACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAGO')
            and   type = 'U')
   drop table PAGO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERSONAL_EXTRA')
            and   name  = 'PERSONAL_EXTRA_SERVICIOADICIONAL_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERSONAL_EXTRA.PERSONAL_EXTRA_SERVICIOADICIONAL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONAL_EXTRA')
            and   type = 'U')
   drop table PERSONAL_EXTRA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO')
            and   name  = 'CLIENTE_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO.CLIENTE_SERVICIO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO')
            and   name  = 'EMPLEADO_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO.EMPLEADO_SERVICIO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO')
            and   name  = 'SERVICIO_COSTO_ESTIMADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO.SERVICIO_COSTO_ESTIMADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIO')
            and   type = 'U')
   drop table SERVICIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIO_ADICIONAL')
            and   type = 'U')
   drop table SERVICIO_ADICIONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'SERVICIO_ADISIONAL_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.SERVICIO_ADISIONAL_SOLICITUD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'SOLICITUD_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.SOLICITUD_SERVICIO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'CLIENTE_SOLICITUD_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.CLIENTE_SOLICITUD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOLICITUD')
            and   type = 'U')
   drop table SOLICITUD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRASLADO')
            and   name  = 'TRASLADO_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRASLADO.TRASLADO_SERVICIO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRASLADO')
            and   type = 'U')
   drop table TRASLADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO')
            and   type = 'U')
   drop table VEHICULO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO_SERVICIO')
            and   name  = 'VEHICULO_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO_SERVICIO.VEHICULO_SERVICIO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO_SERVICIO')
            and   name  = 'VEHICULO_SERVICIO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO_SERVICIO.VEHICULO_SERVICIO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO_SERVICIO')
            and   type = 'U')
   drop table VEHICULO_SERVICIO
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   CEDULA_INDENT_CLIENTE varchar(10)          not null,
   NOMBRE_CLIENTE       varchar(20)          not null,
   APELLIDOS_CLIENTE    varchar(20)          not null,
   CELULAR              varchar(10)          not null,
   CORREO_CLIENTE       varchar(25)          not null,
   CIUDAD               varchar(20)          not null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(1,'1316369170','Miguel Angel','Sánchez Arteaga','0993209428','Themigueldj@gmail.com','Manta');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(2,'1316369189','José Antonio','Sánchez Arteaga','0993209456','Triplej@gmail.com','Manta');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(3,'1316313588','Daniela Marianela','Sánchez Arteaga','0993205236','dani1997_sa@gmail.com','Portoviejo');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(4,'1352356870','Silvia Jenny','Arteaga Murillo','0956892345','silvia_4578@gmail.com','Portoviejo');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(5,'1316369171','Miguel Angel','Sánchez Bailón','0945697823','arquiides6910@hotmail.com','Montecristi');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(6,'1302336987','María Viviana','Preciado Delgado','0956893214','mariap@gmail.com','Daule');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(7,'1306147176','Anibal Celestino','Figueroa Ponce','0945962323','anibaltripH@gmail.com','Durán');
insert into CLIENTE(ID_CLIENTE, CEDULA_INDENT_CLIENTE, NOMBRE_CLIENTE, APELLIDOS_CLIENTE, CELULAR, CORREO_CLIENTE, CIUDAD)
values(8,'1316963124','Patricio David','Bazurto Carrazco','0993532147','patricio23@gmail.com','Quito');

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMPLEADO          int                  not null,
   ID_EMPRESA           int                  null,
   CEDULA_IDENTIDAD_EMPLEADO varchar(10)          not null,
   NOMBRES_EMPLEADO     varchar(30)          not null,
   APELLIDOS_EMPLEADO   varchar(30)          not null,
   CELULAR_EMPLEADO     varchar(10)          not null,
   CORREO_EMPLEADO      varchar(30)          not null,
   CUIDAD_EMPLEADO      varchar(30)          not null,
   DIRECCION_EMPLEADO   varchar(40)          not null,
   TIPO_EMPLEADO        varchar(20)          not null,
   constraint PK_EMPLEADO primary key nonclustered (ID_EMPLEADO)
)
go

insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(1,1,'1326369170','Angel José','Moreno Ganchoso','0956231478','ganchoso@gmail.com','Manta','Barrio Cuba','Chofer');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(2,1,'1312365986','Bryan David','Ganzabay Estrada','0940569740','gonzabay@gmail.com','Manta','Las Cumbres','Secretaria');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(3,1,'1356321456','Frank Andres','Rosales Hurtado','0913469755','lacosita@gmail.com','Manta','15 de Abril','Chofer');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(4,1,'1311236548','Jonath Maximiliano','Molona Zamora','0956200478','Maximiliano4k@hotmail.com','Manta','15 de Sept','Chofer');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(5,1,'1334032145','Adan Roberto','LLerena Chuquimarca','0989745632','chuquimarca@gmail.com','Manta','Barrio Jipijapa','Mulero');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(6,1,'1326369450','Nelson Andres','Lopez Soledispa','0900236592','nacho80@gmail.com','Manta','Barrio 6 de Marzo','Mulero');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(7,1,'1323045698','Juan Andres','Zamora Ponce','0989893265','juandesarma@gmail.com','Manta','Barrio 20 de Mayo','Mecánico');
insert into EMPLEADO(ID_EMPLEADO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values(8,1,'1356398741','Gilki Michelle','Delgado Valdiviezo','0914151617','gilki.m@gmail.com','Manta','Bario Urbirios','Copiloto');


/*==============================================================*/
/* Index: EMPRESA_EMPLEADO_FK                                   */
/*==============================================================*/
create index EMPRESA_EMPLEADO_FK on EMPLEADO (
ID_EMPRESA ASC
)
go

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   ID_EMPRESA           int                  not null,
   NOMBRE_EMPRESA       varchar(20)          not null,
   DIRECION_EMPRESA     varchar(20)          not null,
   TELEFONO_EMPRESA     varchar(10)          not null,
   CORREO_EMPRESA       varchar(20)          not null,
   CIUDAD_EMPRESA       varchar(20)          not null,
   constraint PK_EMPRESA primary key nonclustered (ID_EMPRESA)
)
go

insert into EMPRESA(ID_EMPRESA, NOMBRE_EMPRESA, DIRECION_EMPRESA, TELEFONO_EMPRESA, CORREO_EMPRESA, CIUDAD_EMPRESA)
values(1,'Los Santos','Barrio Cuba','0992003212','thesantos@live.ec','Manta');


/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   ID_MANTENIMIENTO     int                  not null,
   ID_VEHICULO          int                  null,
   TIPO_MANT            varchar(30)          null,
   FECHA_INICIO_MANT    date             not null,
   FECHA_FIN_MANT       date             not null,
   NUMERO_MANT          varchar(10)          not null,
   constraint PK_MANTENIMIENTO primary key nonclustered (ID_MANTENIMIENTO)
)
go

insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (1, 1, 'Abc del Motor','16/11/2017','10/01/2018','5');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (2, 2, 'Cambio de aceite','20/12/2017','20/12/2017','2');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (3, 3, 'Cambio de llantas','25/07/2017','25/07/2017','8');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (4, 4, 'Cambio de Bujias','1/07/2017','1/07/2017','1');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (5, 5, 'Arreglo de Guias','15/05/2017','15/05/2017','5');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, ID_VEHICULO, TIPO_MANT, FECHA_INICIO_MANT, FECHA_FIN_MANT, NUMERO_MANT)
values (6, 5, 'Cambio de llantas','04/10/20','10/04/2019','20');

/*==============================================================*/
/* Index: MANTENIMIENRO_VEHICULO_FK                             */
/*==============================================================*/
create index MANTENIMIENRO_VEHICULO_FK on MANTENIMIENTO (
ID_VEHICULO ASC
)
go

/*==============================================================*/
/* Table: OBSERVACION                                           */
/*==============================================================*/
create table OBSERVACION (
   ID_OBSERVACION       int                  not null,
   ID_CLIENTE           int                  null,
   CALIFICACION			varchar(10)          not null,
   OPINION			    varchar(20)          not null,
   FECHA_OB             date             not null,
   constraint PK_OBSERVACION primary key nonclustered (ID_OBSERVACION)
)
go

insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(1, 1, '8','BUENO','15/08/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(2, 2, '8','BUENO','25/05/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(3, 3, '10','EXCELENTE','12/01/2019');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(4, 4, '7','BUENO','10/07/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(5, 5, '10','EXCELENTE','13/07/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(5, 5, '10','EXCELENTE','13/07/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(6, 6, '9','MUY BUENO','18/09/2017');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(7, 7, '8','BUENO','10/12/2019');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE, CALIFICACION, OPINION, FECHA_OB)
values(8, 8, '5','REGULAR','25/12/2017');


/*==============================================================*/
/* Index: CLIENTE_OBSERVACION_FK                                */
/*==============================================================*/
create index CLIENTE_OBSERVACION_FK on OBSERVACION (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   ID_PAGO              int                  not null,
   KILOMETRO            varchar(20)          not null,
   HORA                 time             not null,
   COSTO_KILOMETRO_H    numeric(6,2)         not null,
   FECHA                date             not null,
   constraint PK_PAGO primary key nonclustered (ID_PAGO)
)
go

insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (1,'50.00 km','9:00',5,'25/12/2017');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (2,'10.00 km','15:00',5,'15/11/2017');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (3,'70.00 km','8:00',5,'05/11/2019');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (5,'80.00 km','11:00',5,'10/05/2018');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (6,'15.00 km','14:00',5,'01/02/2017');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (7,'80.00 km','15:00',5,'13/07/2017');
insert into PAGO(ID_PAGO, KILOMETRO, HORA, COSTO_KILOMETRO_H, FECHA)
values (8,'40.00 km','12:00',5,'25/12/2018');



/*==============================================================*/
/* Table: PERSONAL_EXTRA                                        */
/*==============================================================*/
create table PERSONAL_EXTRA (
   ID_PERSONAL          int                  not null,
   ID_SERVICIO_ADD      int                  null,
   CEDULA_PERSONAL      varchar(10)          not null,
   NOMBRE_PERSONAL      varchar(30)          not null,
   APELLIDO_PERSONAL    varchar(30)          not null,
   CELULAR_PERSONAL     varchar(10)          not null,
   CORREO_PERSONAL      varchar(30)          not null,
   constraint PK_PERSONAL_EXTRA primary key nonclustered (ID_PERSONAL)
)
go

insert into PERSONAL_EXTRA(ID_PERSONAL, ID_SERVICIO_ADD, CEDULA_PERSONAL, NOMBRE_PERSONAL, APELLIDO_PERSONAL,CELULAR_PERSONAL, CORREO_PERSONAL)
values(1,1,'1357896541','Alex Patricio','Pin Parrales','0925632563','pinpatricio@gmail.com');
insert into PERSONAL_EXTRA(ID_PERSONAL, ID_SERVICIO_ADD, CEDULA_PERSONAL, NOMBRE_PERSONAL, APELLIDO_PERSONAL,CELULAR_PERSONAL, CORREO_PERSONAL)
values(2,2,'1338731975','Carlos Andres','Tubay Zamora','0925635050','manene@gmail.com');
insert into PERSONAL_EXTRA(ID_PERSONAL, ID_SERVICIO_ADD, CEDULA_PERSONAL, NOMBRE_PERSONAL, APELLIDO_PERSONAL,CELULAR_PERSONAL, CORREO_PERSONAL)
values(3,3,'1308232345','Melanie Nicole','Morejon Valdiezo','0978782563','pulmondearaña23@gmail.com');
insert into PERSONAL_EXTRA(ID_PERSONAL, ID_SERVICIO_ADD, CEDULA_PERSONAL, NOMBRE_PERSONAL, APELLIDO_PERSONAL,CELULAR_PERSONAL, CORREO_PERSONAL)
values(4,4,'1353698728','Gilki Michelle','Delgado Valdiviezo','0912356465','pollocrudo@gmail.com');
insert into PERSONAL_EXTRA(ID_PERSONAL, ID_SERVICIO_ADD, CEDULA_PERSONAL, NOMBRE_PERSONAL, APELLIDO_PERSONAL,CELULAR_PERSONAL, CORREO_PERSONAL)
values(5,5,'1303145324','Anibal Celestino','Figueroa Sánchez','0925632563','celestino13@gmail.com');

/*==============================================================*/
/* Index: PERSONAL_EXTRA_SERVICIOADICIONAL_FK                   */
/*==============================================================*/
create index PERSONAL_EXTRA_SERVICIOADICIONAL_FK on PERSONAL_EXTRA (
ID_SERVICIO_ADD ASC
)
go

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_SERVICIO          int                  not null,
   ID_PAGO              int                  null,
   ID_EMPLEADO          int                  null,
   ID_CLIENTE           int                  null,
   TIPO_SERVICIO        varchar(45)          not null,
   PRECIO_SERVICIO      numeric(6,2)         not null,
   FECHA_SERVICIO       date                 not null,
   PESO__SERVICIO_KL    varchar(30)          not null,
   VALOR_PESO           numeric(6,2)         not null,
   TOTAL_SERVICIO       numeric(6,2)         not null,
   constraint PK_SERVICIO primary key nonclustered (ID_SERVICIO)
)
go

insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (1, 1, 1, 1,'Traslado de Electrodomestico',200,'23/05/2017','500 kl',50, 445);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (2, 2, 2, 2,'Traslado de cuadros', 175,'10/11/2017','400 kl',50, 288);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (3, 3, 3, 3,'Traslado de cuadros', 300,'01/02/2018','600 kl', 50, 550);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (4, 4, 4, 4,'Traslados de Reliquias', 350,'12/12/2017','650 kl', 50, 575);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (5, 5, 5, 5,'Traslados de llantas', 400,'12/12/2019','700 kl', 50, 700);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (6, 6, 6, 6,'Traslados de Articulo de Oficina', 100, '06/07/2017','200 kl', 50, 150);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (7, 7, 7, 7,'Traslados Comedores de sala', 50,'01/08/2017','100 kl', 50, 50);
insert into SERVICIO(ID_SERVICIO, ID_PAGO, ID_EMPLEADO, ID_CLIENTE, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, PESO__SERVICIO_KL, VALOR_PESO, TOTAL_SERVICIO)
values (8, 8, 8, 8,'Traslados de sillas', 75,'26/05/2018','150 kl',50, 100);




/*==============================================================*/
/* Index: SERVICIO_COSTO_ESTIMADO_FK                            */
/*==============================================================*/
create index SERVICIO_COSTO_ESTIMADO_FK on SERVICIO (
ID_PAGO ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_SERVICIO_FK                                  */
/*==============================================================*/
create index EMPLEADO_SERVICIO_FK on SERVICIO (
ID_EMPLEADO ASC
)
go

/*==============================================================*/
/* Index: CLIENTE_SERVICIO_FK                                   */
/*==============================================================*/
create index CLIENTE_SERVICIO_FK on SERVICIO (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Table: SERVICIO_ADICIONAL                                    */
/*==============================================================*/
create table SERVICIO_ADICIONAL (
   ID_SERVICIO_ADD      int                  not null,
   DIRECCION_SERVICIO_ADD varchar(40)          not null,
   TIPO_SEVICIO_ADD     varchar(30)          not null,
   VALOR_SERVICIO_ADD   varchar(40)          not null,
   constraint PK_SERVICIO_ADICIONAL primary key nonclustered (ID_SERVICIO_ADD)
)
go

insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (1, 'Barrio los Chillos','Colocacion de muebles', 50);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (2, 'Urbanización Puerto Sol','Limpieza de cuadros', 100);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (3, 'Barrio 7 Puñaladas','Organizacion de Articulos', 200);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (4, 'Entrada de la 8','Ubicación de reliquias', 1000);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (5, 'Eventos Yanira','Ubicación de mesas', 150);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (6, 'Eco-Tire','Ordenar las llantas', 200);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (7, 'Fiesta Privada','Colocacion de Silas', 80);
insert into SERVICIO_ADICIONAL (ID_SERVICIO_ADD, DIRECCION_SERVICIO_ADD, TIPO_SEVICIO_ADD, VALOR_SERVICIO_ADD)
values (8, 'Barrio los Chillos','Limpieza y colocación de cuadros', 500);


/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   ID_SOLICITUD         int                  not null,
   ID_CLIENTE           int                  null,
   ID_SERVICIO          int                  null,
   ID_SERVICIO_ADD      int                  null,
   NUMERO_SOLICITUD     varchar(15)          not null,
   TIPO_SOLICITUD       varchar(20)          not null,
   FECHA_SOLICITUD      datetime             not null,
   constraint PK_SOLICITUD primary key nonclustered (ID_SOLICITUD)
)
go

insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (1, 1, 1, 1,'20', 'Petición','12/12/2017');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (2, 2, 2, 2,'50', 'Petición','16/06/2018');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (3, 3, 3, 3,'33', 'Petición','17/04/2017');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (4, 4, 4, 4,'45', 'Reclamo','16/04/2016');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (5, 5, 5, 5,'60', 'Petición','25/12/2017');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (6, 6, 6, 6,'85', 'Petición','15/08/2018');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (7, 7, 7, 7,'100', 'Petición','13/08/2017');
insert into SOLICITUD (ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_SERVICIO_ADD, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD)
values (8, 8, 8, 8,'150', 'Petición','07/09/2019');


/*==============================================================*/
/* Index: CLIENTE_SOLICITUD_FK                                  */
/*==============================================================*/
create index CLIENTE_SOLICITUD_FK on SOLICITUD (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Index: SOLICITUD_SERVICIO_FK                                 */
/*==============================================================*/
create index SOLICITUD_SERVICIO_FK on SOLICITUD (
ID_SERVICIO ASC
)
go

/*==============================================================*/
/* Index: SERVICIO_ADISIONAL_SOLICITUD_FK                       */
/*==============================================================*/
create index SERVICIO_ADISIONAL_SOLICITUD_FK on SOLICITUD (
ID_SERVICIO_ADD ASC
)
go

/*==============================================================*/
/* Table: TRASLADO                                              */
/*==============================================================*/
create table TRASLADO (
   ID_TRASLADO          int                  not null,
   ID_SERVICIO          int                  null,
   FECHA_TRASLADO       date	            null,
   PESO_TRASLADO        varchar(20)          not null,
   NUMERO_TRASL         varchar(10)          not null,
   PROVINCIA_TRAS       varchar(30)          not null,
   CANTO_TRAS           varchar(20)          not null,
   PAIS_TRAS            varchar(20)          not null,
   constraint PK_TRASLADO primary key nonclustered (ID_TRASLADO)
)
go

insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(1, 1, '15/11/2017','10.000 Kg','3','El  Oro','Manchala','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(2, 2, '20/09/2017','500 Kg','2','Esmeralda','Quinindé','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(3, 3, '10/12/2017','50.000 Kg','5','Guayas','Guayaquil','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(4, 4, '20/1/2019','20.000 Kg','8','Ambato','Tungurahua','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(5, 5, '05/02/2017','60.000 Kg','3','Loja','Azogues','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(6, 6, '25/12/2017','80.000 Kg','1','Manabi','Chone','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(7, 7, '28/02/2017','10.000 Kg','5','Pichincha','Quito','Ecuador');
insert into TRASLADO (ID_TRASLADO, ID_SERVICIO, FECHA_TRASLADO, PESO_TRASLADO, NUMERO_TRASL, PROVINCIA_TRAS,CANTO_TRAS,PAIS_TRAS)
values(8, 8, '01/10/2017','5.000 Kg','7','Los Rios','Quevedo','Ecuador');


/*==============================================================*/
/* Index: TRASLADO_SERVICIO_FK                                  */
/*==============================================================*/
create index TRASLADO_SERVICIO_FK on TRASLADO (
ID_SERVICIO ASC
)
go

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   ID_VEHICULO          int                  not null,
   CD_VEHICULO          varchar(10)          not null,
   TIPO_VEHICULO        varchar(20)          not null,
   PLACA_VEHICULO       varchar(10)          not null,
   COLOR_VEHICULO       varchar(10)          not null,
   constraint PK_VEHICULO primary key nonclustered (ID_VEHICULO)
)
go

insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(1, 'ZKF22','Camioneta 4x2','LSKS-2004','Rojo');
insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(2, 'ABC00','Camioneta 4x4','MASA-2354','Negro');
insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(3, 'XYZ50','Camion','JASA-5020','Plateado');
insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(4, 'UFC21','Trailer','TRKQ-8888','Amarillo');
insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(5, 'WWE22','Camioneta 2x2','LSKS-2004','Verde');

/*==============================================================*/
/* Table: VEHICULO_SERVICIO                                     */
/*==============================================================*/
create table VEHICULO_SERVICIO (
   ID_SERVICIO          int                  not null,
   ID_VEHICULO          int                  not null,
   constraint PK_VEHICULO_SERVICIO primary key nonclustered (ID_SERVICIO, ID_VEHICULO)
)
go

insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(1,1);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(2,2);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(3,3);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(4,4);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(5,5);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(6,6);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(7,7);
insert into VEHICULO_SERVICIO(ID_SERVICIO, ID_VEHICULO)
values(8,8);




/*==============================================================*/
/* Index: VEHICULO_SERVICIO2_FK                                 */
/*==============================================================*/
create index VEHICULO_SERVICIO2_FK on VEHICULO_SERVICIO (
ID_VEHICULO ASC
)
go

/*==============================================================*/
/* Index: VEHICULO_SERVICIO_FK                                  */
/*==============================================================*/
create index VEHICULO_SERVICIO_FK on VEHICULO_SERVICIO (
ID_SERVICIO ASC
)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_EMPRESA_E_EMPRESA foreign key (ID_EMPRESA)
      references EMPRESA (ID_EMPRESA)
go

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_MANTENIMI_VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go

alter table OBSERVACION
   add constraint FK_OBSERVAC_CLIENTE_O_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table PERSONAL_EXTRA
   add constraint FK_PERSONAL_PERSONAL__SERVICIO foreign key (ID_SERVICIO_ADD)
      references SERVICIO_ADICIONAL (ID_SERVICIO_ADD)
go

alter table SERVICIO
   add constraint FK_SERVICIO_CLIENTE_S_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table SERVICIO
   add constraint FK_SERVICIO_EMPLEADO__EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
go

alter table SERVICIO
   add constraint FK_SERVICIO_SERVICIO__PAGO foreign key (ID_PAGO)
      references PAGO (ID_PAGO)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_CLIENTE_S_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_SERVICIO__SERVICIO foreign key (ID_SERVICIO_ADD)
      references SERVICIO_ADICIONAL (ID_SERVICIO_ADD)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_SOLICITUD_SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
go

alter table TRASLADO
   add constraint FK_TRASLADO_TRASLADO__SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
go

alter table VEHICULO_SERVICIO
   add constraint FK_VEHICULO_VEHICULO__SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
go

alter table VEHICULO_SERVICIO
   add constraint FK_VEHICULO_VEHICULO__VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go



/* MOSTRAR POR PROVINCIA CUANTO A GENERADO DE INGRESO LA EMPRESA*/

SELECT 
NOMBRE_EMPRESA, PROVINCIA_TRAS,
sum( PRECIO_SERVICIO *VALOR_PESO ) as Ingreso_Mensual
from EMPRESA,SERVICIO inner join  TRASLADO
ON  SERVICIO.ID_SERVICIO = ID_TRASLADO
WHERE SERVICIO.ID_SERVICIO = TRASLADO.ID_TRASLADO
GROUP BY PROVINCIA_TRAS ,NOMBRE_EMPRESA
ORDER BY Ingreso_Mensual;



/* MOSTRAR EL NUMERO DE MANTENIMIENTOS QUE LOS VEHICULO HAN RECIBIDO EN LA EMPRESA*/

SELECT NOMBRE_EMPRESA, CD_VEHICULO, PLACA_VEHICULO, NUMERO_MANT, TIPO_MANT, COLOR_VEHICULO, TIPO_VEHICULO
FROM EMPRESA, VEHICULO inner join MANTENIMIENTO 
ON  VEHICULO.ID_VEHICULO=MANTENIMIENTO.ID_MANTENIMIENTO
WHERE MANTENIMIENTO.NUMERO_MANT='5'
GROUP BY CD_VEHICULO, PLACA_VEHICULO, NUMERO_MANT, TIPO_MANT, COLOR_VEHICULO, TIPO_VEHICULO, NOMBRE_EMPRESA
ORDER BY CD_VEHICULO;



/* INDICAL, EL PERSONAL EXTRA EN CUANTAS TAREAS DE MUDANZA A ASISTIDO*/

SELECT APELLIDO_PERSONAL, NOMBRE_PERSONAL, CEDULA_PERSONAL, APELLIDO_PERSONAL, NUMERO_TRASL
FROM PERSONAL_EXTRA inner join TRASLADO
ON TRASLADO.ID_TRASLADO=PERSONAL_EXTRA.ID_PERSONAL
WHERE PERSONAL_EXTRA.APELLIDO_PERSONAL= APELLIDO_PERSONAL
GROUP BY NOMBRE_PERSONAL, CEDULA_PERSONAL, APELLIDO_PERSONAL, NUMERO_TRASL
ORDER BY NUMERO_TRASL;



/* MUESTRE EL TOP DE LOS EMPLEADOS QUE HA TRABAJADO EN TAREAS DE MUDANZA Y QUIENES HAN OBTENIDOS OBSERVACIONES SASTIFACTORIAS*/

SELECT TOP (3) NOMBRES_EMPLEADO, CALIFICACION, OPINION 
FROM EMPLEADO INNER JOIN OBSERVACION
ON EMPLEADO.ID_EMPLEADO=OBSERVACION.ID_OBSERVACION
WHERE OBSERVACION.OPINION='EXCELENTE' OR OBSERVACION.OPINION= 'MUY BUENO' 
GROUP BY NOMBRES_EMPLEADO, CALIFICACION, OPINION 
ORDER BY OPINION ;


