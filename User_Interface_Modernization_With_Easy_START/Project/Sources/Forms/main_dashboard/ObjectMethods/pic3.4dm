$evt:=Form event code:C388

Case of 
	: ($evt=On Mouse Enter:K2:33)
		OBJECT GET COORDINATES:C663(*;"pic3";$l;$t;$r;$b)
		Form:C1466.tip.TipPosition("left-middle")
		Form:C1466.tip.TargetCoordinates($l+40;$t+(($b-$t)/2))
		Form:C1466.tip.TextLabel("Percent of the month sale during this year")
		Form:C1466.tip.Show()
	: ($evt=On Mouse Leave:K2:34)
		Form:C1466.tip.Hide()
		
End case 
