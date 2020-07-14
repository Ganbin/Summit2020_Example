//%attributes = {}
C_OBJECT:C1216($1;$article)
C_LONGINT:C283($2;$qty)
C_REAL:C285($PriceBefore;$discountBefore)

$article:=$1
$qty:=$2

$article.qty:=$article.qty+$qty

If ($article.qty<0)
	Form:C1466.totalPrice:=Form:C1466.totalPrice-$article.totalPrice
	If ($article.discountPercent#Null:C1517)
		Form:C1466.totalSaved:=Form:C1466.totalSaved-$article.discount
	End if 
	$index:=Form:C1466.articles.findIndex("PS_findArticleByUUID";$article.ID)
	If ($index>=0)
		Form:C1466.articles.remove($index;1)
	End if 
	Form:C1466.articleTip.Hide()
Else 
	$PriceBefore:=$article.totalPrice
	$article.totalPrice:=$article.price*$article.qty
	If ($article.discountPercent#Null:C1517)
		$discountBefore:=$article.discount
		$article.discount:=$article.totalPrice*$article.discountPercent
		$article.totalPrice:=$article.totalPrice-$article.discount
		Form:C1466.totalSaved:=Form:C1466.totalSaved+($article.discount-$discountBefore)
	End if 
	Form:C1466.totalPrice:=Form:C1466.totalPrice+($article.totalPrice-$PriceBefore)
End if 

If (Form:C1466.totalPrice=0)
	Form:C1466.pay_cash_btn.Enable(False:C215)
	Form:C1466.pay_card_btn.Enable(False:C215)
Else 
	Form:C1466.pay_cash_btn.Enable(True:C214)
	Form:C1466.pay_card_btn.Enable(True:C214)
End if 

Form:C1466.articles:=Form:C1466.articles

PS_checkDiscount 