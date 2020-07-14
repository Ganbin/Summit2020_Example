$evt:=Form event code:C388
Case of 
	: ($evt=On Load:K2:1) | ($evt=On Bound Variable Change:K2:52)
		
		$ribbonName:="firedRibbon"
		If (Form:C1466[$ribbonName]=Null:C1517)
			Form:C1466[$ribbonName]:=New AJUI_Banner 
			Form:C1466[$ribbonName].BannerType("cornerRibbon")
			Form:C1466[$ribbonName].BannerName("ribbon")
		End if 
		
		Form:C1466[$ribbonName].BannerBGColor("#bd1717:100")
		Form:C1466[$ribbonName].BannerPosition("bottom-right")
		Form:C1466[$ribbonName].Message("Fired")
		
		  //TRACE
		If (Bool:C1537(Form:C1466.entity.more_infos.fired)=True:C214)
			Form:C1466[$ribbonName].DrawBanner()
		Else 
			Form:C1466[$ribbonName].HideBanner()
		End if 
		
	: ($evt=On Unload:K2:2)
		Form:C1466[$ribbonName].HideBanner()
End case 