$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"lang_btn"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Label(AJUI_btn_default;"Deutsch")
		Form:C1466[$btn_name].PicturePath(AJUI_btn_default;"Images/flags/de.svg")
		Form:C1466[$btn_name].OnClick("PS_ChooseLanguage_cb";New object:C1471("lang";"de"))
End case 

Form:C1466[$btn_name].Draw()