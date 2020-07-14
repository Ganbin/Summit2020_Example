AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.firstName"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TextLabel(Get localized string:C991("business.employee.enterFirstName"))
		Form:C1466.tip.TargetName("employee_firstName")
		Form:C1466.tip.Show()
		
End case 
