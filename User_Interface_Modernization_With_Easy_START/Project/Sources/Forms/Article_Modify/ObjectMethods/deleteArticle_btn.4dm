$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"default_template"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Type("rectangle")
		Form:C1466[$btn_name].FontStyle(AJUI_btn_default;"Bold")
		Form:C1466[$btn_name].FontSize(AJUI_btn_default;28)
		Form:C1466[$btn_name].Composition("picture")
		Form:C1466[$btn_name].PicturePath(AJUI_btn_default;"Images/icons/trash.svg")
		Form:C1466[$btn_name].PicturePath(AJUI_btn_hover;"Images/icons/trash_hover.svg")
		Form:C1466[$btn_name].PicturePath(AJUI_btn_active;"Images/icons/trash_hover.svg")
		Form:C1466[$btn_name].PictureScale(AJUI_btn_default;65)
		Form:C1466[$btn_name].BGColor(AJUI_btn_default;"#B0413E")
		Form:C1466[$btn_name].BGColor(AJUI_btn_hover;"#B0413E")
		Form:C1466[$btn_name].BGColor(AJUI_btn_active;"#A03C39")
		Form:C1466[$btn_name].ColorToReplace(AJUI_btn_default;"black")
		Form:C1466[$btn_name].ReplacingColor(AJUI_btn_default;"white")
		Form:C1466[$btn_name].OnClick("PS_removeArticle_cb")
End case 

Form:C1466[$btn_name].Draw()