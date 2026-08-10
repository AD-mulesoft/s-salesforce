%dw 2.0
output application/java

fun trunc40 (value) = if((!isEmpty(value)) and (sizeOf(value) > 39)) value[0 to 39] else value

---
[{
	"FirstName": trunc40(payload.contact_FirstName) default "",
	"LastName": payload.contact_LastName default "",
	"Email": payload.contact_Email default "",
	"MobilePhone": payload.contact_MobilePhone default "",
	"Phone": payload.contact_Phone default "",
	"Title": "Mandante",
	"Titulo__c": "Mandante",
	"AccountId": vars.sfAccount
}]