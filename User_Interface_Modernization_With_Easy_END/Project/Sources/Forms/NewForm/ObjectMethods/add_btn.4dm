$widgetName:=OBJECT Get name:C1087(Object current:K67:2)
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466[$widgetName]:=New AJUI_Button (New object:C1471("templateName";"NewForm_default_pict"))
		Form:C1466[$widgetName].Name($widgetName)
End case 
Form:C1466[$widgetName].Draw()