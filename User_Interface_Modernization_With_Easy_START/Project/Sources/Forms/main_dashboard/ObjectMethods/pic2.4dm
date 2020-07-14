$evt:=Form event code:C388

Case of 
	: ($evt=On Mouse Enter:K2:33)
		OBJECT GET COORDINATES:C663(*;"pic2";$l;$t;$r;$b)
		Form:C1466.tip.TipPosition("top-center")
		Form:C1466.tip.TargetCoordinates($l+(($r-$l)/2);$t+40)
		Form:C1466.tip.TextLabel("Employee that have generated the most profit for this month")
		Form:C1466.tip.Show()
		
	: ($evt=On Mouse Leave:K2:34)
		Form:C1466.tip.Hide()
		
End case 
