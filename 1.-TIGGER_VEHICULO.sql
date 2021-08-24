-----------------------T I G G R  V E H I C U L O-------------------------------------
/*UN  TIGGER QUE IMPIDA ASIGNAR UN VEHICULO A UNA DETERMINADA TAREA DE MUDANZA 
CUANDO ESE VEHICULO TENGO MAS DE 30 DIAS SIN HABER IDO A LA ETAPA DE MANTENIMIENTO*/
create or replace function tr_vehiculoinsert()
returns trigger as $tr_vehiculoinsert$
declare
--cargo varchar;
numero_mant int;
--nempresa varchar;
nmantenimiento int;
begin
select count (*) into numero_mant  from mantenimiento where id_vehiculo=new.id_vehiculo;
		 select id_vehiculo into nmantenimiento from vehiculo ;
if(numero_mant >= nmantenimiento) then
   raise exception SQLSTATE 'E0002' using
        message = 'Hey..Este vehiculo no puede ser asignar ya que no a ido a mantenimiento durante 30 dias... ';
	return false;
end if;
return new;
end;
$tr_vehiculoinsert$ language 'plpgsql';
create trigger tr_vehiculoinsert
before insert or update on vehiculo
for each row
execute procedure tr_vehiculoinsert();

insert into VEHICULO(ID_VEHICULO, CD_VEHICULO, TIPO_VEHICULO, PLACA_VEHICULO, COLOR_VEHICULO)
values(1, 'ZKF22','Camioneta 4x2','LSKS-2004','Rojo');