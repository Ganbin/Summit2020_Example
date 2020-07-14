//%attributes = {"shared":true}
C_OBJECT:C1216($1;$params)

$params:=$1

Case of 
	: ($params.paymentType="cash")
		Form:C1466.paymentBanner.Message(Get localized string:C991("main.payment.withCash"))
		
	: ($params.paymentType="card")
		Form:C1466.paymentBanner.Message(Get localized string:C991("main.payment.withCard"))
		
End case 
Form:C1466.paymentBanner.BannerType("window")
Form:C1466.paymentBanner.DrawBanner()

  // Demo effect after 5 second we will print the receipt
Form:C1466.timerCase:="toPrint"
SET TIMER:C645(60*7)
