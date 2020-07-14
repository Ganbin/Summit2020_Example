$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.title:=Get localized string:C991("main.general.scanArticles")
		PS_current.fake_scanOpen:=True:C214
	: ($evt=On Unload:K2:2)
		PS_current.fake_scanOpen:=Null:C1517
End case 
