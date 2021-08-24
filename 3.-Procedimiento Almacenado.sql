create or replace function VehiculoUtilizados(int)
returns  varchar
as $$
	DECLARE 
		datoingre alias for $1;
		datos RECORD;
		cur_datos  cursor for SELECT 
			PERSONAL_EXTRA.nombre_personal as Chofer, 
		  	PERSONAL_EXTRA_VEHICULO.id_vehiculo as id,
			VEHICULO.cd_vehiculo as Vehiculo,
 		    PERSONAL_EXTRA.correo_personal as Correo_Personal
			FROM PERSONAL_EXTRA 
		  	inner join PERSONAL_EXTRA_VEHICULO on PERSONAL_EXTRA_VEHICULO.id_personal = PERSONAL_EXTRA.id_personal
			inner join VEHICULO on VEHICULO.ID_VEHICULO = PERSONAL_EXTRA_VEHICULO.id_vehiculo
			WHERE PERSONAL_EXTRA_VEHICULO.id_vehiculo=$1
			group by
			PERSONAL_EXTRA.nombre_personal, 
		  	PERSONAL_EXTRA_VEHICULO.id_vehiculo,
			VEHICULO.cd_vehiculo,
 		    PERSONAL_EXTRA.correo_personal;
begin
	OPEN cur_datos;
		FETCh cur_datos INTO datos;
		RAISE NOTICE 
			'
			VEHICULO: % 
			
        ESTE VEHICULO AH TENIDO LOS SIGUIENTES CHOFERES:
			',
			datos.Vehiculo;
		while (found) loop 
			RAISE NOTICE 
			'
			CHOFER: %
			CORREO: %	
			',
			datos.Chofer, datos.Correo_Personal;
			FETCh cur_datos INTO datos;
		end loop;
END;
$$ LANGUAGE plpgsql;
SELECT VehiculoUtilizados(1)
