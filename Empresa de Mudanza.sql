/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     14/06/2021 12:09:15                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_SERVICIO__SERVICIO')
alter table CLIENTE
   drop constraint FK_CLIENTE_SERVICIO__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COSTO_ESTIMADO') and o.name = 'FK_COSTO_ES_COSTO_EST_VEHICULO')
alter table COSTO_ESTIMADO
   drop constraint FK_COSTO_ES_COSTO_EST_VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_EMPLEADO__EMPRESA')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_EMPLEADO__EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_PAGO_EMPL_PAGO')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_PAGO_EMPL_PAGO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORMACION_DESTINO') and o.name = 'FK_INFORMAC_SOLICITUD_SOLICITU')
alter table INFORMACION_DESTINO
   drop constraint FK_INFORMAC_SOLICITUD_SOLICITU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OBSERVACION') and o.name = 'FK_OBSERVAC_CLIENTE_O_CLIENTE')
alter table OBSERVACION
   drop constraint FK_OBSERVAC_CLIENTE_O_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERSONAL_EXTRA_SERVICIO_ADICIONAL') and o.name = 'FK_PERSONAL_PERSONAL__SERVICIO')
alter table PERSONAL_EXTRA_SERVICIO_ADICIONAL
   drop constraint FK_PERSONAL_PERSONAL__SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERSONAL_EXTRA_SERVICIO_ADICIONAL') and o.name = 'FK_PERSONAL_PERSONAL__PERSONAL')
alter table PERSONAL_EXTRA_SERVICIO_ADICIONAL
   drop constraint FK_PERSONAL_PERSONAL__PERSONAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO') and o.name = 'FK_SERVICIO_CLIENTE_S_CLIENTE')
alter table SERVICIO
   drop constraint FK_SERVICIO_CLIENTE_S_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVICIO') and o.name = 'FK_SERVICIO_VEHICULO__VEHICULO')
alter table SERVICIO
   drop constraint FK_SERVICIO_VEHICULO__VEHICULO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_CLIENTE_S_CLIENTE')
alter table SOLICITUD
   drop constraint FK_SOLICITU_CLIENTE_S_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_SOLICITUD_SERVICIO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_SOLICITUD_SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SOLICITUD') and o.name = 'FK_SOLICITU_SOLICITUD_TRASLADO')
alter table SOLICITUD
   drop constraint FK_SOLICITU_SOLICITUD_TRASLADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VEHICULO') and o.name = 'FK_VEHICULO_VEHICULO__MANTENIM')
alter table VEHICULO
   drop constraint FK_VEHICULO_VEHICULO__MANTENIM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'SERVICIO_ADISIONAL_CLIENTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.SERVICIO_ADISIONAL_CLIENTE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COSTO_ESTIMADO')
            and   name  = 'COSTO_ESTIMADO_VEHICULO_FK'
            and   indid > 0
            and   indid < 255)
   drop index COSTO_ESTIMADO.COSTO_ESTIMADO_VEHICULO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COSTO_ESTIMADO')
            and   type = 'U')
   drop table COSTO_ESTIMADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'EMPLEADO_EMPRESA_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.EMPLEADO_EMPRESA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'PAGO_EMPLEADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.PAGO_EMPLEADO_FK
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
           where  id    = object_id('INFORMACION_DESTINO')
            and   name  = 'SOLICITUD_INFORMACION_DESTINO_FK'
            and   indid > 0
            and   indid < 255)
   drop index INFORMACION_DESTINO.SOLICITUD_INFORMACION_DESTINO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INFORMACION_DESTINO')
            and   type = 'U')
   drop table INFORMACION_DESTINO
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
            from  sysobjects
           where  id = object_id('PERSONAL_EXTRA')
            and   type = 'U')
   drop table PERSONAL_EXTRA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERSONAL_EXTRA_SERVICIO_ADICIONAL')
            and   name  = 'PERSONAL_EXTRA_SERVICIO_ADICIONAL_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERSONAL_EXTRA_SERVICIO_ADICIONAL.PERSONAL_EXTRA_SERVICIO_ADICIONAL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERSONAL_EXTRA_SERVICIO_ADICIONAL')
            and   name  = 'PERSONAL_EXTRA_SERVICIO_ADICIONAL2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERSONAL_EXTRA_SERVICIO_ADICIONAL.PERSONAL_EXTRA_SERVICIO_ADICIONAL2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONAL_EXTRA_SERVICIO_ADICIONAL')
            and   type = 'U')
   drop table PERSONAL_EXTRA_SERVICIO_ADICIONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SERVICIO')
            and   name  = 'VEHICULO_SERVICIO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SERVICIO.VEHICULO_SERVICIO_FK
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
            from  sysobjects
           where  id = object_id('SERVICIO')
            and   type = 'U')
   drop table SERVICIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIO_ADISIONAL')
            and   type = 'U')
   drop table SERVICIO_ADISIONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SOLICITUD')
            and   name  = 'SOLICITUD_TRASLADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOLICITUD.SOLICITUD_TRASLADO_FK
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
            from  sysobjects
           where  id = object_id('TRASLADO')
            and   type = 'U')
   drop table TRASLADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VEHICULO')
            and   name  = 'VEHICULO_MANTENIMIENTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index VEHICULO.VEHICULO_MANTENIMIENTO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VEHICULO')
            and   type = 'U')
   drop table VEHICULO
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           int                  not null,
   ID_SERVICIO_ADD      int                  null,
   CEDULA_INDENT_CLIENTE int                  not null,
   NOMBRE_CLIENTE       varchar(20)          not null,
   APELLIDOS_CLIENTE    varchar(20)          not null,
   CELULAR              varchar(10)          not null,
   CORREO_CLIENTE       varchar(25)          not null,
   CIUDAD               varchar(20)          not null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

insert into CLIENTE(ID_CLIENTE,ID_SERVICIO_ADD,CEDULA_INDENT_CLIENTE,NOMBRE_CLIENTE,APELLIDOS_CLIENTE,CELULAR,CORREO_CLIENTE,CIUDAD) 
values (1,1,1314506897,'Miguel Angel','Sánchez Arteaga','0987563214','themiguel50.@gmail.com','Manta');
insert into CLIENTE(ID_CLIENTE,ID_SERVICIO_ADD,CEDULA_INDENT_CLIENTE,NOMBRE_CLIENTE,APELLIDOS_CLIENTE,CELULAR,CORREO_CLIENTE,CIUDAD) 
values (2,2,1314506868,'Paola María','Macias Lopez','0987563458','porhub.@gmail.com','Portoviejo');
insert into CLIENTE(ID_CLIENTE,ID_SERVICIO_ADD,CEDULA_INDENT_CLIENTE,NOMBRE_CLIENTE,APELLIDOS_CLIENTE,CELULAR,CORREO_CLIENTE,CIUDAD) 
values (3,3,1314506824,'Maria José','Macias Macias','0952798564','redtube.@gmail.com','Portoviejo');
insert into CLIENTE(ID_CLIENTE,ID_SERVICIO_ADD,CEDULA_INDENT_CLIENTE,NOMBRE_CLIENTE,APELLIDOS_CLIENTE,CELULAR,CORREO_CLIENTE,CIUDAD) 
values (4,4,1307931564,'Daniel Arquimides','Sánchez Bailón','0956236978','redtube.@gmail.com','Portoviejo');


/*==============================================================*/
/* Index: SERVICIO_ADISIONAL_CLIENTE_FK                         */
/*==============================================================*/
create index SERVICIO_ADISIONAL_CLIENTE_FK on CLIENTE (
ID_SERVICIO_ADD ASC
)
go

/*==============================================================*/
/* Table: COSTO_ESTIMADO                                        */
/*==============================================================*/
create table COSTO_ESTIMADO (
   ID_COSTO             int                  not null,
   ID_VEHICULO          int                  null,
   KILOMETRO            varchar(20)          not null,
   HORA                 time             not null,
   COSTO_KILOMETRO_H    numeric(6,2)         not null,
   constraint PK_COSTO_ESTIMADO primary key nonclustered (ID_COSTO)
)
go

insert into COSTO_ESTIMADO (ID_COSTO, ID_VEHICULO, KILOMETRO, HORA, COSTO_KILOMETRO_H)
values (1, 1,'10.000','08:00','150.00')
insert into COSTO_ESTIMADO (ID_COSTO, ID_VEHICULO, KILOMETRO, HORA, COSTO_KILOMETRO_H)
values (2, 2,'20.000','15:00','200.00')
insert into COSTO_ESTIMADO (ID_COSTO, ID_VEHICULO, KILOMETRO, HORA, COSTO_KILOMETRO_H)
values (3, 3,'15.000','10:00','10.00')
insert into COSTO_ESTIMADO (ID_COSTO, ID_VEHICULO, KILOMETRO, HORA, COSTO_KILOMETRO_H)
values (4, 4,'50.000','22:00','150.00')


/*==============================================================*/
/* Index: COSTO_ESTIMADO_VEHICULO_FK                            */
/*==============================================================*/
create index COSTO_ESTIMADO_VEHICULO_FK on COSTO_ESTIMADO (
ID_VEHICULO ASC
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMPLEADO          int                  not null,
   ID_PAGO              int                  null,
   ID_EMPRESA           int                  null,
   CEDULA_IDENTIDAD_EMPLEADO int                  not null,
   NOMBRES_EMPLEADO     varchar(25)          not null,
   APELLIDOS_EMPLEADO   varchar(25)          not null,
   CELULAR_EMPLEADO     varchar(10)          not null,
   CORREO_EMPLEADO      varchar(30)          not null,
   CUIDAD_EMPLEADO      varchar(20)          not null,
   DIRECCION_EMPLEADO   varchar(40)          not null,
   TIPO_EMPLEADO        varchar(20)          not null,
   constraint PK_EMPLEADO primary key nonclustered (ID_EMPLEADO)
)
go

insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (1, 1, 1, 1316352697,'Carlos Celestino','Cañarte Hidalgo','0956789523','carcañarte@gmail.com','Manta','Barrio Cuba','Chofer')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (2, 2, 2, 1355009852,'Anibal Grorioso','Figueroa Ponce','0956327064','Anibal1956@gmail.com','Manta','Las Orquideas','Copiloto')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (3, 3, 3, 1304603610,'Pablo Emilio ','Escobar Gaviria','0980804040','colombia1995@gmail.com','Manta','Barrio Cuba','Chofer')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (4, 4, 4, 1354060789,'Pedro Pablo','León Jaramillo','0980030257','elcapo@gmail.com','Montecristi','Los Bajos','Mulero')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (5, 5, 5, 1308963031,'Miguel José','Sánchez Arteaga','0945236952','miguel5026@gmail.com','Portoviejo','El Floron','Copiloto')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (6, 6, 6, 1352036971,'Carlos Celestino','Cañarte Hidalgo','0956789523','hcarlos56@gmail.com','Manta','15 de Abril','Mulero')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (7, 7, 7, 1313010569,'Jose Alberto','Ponce Carrasco','0901203100','carrascojose@gmail.com','Manta','20 de Mayo','Chofer')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (8, 8, 8, 1305063697,'Byron Jesus','Lopez Tigua','0978965412','byron_l2005@htmail.ec','Montecristi','Anibal San Andres','Chofer')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (9, 9, 9, 1337896231,'Iker Alexis','Figueroa Macias','0950507078','alexisanchez@live.edu.ec','Manta','Barrio 7 Puñaladas','Chofer')
insert into EMPLEADO(ID_EMPLEADO, ID_PAGO, ID_EMPRESA, CEDULA_IDENTIDAD_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, CELULAR_EMPLEADO, CORREO_EMPLEADO, CUIDAD_EMPLEADO, DIRECCION_EMPLEADO, TIPO_EMPLEADO)
values (10, 10, 10, 1358086705,'Melanie Nicole','Morejon Valdiviezo','0930405060','lacariñosita@gmail.com','Manta','Urbirios','Copiloto')



/*==============================================================*/
/* Index: PAGO_EMPLEADO_FK                                      */
/*==============================================================*/
create index PAGO_EMPLEADO_FK on EMPLEADO (
ID_PAGO ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_EMPRESA_FK                                   */
/*==============================================================*/
create index EMPLEADO_EMPRESA_FK on EMPLEADO (
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
   constraint PK_EMPRESA primary key nonclustered (ID_EMPRESA)
)
go

insert into EMPRESA(ID_EMPRESA, NOMBRE_EMPRESA, DIRECION_EMPRESA, TELEFONO_EMPRESA, CORREO_EMPRESA)
values(1, 'Los Santos','Manta-20 de Mayo','0920314578','thesantos@gmail.com')

/*==============================================================*/
/* Table: INFORMACION_DESTINO                                   */
/*==============================================================*/
create table INFORMACION_DESTINO (
   ID_DESTINO           int                  not null,
   ID_SOLICITUD         int                  null,
   PROVINCIA            varchar(20)          not null,
   CANTON               varchar(20)          not null,
   PAIS                 varchar(20)          not null,
   constraint PK_INFORMACION_DESTINO primary key nonclustered (ID_DESTINO)
)
go

insert into INFORMACION_DESTINO(ID_DESTINO,ID_SOLICITUD, PROVINCIA, CANTON, PAIS)
values(1, 1,'Manabi','Manta','Ecuador')
insert into INFORMACION_DESTINO(ID_DESTINO, ID_SOLICITUD, PROVINCIA, CANTON, PAIS)
values(2, 2,'Guayas','Guayaquil','Ecuador')
insert into INFORMACION_DESTINO(ID_DESTINO, ID_SOLICITUD, PROVINCIA, CANTON, PAIS)
values(3, 3,'Pichincha','Quito','Ecuador')
insert into INFORMACION_DESTINO(ID_DESTINO, ID_SOLICITUD, PROVINCIA, CANTON, PAIS)
values(4, 4,'Guayas','Sause','Ecuador')
insert into INFORMACION_DESTINO(ID_DESTINO, ID_SOLICITUD, PROVINCIA, CANTON, PAIS)
values(5, 5,'Manabi','Portoviejo','Ecuador')

/*==============================================================*/
/* Index: SOLICITUD_INFORMACION_DESTINO_FK                      */
/*==============================================================*/
create index SOLICITUD_INFORMACION_DESTINO_FK on INFORMACION_DESTINO (
ID_SOLICITUD ASC
)
go

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   ID_MANTENIMIENTO     int                  not null,
   FECHA_INICIO_MANT    varchar(15)          not null,
   FECHA_FIN_MANT       date             not null,
   HORA_INICIO_MANT     time             not null,
   constraint PK_MANTENIMIENTO primary key nonclustered (ID_MANTENIMIENTO)
)
go

insert into MANTENIMIENTO(ID_MANTENIMIENTO, FECHA_INICIO_MANT, FECHA_FIN_MANT, HORA_INICIO_MANT)
values(1,'16/11/2016','17/11/2016','09:00');
insert into MANTENIMIENTO(ID_MANTENIMIENTO, FECHA_INICIO_MANT, FECHA_FIN_MANT, HORA_INICIO_MANT)
values(2,'20/05/2016','15/07/2016','22:00')
insert into MANTENIMIENTO(ID_MANTENIMIENTO, FECHA_INICIO_MANT, FECHA_FIN_MANT, HORA_INICIO_MANT)
values(3,'24/12/2016','30/12/2016','15:00')
insert into MANTENIMIENTO(ID_MANTENIMIENTO, FECHA_INICIO_MANT, FECHA_FIN_MANT, HORA_INICIO_MANT)
values(4,'31/12/2016','01/01/2017','00:00')
insert into MANTENIMIENTO(ID_MANTENIMIENTO, FECHA_INICIO_MANT, FECHA_FIN_MANT, HORA_INICIO_MANT)
values(5,'05/11/2016','10/11/2016','10:00')


/*==============================================================*/
/* Table: OBSERVACION                                           */
/*==============================================================*/
create table OBSERVACION (
   ID_OBSERVACION       int                  not null,
   ID_CLIENTE           int                  null,
   ID_EMPLEADO          int                  null,
   NUMERO_SASTIFECHO    varchar(10)          not null,
   NUMERO_INSASTIFECHO  varchar(30)          not null,
   FECHA_OB             date                 not null,
   GRUPO                varchar(30)          not null,    
   constraint PK_OBSERVACION primary key nonclustered (ID_OBSERVACION)
)
go

insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE,ID_EMPLEADO, NUMERO_SASTIFECHO, NUMERO_INSASTIFECHO,FECHA_OB,GRUPO)
values(1,1,1,'8','1','16/11/2016','#1');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE,ID_EMPLEADO, NUMERO_SASTIFECHO, NUMERO_INSASTIFECHO,FECHA_OB,GRUPO)
values(2,2,2,'10','5','20/05/2016','#2');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE,ID_EMPLEADO, NUMERO_SASTIFECHO, NUMERO_INSASTIFECHO,FECHA_OB,GRUPO)
values(3,3,3,'6','2','05/06/2016','#3');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE,ID_EMPLEADO, NUMERO_SASTIFECHO, NUMERO_INSASTIFECHO,FECHA_OB,GRUPO)
values(4,4,4,'2','2','25/12/2016','#4');
insert into OBSERVACION(ID_OBSERVACION, ID_CLIENTE,ID_EMPLEADO, NUMERO_SASTIFECHO, NUMERO_INSASTIFECHO,FECHA_OB,GRUPO)
values(5,5,5,'20','3','15/08/2016','#5');


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
   PAGO                 numeric(6,2)         not null,
   FECHA_PAGO           date                 not null,
   constraint PK_PAGO primary key nonclustered (ID_PAGO)
)
go

insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(1,370,'31/01/2016');
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(3,370,'31/03/2016');
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(4,370,'31/04/2016');
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(5,370,'31/05/2016');
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(6,370,'31/06/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(7,370,'31/07/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(8,370,'31/08/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(9,370,'31/09/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(10,370,'31/10/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(11,370,'31/11/2016')
insert into PAGO(ID_PAGO, PAGO, FECHA_PAGO)
values(12,370,'29/12/2016')

/*==============================================================*/
/* Table: PERSONAL_EXTRA                                        */
/*==============================================================*/
create table PERSONAL_EXTRA (
   ID_PERSONAL          int                  not null,
   CEDULA_PERSONAL      int                  not null,
   NOMBRE_PERSONAL      varchar(20)          not null,
   APELLIDO_PERSONAL    varchar(20)          not null,
   FECHA_INGRESO_PERSONAL varchar(10)          not null,
   FECHA_SALIDA_PERSONAL date             not null,
   CELULAR_PERSONAL     varchar(10)          not null,
   CORREO_PERSONAL      varchar(30)          not null,
   HORA_INGRESO_PERS    time             not null,
   HORA_SALDIA_PERS     time             not null,
   constraint PK_PERSONAL_EXTRA primary key nonclustered (ID_PERSONAL)
)
go

insert into PERSONAL_EXTRA(ID_PERSONAL, CEDULA_PERSONAL, NOMBRE_PERSONAL,APELLIDO_PERSONAL, FECHA_INGRESO_PERSONAL, FECHA_SALIDA_PERSONAL, CELULAR_PERSONAL, CORREO_PERSONAL, HORA_INGRESO_PERS, HORA_SALDIA_PERS )
values (1, 1315231064,'Alex Patricio','Pin Parrales','23/05/2016','24/05/2016','0900316597','triplep@gmail.com','08:00','17:00')
insert into PERSONAL_EXTRA(ID_PERSONAL, CEDULA_PERSONAL, NOMBRE_PERSONAL,APELLIDO_PERSONAL, FECHA_INGRESO_PERSONAL, FECHA_SALIDA_PERSONAL, CELULAR_PERSONAL, CORREO_PERSONAL, HORA_INGRESO_PERS, HORA_SALDIA_PERS )
values (2, 1308095862,'Carlos Andres','Tubay Zamora','15/11/2016','15/11/2016','0900362275','manene@gmail.com','08:00','12:00')
insert into PERSONAL_EXTRA(ID_PERSONAL, CEDULA_PERSONAL, NOMBRE_PERSONAL,APELLIDO_PERSONAL, FECHA_INGRESO_PERSONAL, FECHA_SALIDA_PERSONAL, CELULAR_PERSONAL, CORREO_PERSONAL, HORA_INGRESO_PERS, HORA_SALDIA_PERS )
values (3, 1317139745,'Kevin Alexander','Gonzalez Mera','25/12/2016','25/12/2016','0900316578','alexogomez@gmail.com','08:00','17:00')
insert into PERSONAL_EXTRA(ID_PERSONAL, CEDULA_PERSONAL, NOMBRE_PERSONAL,APELLIDO_PERSONAL, FECHA_INGRESO_PERSONAL, FECHA_SALIDA_PERSONAL, CELULAR_PERSONAL, CORREO_PERSONAL, HORA_INGRESO_PERS, HORA_SALDIA_PERS )
values (4, 1350310640,'Luis Alberto','Lascano Cevallos','01/01/2017','02/01/2017','0900000000','tulobita@gmail.com','08:00','17:00')
insert into PERSONAL_EXTRA(ID_PERSONAL, CEDULA_PERSONAL, NOMBRE_PERSONAL,APELLIDO_PERSONAL, FECHA_INGRESO_PERSONAL, FECHA_SALIDA_PERSONAL, CELULAR_PERSONAL, CORREO_PERSONAL, HORA_INGRESO_PERS, HORA_SALDIA_PERS )
values (5, 1315232010,'Fernando Emilio','Rosado Moreira','10/12/2016','11/12/2016','0900316597','gissado@gmail.com','08:00','00:00')


/*==============================================================*/
/* Table: PERSONAL_EXTRA_SERVICIO_ADICIONAL                     */
/*==============================================================*/
create table PERSONAL_EXTRA_SERVICIO_ADICIONAL (
   ID_SERVICIO_ADD      int                  not null,
   ID_PERSONAL          int                  not null,
   constraint PK_PERSONAL_EXTRA_SERVICIO_ADI primary key nonclustered (ID_SERVICIO_ADD, ID_PERSONAL)
)
go

insert into PERSONAL_EXTRA_SERVICIO_ADICIONAL(ID_SERVICIO_ADD, ID_PERSONAL)
values(1, 1)
insert into PERSONAL_EXTRA_SERVICIO_ADICIONAL(ID_SERVICIO_ADD, ID_PERSONAL)
values(2, 2)
insert into PERSONAL_EXTRA_SERVICIO_ADICIONAL(ID_SERVICIO_ADD, ID_PERSONAL)
values(3, 3)
insert into PERSONAL_EXTRA_SERVICIO_ADICIONAL(ID_SERVICIO_ADD, ID_PERSONAL)
values(4, 4)

/*==============================================================*/
/* Index: PERSONAL_EXTRA_SERVICIO_ADICIONAL2_FK                 */
/*==============================================================*/
create index PERSONAL_EXTRA_SERVICIO_ADICIONAL2_FK on PERSONAL_EXTRA_SERVICIO_ADICIONAL (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: PERSONAL_EXTRA_SERVICIO_ADICIONAL_FK                  */
/*==============================================================*/
create index PERSONAL_EXTRA_SERVICIO_ADICIONAL_FK on PERSONAL_EXTRA_SERVICIO_ADICIONAL (
ID_SERVICIO_ADD ASC
)
go

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_SERVICIO          int                  not null,
   ID_CLIENTE           int                  null,
   ID_VEHICULO          int                  null,
   ID_DESTINO           int                  null,
   TIPO_SERVICIO        varchar(30)          not null,
   PRECIO_SERVICIO      numeric(6,2)         not null,
   FECHA_SERVICIO       date             not null,
   HORA_SERVICIO        time             not null,
   PESO__SERVICIO       varchar(15)          not null,
   TOTAL_SERVICIO       numeric(6,2)         not null,
   IVA_SERVICIO         varchar(15)          not null,
   constraint PK_SERVICIO primary key nonclustered (ID_SERVICIO)
)
go

insert into SERVICIO (ID_SERVICIO, ID_CLIENTE, ID_VEHICULO,ID_DESTINO, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, HORA_SERVICIO, PESO__SERVICIO, TOTAL_SERVICIO, IVA_SERVICIO)
values(1, 1, 1,1, 'Servicio Normal',150.00,'06/11/2016','10:00','1.000 kg', 200.00,'12%')
insert into SERVICIO (ID_SERVICIO, ID_CLIENTE, ID_VEHICULO,ID_DESTINO, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, HORA_SERVICIO, PESO__SERVICIO, TOTAL_SERVICIO, IVA_SERVICIO)
values(2, 2, 2,2, 'Servicio Complicado',300.00,'25/11/2016','22:00','15.000 kg', 400.00,'12%');
insert into SERVICIO (ID_SERVICIO, ID_CLIENTE, ID_VEHICULO,ID_DESTINO, TIPO_SERVICIO, PRECIO_SERVICIO, FECHA_SERVICIO, HORA_SERVICIO, PESO__SERVICIO, TOTAL_SERVICIO, IVA_SERVICIO)
values(3, 3, 3,3, 'Servicio Medio complicado',250.00,'15/09/2016','08:00 ','5.000 kl', 300.00,'12%');

/*==============================================================*/
/* Index: CLIENTE_SERVICIO_FK                                   */
/*==============================================================*/
create index CLIENTE_SERVICIO_FK on SERVICIO (
ID_CLIENTE ASC
)
go

/*==============================================================*/
/* Index: VEHICULO_SERVICIO_FK                                  */
/*==============================================================*/
create index VEHICULO_SERVICIO_FK on SERVICIO (
ID_VEHICULO ASC
)
go

/*==============================================================*/
/* Table: SERVICIO_ADISIONAL                                    */
/*==============================================================*/
create table SERVICIO_ADISIONAL (
   ID_SERVICIO_ADD      int                  not null,
   HORA_INGESO_ADD      time             not null,
   HORA_SALIDA_ADD      time             not null,
   FECHA_SERVICIO_ADD   date             not null,
   constraint PK_SERVICIO_ADISIONAL primary key nonclustered (ID_SERVICIO_ADD)
)
go

insert into SERVICIO_ADISIONAL(ID_SERVICIO_ADD, HORA_INGESO_ADD, HORA_SALIDA_ADD, FECHA_SERVICIO_ADD)
values(1,'08:00','12:00','20/11/2016')
insert into SERVICIO_ADISIONAL(ID_SERVICIO_ADD, HORA_INGESO_ADD, HORA_SALIDA_ADD, FECHA_SERVICIO_ADD)
values(2,'09:00','11:30','15/11/2016')
insert into SERVICIO_ADISIONAL(ID_SERVICIO_ADD, HORA_INGESO_ADD, HORA_SALIDA_ADD, FECHA_SERVICIO_ADD)
values(3,'15:00','18:00','1/01/2017')
insert into SERVICIO_ADISIONAL(ID_SERVICIO_ADD, HORA_INGESO_ADD, HORA_SALIDA_ADD, FECHA_SERVICIO_ADD)
values(4,'10:00','14:00','15/05/2016')
insert into SERVICIO_ADISIONAL(ID_SERVICIO_ADD, HORA_INGESO_ADD, HORA_SALIDA_ADD, FECHA_SERVICIO_ADD)
values(5,'07:00','11:00','10/09/2016')






/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   ID_SOLICITUD         int                  not null,
   ID_CLIENTE           int                  null,
   ID_SERVICIO          int                  null,
   ID_TRASLADO          int                  null,
   NUMERO_SOLICITUD     varchar(15)          not null,
   TIPO_SOLICITUD       varchar(30)          not null,
   FECHA_SOLICITUD      date             not null,
   HORA_SOLICITUD       time             not null,
   APROBACION_SOLICITUD varchar(20)          not null,
   VALOR_SOLICITUD      numeric(6,2)         not null,
   constraint PK_SOLICITUD primary key nonclustered (ID_SOLICITUD)
)
go

insert into SOLICITUD(ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_TRASLADO, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD, HORA_SOLICITUD, APROBACION_SOLICITUD, VALOR_SOLICITUD)
values(1, 1, 1, 1, '25','Mudanza','25/09/2016','8:00','Aprobada', 0.50 )
insert into SOLICITUD(ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_TRASLADO, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD, HORA_SOLICITUD, APROBACION_SOLICITUD, VALOR_SOLICITUD)
values(2, 2, 2, 2, '15','Organizacion Mobiliaria','20/09/2016','09:15','Aprobada', 0.50 )
insert into SOLICITUD(ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_TRASLADO, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD, HORA_SOLICITUD, APROBACION_SOLICITUD, VALOR_SOLICITUD)
values(3, 3, 3, 3, '10','Subida Artefacto','10/12/2016','11:00','Aprobada', 0.50 )
insert into SOLICITUD(ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_TRASLADO, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD, HORA_SOLICITUD, APROBACION_SOLICITUD, VALOR_SOLICITUD)
values(4, 4, 4, 4, '13','Bajada Muebles','31/12/2016','17:00','Rechazada', 0.50 )
insert into SOLICITUD(ID_SOLICITUD, ID_CLIENTE, ID_SERVICIO, ID_TRASLADO, NUMERO_SOLICITUD, TIPO_SOLICITUD, FECHA_SOLICITUD, HORA_SOLICITUD, APROBACION_SOLICITUD, VALOR_SOLICITUD)
values(5, 5, 5, 5, '07','Mudanza','01/08/2016','14:00','Aprobada', 0.50 )


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
/* Index: SOLICITUD_TRASLADO_FK                                 */
/*==============================================================*/
create index SOLICITUD_TRASLADO_FK on SOLICITUD (
ID_TRASLADO ASC
)
go

/*==============================================================*/
/* Table: TRASLADO                                              */
/*==============================================================*/
create table TRASLADO (
   ID_TRASLADO          int                  not null,
   ID_OBSERVACION       int                  null,
   HORA_TRASLADO        time             not null,
   PESO_TRASLADO        varchar(20)          not null,
   VALOR_PESO           numeric(6,2)         not null,
   NUMERO_TRASL         varchar(10)          not null,
   constraint PK_TRASLADO primary key nonclustered (ID_TRASLADO)
)
go

insert into TRASLADO(ID_TRASLADO,ID_OBSERVACION, HORA_TRASLADO, PESO_TRASLADO, VALOR_PESO,NUMERO_TRASL)
values(1,1, '08:00','10.000 kg',150.00,'5')
insert into TRASLADO(ID_TRASLADO,ID_OBSERVACION, HORA_TRASLADO, PESO_TRASLADO, VALOR_PESO,NUMERO_TRASL)
values(2,2, '09:00','15.000 kg',200.00,'2')
insert into TRASLADO(ID_TRASLADO,ID_OBSERVACION, HORA_TRASLADO, PESO_TRASLADO, VALOR_PESO,NUMERO_TRASL)
values(3,3, '15:00','20.000 kg',250.00,'3')
insert into TRASLADO(ID_TRASLADO,ID_OBSERVACION, HORA_TRASLADO, PESO_TRASLADO, VALOR_PESO,NUMERO_TRASL)
values(4,4, '10:00','30.000 kg',450.00,'8')
insert into TRASLADO(ID_TRASLADO,ID_OBSERVACION, HORA_TRASLADO, PESO_TRASLADO, VALOR_PESO,NUMERO_TRASL)
values(5,5, '20:00','5.000 kg',100.00,'1')



/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   ID_VEHICULO          int                  not null,
   ID_MANTENIMIENTO     int                  null,
   CD_VEHICULO          varchar(10)          not null,
   TIPO_VEHICULO        varchar(20)          not null,
   PLACA_VEHICULO       varchar(10)          not null,
   COLOR_VEHICULO       varchar(10)          not null,
   constraint PK_VEHICULO primary key nonclustered (ID_VEHICULO)
)
go

insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(1, 1,'1LKA10','Camionta 4x2','XYZ-2040','Rojo')
insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(2, 2,'2LMA11','Camionta 4x4','SYA-7546','Plata')
insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(3, 3,'3JLK12','Camion','DMS-9724','Azul')
insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(4, 4,'4ABC13','Traile','MAS-2021','Conchadevino')
insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(5, 5,'5MKB14','Camionta 4x4','DAS-7645','Rojo')
insert into VEHICULO(ID_VEHICULO,ID_MANTENIMIENTO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(6, 6,'6MNB15','Camionta 4x4','BMW-1121','Negro')


/*==============================================================*/
/* Index: VEHICULO_MANTENIMIENTO_FK                             */
/*==============================================================*/
create index VEHICULO_MANTENIMIENTO_FK on VEHICULO (
ID_MANTENIMIENTO ASC
)
go

alter table CLIENTE
   add constraint FK_CLIENTE_SERVICIO__SERVICIO foreign key (ID_SERVICIO_ADD)
      references SERVICIO_ADISIONAL (ID_SERVICIO_ADD)
go

alter table COSTO_ESTIMADO
   add constraint FK_COSTO_ES_COSTO_EST_VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_EMPLEADO__EMPRESA foreign key (ID_EMPRESA)
      references EMPRESA (ID_EMPRESA)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_PAGO_EMPL_PAGO foreign key (ID_PAGO)
      references PAGO (ID_PAGO)
go

alter table INFORMACION_DESTINO
   add constraint FK_INFORMAC_SOLICITUD_SOLICITU foreign key (ID_SOLICITUD)
      references SOLICITUD (ID_SOLICITUD)
go

alter table OBSERVACION
   add constraint FK_OBSERVAC_CLIENTE_O_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table PERSONAL_EXTRA_SERVICIO_ADICIONAL
   add constraint FK_PERSONAL_PERSONAL__SERVICIO foreign key (ID_SERVICIO_ADD)
      references SERVICIO_ADISIONAL (ID_SERVICIO_ADD)
go

alter table PERSONAL_EXTRA_SERVICIO_ADICIONAL
   add constraint FK_PERSONAL_PERSONAL__PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL_EXTRA (ID_PERSONAL)
go

alter table SERVICIO
   add constraint FK_SERVICIO_CLIENTE_S_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table SERVICIO
   add constraint FK_SERVICIO_VEHICULO__VEHICULO foreign key (ID_VEHICULO)
      references VEHICULO (ID_VEHICULO)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_CLIENTE_S_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_SOLICITUD_SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
go

alter table SOLICITUD
   add constraint FK_SOLICITU_SOLICITUD_TRASLADO foreign key (ID_TRASLADO)
      references TRASLADO (ID_TRASLADO)
go

alter table VEHICULO
   add constraint FK_VEHICULO_VEHICULO__MANTENIM foreign key (ID_MANTENIMIENTO)
      references MANTENIMIENTO (ID_MANTENIMIENTO)
go

/*Indique por provincia cuanto a genereado de ingreso la empresa*/
select PROVINCIA,NOMBRE_EMPRESA,TOTAL_SERVICIO, TIPO_SERVICIO from EMPRESA, INFORMACION_DESTINO inner join SERVICIO
ON  SERVICIO.ID_SERVICIO = INFORMACION_DESTINO.ID_DESTINO
WHERE INFORMACION_DESTINO.PROVINCIA= PROVINCIA
GROUP BY PROVINCIA,NOMBRE_EMPRESA,TOTAL_SERVICIO,TIPO_SERVICIO
ORDER BY PROVINCIA;

select * from INFORMACION_DESTINO;
select * from EMPRESA;
select * from SERVICIO;
select * from TRASLADO;