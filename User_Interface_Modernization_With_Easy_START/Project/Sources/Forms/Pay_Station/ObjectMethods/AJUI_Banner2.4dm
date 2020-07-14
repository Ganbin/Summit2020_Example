$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.paymentBanner.HideBanner()
		Form:C1466.paymentBanner.StopSpinner()
		SET TIMER:C645(0)
		
End case 