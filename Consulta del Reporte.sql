SELECT
     servicio."tipo_servicio",
     servicio."precio_servicio",
     servicio."fecha_servicio",
     cliente."nombre_cliente",
     cliente."apellidos_cliente" AS cliente_apellidos_cliente,
     servicio."total_servicio" AS servicio_total_servicio,
     cliente."cedula_indent_cliente" AS cliente_cedula_indent_cliente
FROM
     "servicio" servicio INNER JOIN "cliente" cliente ON servicio."id_servicio" = cliente."id_cliente"

	WHERE servicio.TIPO_SERVICIO='Traslados de llantas'
	or servicio.TIPO_SERVICIO='Traslados de Reliquias'
	or servicio.TIPO_SERVICIO='Traslados de sillas'
	or servicio.TIPO_SERVICIO='Traslado de cuadros'

ORDER BY
     cliente.nombre_cliente ASC