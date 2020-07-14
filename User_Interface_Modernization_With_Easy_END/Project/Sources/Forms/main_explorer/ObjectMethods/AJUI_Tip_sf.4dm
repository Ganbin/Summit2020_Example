$evt:=Form event code:C388

Case of 
	: ($evt=On Losing Focus:K2:8)
		If (Form:C1466.details.tip#Null:C1517)
			If (Form:C1466.details.tip.TipName()="addLineTip")
				Form:C1466.details.tip.Hide()
			End if 
		End if 
End case 
