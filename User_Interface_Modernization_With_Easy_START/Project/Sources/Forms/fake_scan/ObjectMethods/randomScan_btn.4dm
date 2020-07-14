$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"default_template"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Type("rectangle")
		Form:C1466[$btn_name].Label(AJUI_btn_default;Get localized string:C991("main.general.scanRandomArticle"))
		Form:C1466[$btn_name].FontStyle(AJUI_btn_default;"Bold")
		Form:C1466[$btn_name].FontSize(AJUI_btn_default;28)
		Form:C1466[$btn_name].OnClick("PS_ScanRandomArticle")
End case 

Form:C1466[$btn_name].Draw()