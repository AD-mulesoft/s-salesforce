%dw 2.0
output application/java
---
[{
	"Id_Commerce__c": payload.opportunity_Id_Commerce__c,
	"Name": "eCommerce " ++ payload.opportunity_Name,
	"Fecha_Oferta__c": payload.opportunity_Fecha_Oferta__c as DateTime,
	"CloseDate": payload.opportunity_CloseDate as DateTime,
	"StageName": "Identificada",
    "Nivel_de_la_Oportunidad_Carta_Oferta__c":"Oportunidad para Referencia",
    "Canal__c": "Venta Directa",
    "LeadSource": "Web",
	"CurrencyIsoCode": payload.opportunity_CurrencyIsoCode,
    "RecordType": {"Name": "Venta Nacional"},
    "PriceBook2": {"Name": "Lista Workcenter"},
    "Tienda_Obra__c": vars.sfTiendaObra default "",
	"AccountId": vars.sfAccount
}]