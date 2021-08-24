do $$
declare
 ndata Record;
 c_nprueba cursor for select * from vehiculo,personal_extra,servicio where vehiculo.id_vehiculo = personal_extra.id_personal 
 and servicio.id_servicio= servicio.id_servicio group by vehiculo.id_vehiculo, personal_extra.id_personal, servicio.id_servicio;
 
begin
for ndata in c_nprueba loop
fetch c_nprueba into ndata;
raise notice 'VEHICULO: % , ENVIO: % , PRECIO: % , PERSONAL_EXTRA: %', ndata.cd_vehiculo,
ndata.envio,ndata.precio_servicio, ndata.nombre_personal;
end loop;
end $$
language 'plpgsql';
select * from empleado;
select * from personal_extra;
select * from servicio;

select * from personal_extra_vehiculo;

select * from vehiculo_servicio;

select * from vehiculo;


