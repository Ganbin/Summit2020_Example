//%attributes = {"shared":true}
C_OBJECT:C1216($article)

  // Scan a random article and send it to the basket
ALL RECORDS:C47([Product:3])

  // Get random article in the range
If (Form:C1466.from=Null:C1517)
	Form:C1466.nbArticle:=30  // will be x+1
	Form:C1466.from:=(Random:C100%((45-Form:C1466.nbArticle)-1+1))+1
End if 

GOTO SELECTED RECORD:C245([Product:3];(Random:C100%((Form:C1466.from+Form:C1466.nbArticle)-Form:C1466.from+1))+Form:C1466.from)

$article:=ds:C1482.Product.get([Product:3]ID:1).toObject()

PLAY:C290(Folder separator:K24:12+"Resources"+Folder separator:K24:12+"scan.m4a")
CALL FORM:C1391(PS_current.ps_mainWindow_ref;"PS_sendArticleToMainWin";$article)

