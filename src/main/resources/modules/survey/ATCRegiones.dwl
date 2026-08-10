%dw 2.0
output application/json

var body = payload groupBy ((item) -> item.Email)
pluck $
map () -> {
	"id": $.Id[0],
	"firstName": $.FirstName[0],
	"email": $.Email[0],
	"tiendaObra": $.Tienda_Obra__c[0],
	"globalRegion": $.Tienda_Obra__r.Global_regi_n__c[0]
}

---
{
	"surveyUrl": vars.sfUrl,
	"surveyRecords": body
}
//Id, FirstName, Email, Title, Tienda_Obra__c, Tienda_Obra__r.Global_regi_n__c