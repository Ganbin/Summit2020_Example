AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.firstName"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TextLabel("Enter the Birth Date")
		Form:C1466.tip.TargetName("employee_birthDate")
		Form:C1466.tip.Show()
		
End case 