C_LONGINT:C283($x1_l;$x2_l;$y1_l;$y2_l)
$evt:=Form event code:C388

Case of 
	: ($evt=On Double Clicked:K2:5) | (($evt=On Clicked:K2:4) & (Right click:C712))
		If (Form:C1466.currentArticlePos>0)
			GET MOUSE:C468($mouseX_l;$mouseY_l;$mouseZ_l)
			LISTBOX GET CELL POSITION:C971(*;"articles_lb";$mouseX_l;$mouseY_l;$col_l;$row_l)  // four parameters syntax
			LISTBOX GET CELL COORDINATES:C1330(*;"articles_lb";$col_l;$row_l;$x1_l;$y1_l;$x2_l;$y2_l)
			OBJECT GET COORDINATES:C663(*;"articles_lb";$lb_l;$lb_t;$lb_r;$lb_b)
			  // Show tooltip to change the qty or to remove the article
			Form:C1466.tip_sf_details.article:=Form:C1466.articles[Form:C1466.currentArticlePos-1]
			Form:C1466.articleTip.TargetCoordinates($lb_l;$y1_l;$lb_r;$y2_l)
			Form:C1466.articleTip.Show()
		End if 
		
	: ($evt=On Clicked:K2:4)
		Form:C1466.articleTip.Hide()
End case 
