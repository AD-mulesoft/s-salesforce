%dw 2.0
output application/java

fun trunc255 (value) = if((!isEmpty(value)) and (sizeOf(value) > 254)) value[0 to 254] else value

---
payload.quoteShippingLine map () -> {
	"VCPQ_Id_Commerce__c": $.VCPQ_Id_Commerce__c default "",
    "SBQQ__Quote__r": {"VCPQ_Id_Commerce__c": $."SBQQ__Quote__r.VCPQ_Id_Commerce__c" default ""},
    "SBQQ__Product__r": {"Id_Commerce__c": "6300555"},
    "SBQQ__Quantity__c": "1",
	"SBQQ__PriorQuantity__c": "1",
    "SBQQ__NetPrice__c": $.SBQQ__NetPrice__c default "",
    "SBQQ__ListPrice__c": $.SBQQ__ListPrice__c default "",
    "SBQQ__OriginalPrice__c": $.SBQQ__OriginalPrice__c default "",
    "SBQQ__Description__c": trunc255($.SBQQ__Description__c) default "",
    "SBQQ__AdditionalDiscountAmount__c": $.SBQQ__AdditionalDiscountAmount__c default "",
    "VCPQ_OriginalDiscountAmount__c": $.VCPQ_OriginalDiscountAmount__c default "",
    "CurrencyIsoCode": $.CurrencyIsoCode default ""
}