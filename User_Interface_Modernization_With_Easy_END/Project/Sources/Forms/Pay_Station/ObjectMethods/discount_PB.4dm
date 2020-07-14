$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_CircularProgressBar 
		Form:C1466[$btn_name].CPBPictFormObjName($btn_name)
		Form:C1466[$btn_name].CPBFontSize(24)
		Form:C1466[$btn_name].CPBSubtitle("")
		Form:C1466[$btn_name].CPBTitle("$")
		Form:C1466[$btn_name].CPBBackgroundFillColor("#9B823B")
		Form:C1466[$btn_name].CPBBackgroundColor("#f2cc5c")
		Form:C1466[$btn_name].CPBFontColor("#FAECC3:100")
		Form:C1466[$btn_name].CPBBarColor("#C7A74C")
		Form:C1466[$btn_name].LaunchCircularProgressBar()
	: ($evt=On Clicked:K2:4)
		Form:C1466.articleTip.Hide()
		
		
	: ($evt=On Mouse Enter:K2:33)
		Form:C1466.discountTip.TextLabel(Get localized string:C991("main.general.discountDescription"))
		Form:C1466.discountTip.Show()
	: ($evt=On Mouse Leave:K2:34)
		Form:C1466.discountTip.Hide()
End case 




