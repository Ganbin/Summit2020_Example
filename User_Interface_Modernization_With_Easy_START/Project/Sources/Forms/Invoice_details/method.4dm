C_POINTER:C301($nil)
$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1) | ($evt=On Bound Variable Change:K2:52)
		Invoice_onLoad 
		
End case 

