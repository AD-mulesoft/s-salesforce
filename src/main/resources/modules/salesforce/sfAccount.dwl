%dw 2.0
output application/java

fun trunc20 (value) = if((!isEmpty(value)) and (sizeOf(value) > 19)) value[0 to 19] else value
fun trunc35 (value) = if((!isEmpty(value)) and (sizeOf(value) > 34)) value[0 to 34] else value
fun trunc80 (value) = if((!isEmpty(value)) and (sizeOf(value) > 79)) value[0 to 79] else value
fun trunc255 (value) = if((!isEmpty(value)) and (sizeOf(value) > 254)) value[0 to 254] else value

---
[{
	"Rut__c": payload.account_Rut__c replace "." with (""),
	"Name": trunc255(payload.account_Name) default "",
	"Nombre_de_Fantasia__c": trunc35(payload.account_Nombre_de_Fantasia__c) default "",
	"Concepto_de_B_squeda_1__c": trunc20(payload.account_Concepto_de_B_squeda_1__c) default "",
	"Pais__c": payload.account_Pais__c default "",
	"Calle_Numero__c": trunc80(payload.account_Calle_Numero__c) default "",
	"Global_Comuna_Zona_de_transporte__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.account_Global_Comuna_Zona_de_transporte__c)))[0].comuna default "",
	"Global_Ciudad__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.account_Global_Comuna_Zona_de_transporte__c)))[0].provincia default "",
	"Global_regi_n__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.account_Global_Comuna_Zona_de_transporte__c)))[0].region default "",
	"Cuenta_contable_asociada__c": "1105001",
	"Grupo_de_Cuenta__c": "5000 - Clientes Nacionales",
	"Ramo_c__c": if(payload.flagBoletaFactura == "boleta") "930-Otras Act. Servicios" else "",
	"C_digo_Ramo__c": if(payload.flagBoletaFactura == "boleta") "960909-OTRAS ACTIVIDADES DE SERVICIOS PERSONALES N.C.P." else "",
	"C_digo_Ramo_global__c": if(payload.flagBoletaFactura == "boleta") "960909-OTRAS ACTIVIDADES DE SERVICIOS PERSONALES N.C.P." else "",
	"Incoterms_parte_2__c": payload.account_Incoterms_parte_2__c default "",
	"Pais__c": "Chile",
	"Zona_de_Venta__c": "Chile - Nacional",
	"CurrencyIsoCode": "CLP",
	"Cond_Pago__c": "Contado",
	"SBQQ__RenewalModel__c": "Contract Based",
	"Incoterms__c": "Costes y Flete Volcán",
	"Clasi__c": "Ecommerce",
	"Concepto_de_B_squeda_2__c": "Ecommerce",
	"Condici_n_Expedici_n__c": "Estándar",
	"Grupo_de_tesorer_a__c": "EVOL-CNAC",
	"Grupo_Imputaci_n__c": "Ingresos nacional",
	"Grupo_Estad_stico_Clientes__c": "Material A",
	"SBQQ__ContractCoTermination__c": "Never",
	"SBQQ__TaxExempt__c": "No",
	"SBQQ__RenewalPricingMethod__c": "Same",
	"Oficina_de_Vendedor__c": "Santiago",
	"Prioridad_Entrega__c": "Segmento D",
	"SBQQ__PreserveBundle__c": true,
	"Puesto_de_Descarga__c": "ZRE Solo días de semana 18:00",
	"RecordType": {"Name": "Cuenta Para Cotizar"},
}]