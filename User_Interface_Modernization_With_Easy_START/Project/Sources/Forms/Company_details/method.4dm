$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1) | ($evt=On Bound Variable Change:K2:52)
		If (Form:C1466.entity.more_infos=Null:C1517)
			Form:C1466.entity.more_infos:=New object:C1471
		End if 
		
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TipName("companyTip")
		Form:C1466.tip.TipPosition("bottom-left")
		Form:C1466.tip.TextFontSize(20)
		Form:C1466.tip.TextFontName("Verdana")
		Form:C1466.tip.TextFontColor("#FFFFFF")
		Form:C1466.tip.TextOpacity(100)
		Form:C1466.tip.TargetMargin(10)
		Form:C1466.tip.CornerRadius(0)
		Form:C1466.tip.Padding(10)
		Form:C1466.tip.BorderSize(0)
		Form:C1466.tip.BorderColor("#808080")
		Form:C1466.tip.BackgroundColor("#191970")
		Form:C1466.tip.BackgroundOpacity(100)
		
End case 
