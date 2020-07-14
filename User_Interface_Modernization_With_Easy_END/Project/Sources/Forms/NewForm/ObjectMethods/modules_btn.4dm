$widgetName:=OBJECT Get name:C1087(Object current:K67:2)
Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466[$widgetName]:=New AJUI_BreadCrumb (New object:C1471("templateName";"modules_btn"))
		Form:C1466[$widgetName].Name($widgetName)
		
		$callback_params:=New object:C1471("onClickCB";"Modules_btn_cb";"onClickCBParams";New object:C1471("moduleName";"Company"))
		Form:C1466[$widgetName].UpdateSection("company";OB Copy:C1225($callback_params))
		$callback_params.onClickCBParams.moduleName:="Employee"
		Form:C1466[$widgetName].UpdateSection("employee";OB Copy:C1225($callback_params))
		$callback_params.onClickCBParams.moduleName:="Product"
		Form:C1466[$widgetName].UpdateSection("product";OB Copy:C1225($callback_params))
		$callback_params.onClickCBParams.moduleName:="Invoice"
		Form:C1466[$widgetName].UpdateSection("invoice";OB Copy:C1225($callback_params))
		
		
End case 
Form:C1466[$widgetName].Draw()