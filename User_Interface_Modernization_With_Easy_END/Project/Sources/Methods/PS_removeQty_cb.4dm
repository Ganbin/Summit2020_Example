//%attributes = {"shared":true}
If (Form:C1466.article.qty<=2)  // We test <=2 because it will be decreased afterward
	Form:C1466.removeQty_btn.Enable(False:C215)
End if 

If (Form:C1466.article.qty>1)
	CALL FORM:C1391(Current form window:C827;"PS_updateArticle";Form:C1466.article;-1)
End if 