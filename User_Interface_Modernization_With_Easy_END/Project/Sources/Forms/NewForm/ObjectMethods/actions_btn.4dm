$widgetName:=OBJECT Get name:C1087(Object current:K67:2)
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466[$widgetName]:=New AJUI_Button (New object:C1471("templateName";"NewForm_default"))
		Form:C1466[$widgetName].Name($widgetName)
		Form:C1466[$widgetName].Label(AJUI_btn_default;"Actions")
		
		Form:C1466[$widgetName].FABIsMainButton(True:C214)
		Form:C1466[$widgetName].FABIsAnimated(True:C214)
		Form:C1466[$widgetName].FABAdd("add_btn")
		Form:C1466[$widgetName].FABAdd("del_btn")
		Form:C1466[$widgetName].FABAdd("edit_btn")
		Form:C1466[$widgetName].FABMainPosition("bottom-left")
		Form:C1466[$widgetName].FABRadius(100)
		
End case 
Form:C1466[$widgetName].Draw()