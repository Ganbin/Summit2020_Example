//%attributes = {"shared":true}

If (String:C10(Form:C1466.entity.more_infos.phone)#"")
	Form:C1466.fullBanner:=New AJUI_Banner 
	Form:C1466.fullBanner.BannerType("window")
	Form:C1466.fullBanner.BannerName("fullBanner")
	Form:C1466.fullBanner.Message(Form:C1466.entity.more_infos.phone)
	
	Form:C1466.fullBanner.BannerHeight(200)
	Form:C1466.fullBanner.BannerWidth(700)
	Form:C1466.fullBanner.TextFontSize(64)
	
	Form:C1466.fullBanner.DrawBanner()
End if 