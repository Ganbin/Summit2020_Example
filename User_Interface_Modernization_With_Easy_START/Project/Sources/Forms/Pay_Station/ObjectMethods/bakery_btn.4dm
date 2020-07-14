$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"lang_btn"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Type("rectangle")
		Form:C1466[$btn_name].Label(AJUI_btn_default;Get localized string:C991("main.groups.bakery"))
		Form:C1466[$btn_name].Composition("composite")
		Form:C1466[$btn_name].PicturePath(AJUI_btn_default;"Images/icons/bakery.png")
		Form:C1466[$btn_name].CompPicturePosition(AJUI_btn_default;"top")
		Form:C1466[$btn_name].CompPictSizeAllocation(AJUI_btn_default;100)
		Form:C1466[$btn_name].PictureScale(AJUI_btn_default;70)
		  //Form[$btn_name].OnClick("PS_ChooseLanguage_cb";New object("lang";"en"))
	: ($evt=On Clicked:K2:4)
		Form:C1466.articleTip.Hide()
End case 

Form:C1466[$btn_name].Draw()