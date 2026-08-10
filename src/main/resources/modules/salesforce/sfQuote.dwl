%dw 2.0
output application/java
---
[{
	"VCPQ_Id_Commerce__c": payload.quote_VCPQ_Id_Commerce__c default "",
	"VCPQ_NombreCotizacion__c": "eCommerce " ++ payload.quote_VCPQ_NombreCotizacion__c default "",
	"CurrencyIsoCode": payload.quote_CurrencyIsoCode default "",
	"SBQQ__Status__c": "Draft",
	"VCPQ_Fecha_Oferta__c": payload.quote_VCPQ_Fecha_Oferta__c as DateTime default "",
    "VCPQ_FechaEmisionPago__c": payload.quote_VCPQ_FechaEmisionPago__c as DateTime default "",
    "VCPQ_FechaSolicitadaEntrega__c": payload.quote_VCPQ_FechaSolicitadaEntrega__c as DateTime default "",    
    "VCPQ_OrigenCotizacion__c": "Volcanpro.cl",
    "VCPQ_Condicion_de_Pago__c": "",
    "VCPQ_InformacionPago__c": payload.quote_VCPQ_InformacionPago__c default "",
    "VCPQ_Cond_Expedicion__c": "Despacha Volcán",
    "VCPQ_UsarDirFacturacionComoDespacho__c": if(!isEmpty(vars.sfTiendaObra)) "No" else "Si",
    "VCPQ_HoraInicioIntervaloEntrega__c": "08:00:00.000Z",
    "VCPQ_HoraFinIntervaloEntrega__c": "18:30:00.000Z",
    "SBQQ__Primary__c": true,
    "VCPQ_Condicion_de_Pago__c": "Contado",
    "VCPQ_CalculoFleteManual__c": true,
    "VCPQ_ObservacionesEntregaWorkcenter__c": payload.VCPQ_ObservacionesEntregaWorkcenter__c default "",
    "VCPQ_TipoDocumento__c": if(payload.quote_VCPQ_TipoDocumento__c == "factura") "Factura" else if(payload.quote_VCPQ_TipoDocumento__c == "boleta") "Boleta" else "",
    "VCPQ_CondicionPagoWorkcenter__c": if(!isEmpty(payload.quote_VCPQ_CondicionPagoWorkcenter__c)) (
    									if(payload.quote_VCPQ_CondicionPagoWorkcenter__c contains ("Mercado Pago")) "Mercado Pago"
    									else if(payload.quote_VCPQ_CondicionPagoWorkcenter__c contains ("Flow")) "Flow"
    									else payload.quote_VCPQ_CondicionPagoWorkcenter__c
    									) else "",
    "VCPQ_InformacionPago__c": payload.VCPQ_InformacionPago__c default "",
    "VCPQ_FechaEmisionPago__c": payload.VCPQ_FechaEmisionPago__c as DateTime default "",
//    "VCPQ_RegionFlete__c": payload.VCPQ_RegionFlete__c default "",
//    "SBQQ__BillingCountry__c": payload.SBQQ__BillingCountry__c,
//    "SBQQ__BillingCity__c": payload.SBQQ__BillingState__c,
//    "SBQQ__BillingState__c": payload.SBQQ__BillingState__c default "",
//    "SBQQ__BillingStreet__c": payload.SBQQ__BillingStreet__c,
//    "SBQQ__BillingPostalCode__c": payload.SBQQ__BillingPostalCode__c,
//    "SBQQ__ShippingCountry__c": payload.SBQQ__ShippingCountry__c,    
//    "SBQQ__ShippingCity__c": payload.SBQQ__ShippingCity__c,
//    "SBQQ__ShippingState__c": payload.SBQQ__ShippingState__c default "",
//    "SBQQ__ShippingStreet__c": payload.SBQQ__ShippingStreet__c,
//    "SBQQ__ShippingPostalCode__c": payload.SBQQ__ShippingPostalCode__c,
    "RecordTypeId": vars.RecordTypeId,
    "SBQQ__PriceBook__r": {"Name": "Lista Workcenter"},
    "VCPQ_RegionFlete__c": "Metropolitana",
    "SBQQ__Opportunity2__c": vars.sfOpportunity,
    "SBQQ__PrimaryContact__c": vars.sfContact,
    "SBQQ__Account__c": vars.sfAccount
}]