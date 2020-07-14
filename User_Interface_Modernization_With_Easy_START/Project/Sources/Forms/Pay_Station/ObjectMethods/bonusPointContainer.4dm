$evt:=Form event code:C388

Case of 
	: ($evt=On Mouse Enter:K2:33)
		$bonusTxt:="<span style=\"font-size:32px\">Bonus Program</span><br/><br/>"
		$bonusTxt:=$bonusTxt+"With the bonus program, you can collect points. You can get specials offers that are renewed monthly to provide you the best opportunities at the best price."
		
		Form:C1466.bonusTip.TextLabel($bonusTxt)
		
		Form:C1466.bonusTip.Show()
	: ($evt=On Mouse Leave:K2:34)
		Form:C1466.bonusTip.Hide()
		
End case 
