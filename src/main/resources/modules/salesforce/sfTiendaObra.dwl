%dw 2.0
output application/java

fun trunc35 (value) = if((!isEmpty(value)) and (sizeOf(value) > 34)) value[0 to 34] else value
fun trunc60 (value) = if((!isEmpty(value)) and (sizeOf(value) > 59)) value[0 to 59] else value
fun trunc80 (value) = if((!isEmpty(value)) and (sizeOf(value) > 79)) value[0 to 79] else value
//var random = randomInt(99999999) as String

---
[{
	"Name": trunc80(payload.tiendaObra_Name) default "",
	"Nombre_de_Fantasia__c": trunc35(payload.tiendaObra_Nombre_de_Fantasia__c) default "",
	"RUT__c": payload.tiendaObra_RUT__c replace "." with (""),
//	"RUT__c": random ++ "-0",
	"Calle_Numero__c": trunc60(payload.tiendaObra_Calle_Numero__c) default "",
	"Global_Comuna_Zona_de_transporte__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.tiendaObra_Global_Comuna_Zona_de_transporte__c)))[0].comuna default "",
	"Global_Ciudad__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.tiendaObra_Global_Comuna_Zona_de_transporte__c)))[0].provincia default "",
	"Global_regi_n__c": (vars.sfComunas filter (upper($.comuna) == upper(payload.tiendaObra_Global_Comuna_Zona_de_transporte__c)))[0].region default "",
	"Pais__c": payload.tiendaObra_Pais__c default "",
//	"Cuenta__r": {"Rut__c": payload.tiendaObra_RUT__c replace "." with ("")},
	"Tratamiento__c": "Obra",
	"Cuenta__c": vars.sfAccount,
//	"OwnerId": vars.sfAccountOwner,
	"RecordType": {"Name": "Obra"}
}]