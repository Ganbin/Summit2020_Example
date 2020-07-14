$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.modules:=New collection:C1472
		Form:C1466.modules.push(New object:C1471("name";"Company"))
		Form:C1466.modules.push(New object:C1471("name";"Employee"))
		Form:C1466.modules.push(New object:C1471("name";"Invoice"))
		  //Form.modules.push(New object("name";"Product"))
		
		Form:C1466.laoded_details_form:=""
		
		  // Main progress bar
		Form:C1466.myPB:=New AJUI_ProgressBar 
		Form:C1466.myPB.PBPictFormObjName("PB")
		Form:C1466.myPB.PBBorderSize(0)
		Form:C1466.myPB.PBBarColor("#191970")
		Form:C1466.myPB.PBFontColor("silver")
		Form:C1466.myPB.PBAreaHeight(39)
		Form:C1466.myPB.PBAreaWidth(864)
		Form:C1466.myPB.PBCornerRadius(0)
		Form:C1466.myPB.PBBarOffset(0)
		Form:C1466.myPB.svgArea.positionX:=0
		Form:C1466.myPB.svgArea.positionY:=0
		
		
End case 
