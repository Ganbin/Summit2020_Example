$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"default_template"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Type("circle")
		Form:C1466[$btn_name].Composition("picture")
		Form:C1466[$btn_name].CornerRadius(AJUI_btn_default;0)
		Form:C1466[$btn_name].CompPictSizeAllocation(AJUI_btn_default;50)
		Form:C1466[$btn_name].PicturePath(AJUI_btn_default;"Images/flags/languages.svg")
		Form:C1466[$btn_name].PictureWidth(AJUI_btn_default;24)
		Form:C1466[$btn_name].PictureHeight(AJUI_btn_default;24)
		Form:C1466[$btn_name].FontSize(AJUI_btn_default;11)
		Form:C1466[$btn_name].CompTextAlign(AJUI_btn_default;"left")
		Form:C1466[$btn_name].FontStyle(AJUI_btn_default;"bold")
		Form:C1466[$btn_name].OnClick("PS_ChangeLanguage_cb")
		
		Form:C1466[$btn_name].ColorToReplace(AJUI_btn_default;"black")
		Form:C1466[$btn_name].ReplacingColor(AJUI_btn_default;"#21897e")
	: ($evt=On Clicked:K2:4)
		Form:C1466.articleTip.Hide()
End case 

Form:C1466[$btn_name].Draw()