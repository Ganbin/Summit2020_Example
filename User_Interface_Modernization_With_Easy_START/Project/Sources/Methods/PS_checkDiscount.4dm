//%attributes = {}



$discountPercent:=(Form:C1466.totalPrice/Form:C1466.discountFrom)*100
If ($discountPercent>100)
	Form:C1466.discountFrom:=Form:C1466.discountFrom+500
	Form:C1466.totalSaved:=Form:C1466.totalSaved+5
	Form:C1466.totalPrice:=Form:C1466.totalPrice-5
	Form:C1466.discountReachedTip.Show()
End if 
$discountPercent:=(Form:C1466.totalPrice/Form:C1466.discountFrom)*100

Form:C1466.discount_PB.CPBPercentValue($discountPercent)
Form:C1466.discount_PB.LaunchCircularProgressBar()