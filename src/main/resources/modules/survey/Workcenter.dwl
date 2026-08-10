%dw 2.0
output application/json

var body = payload groupBy ((item) -> item.Email)
pluck $
map () -> {
	"id": $.Id[0],
	"firstName": $.FirstName[0],
	"email": $.Email[0],
	"title": $.Title[0]
}

---
{
	"surveyUrl": vars.sfUrl,
	"surveyRecords": body
}


//SELECT Id, FirstName, Email, Title