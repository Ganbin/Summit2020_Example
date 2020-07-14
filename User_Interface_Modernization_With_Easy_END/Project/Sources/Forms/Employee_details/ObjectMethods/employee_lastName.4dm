AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.lastName"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TextLabel(Get localized string:C991("business.employee.enterLastName"))
		Form:C1466.tip.TargetName("employee_lastName")
		Form:C1466.tip.Show()
		
End case 