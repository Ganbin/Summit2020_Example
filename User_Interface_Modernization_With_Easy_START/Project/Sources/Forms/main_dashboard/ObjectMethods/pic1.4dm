$evt:=Form event code:C388

Case of 
	: ($evt=On Mouse Enter:K2:33)
		OBJECT GET COORDINATES:C663(*;"pic1";$l;$t;$r;$b)
		Form:C1466.tip.TipPosition("right-middle")
		Form:C1466.tip.TargetCoordinates($r-40;$t+(($b-$t)/2))
		Form:C1466.tip.TextLabel("Product that have generated the most profit for this month")
		Form:C1466.tip.Show()
		
	: ($evt=On Mouse Leave:K2:34)
		Form:C1466.tip.Hide()
		
End case 
