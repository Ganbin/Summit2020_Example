//%attributes = {}

C_OBJECT:C1216($1;$article)
C_COLLECTION:C1488($result)

$article:=$1

  // Search an existing product
$result:=Form:C1466.articles.query("name = :1";$article.name)

If ($result.length>0)
	
	$article:=$result[0]
	PS_updateArticle ($article;1)
	
Else 
	  // Add the article
	$article.qty:=1
	$article.totalPrice:=$article.price
	
	If (((Random:C100%(6-1+1))+1)%6=0)
		  // Random discount
		$article.discountPercent:=(((Random:C100%(30-1+1))+1)/100)
		$article.discount:=$article.totalPrice*$article.discountPercent
		$article.totalPrice:=$article.totalPrice-$article.discount
		Form:C1466.totalSaved:=Form:C1466.totalSaved+$article.discount
	End if 
	
	Form:C1466.totalPrice:=Form:C1466.totalPrice+$article.totalPrice
	
	Form:C1466.articles.unshift($article)
	
	If (Form:C1466.totalPrice=0)
		Form:C1466.pay_cash_btn.Enable(False:C215)
		Form:C1466.pay_card_btn.Enable(False:C215)
	Else 
		Form:C1466.pay_cash_btn.Enable(True:C214)
		Form:C1466.pay_card_btn.Enable(True:C214)
	End if 
	
	PS_checkDiscount 
	
End if 


OBJECT SET SCROLL POSITION:C906(*;"articles_lb";1)
Form:C1466.articles:=Form:C1466.articles

Form:C1466.articleTip.Hide()