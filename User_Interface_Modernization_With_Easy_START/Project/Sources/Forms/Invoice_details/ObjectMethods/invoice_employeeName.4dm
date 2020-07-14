
$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		If (Form:C1466.entity.employee#Null:C1517)
			Form:C1466.employeeName:=Form:C1466.entity.employee.firstName+" "+Form:C1466.entity.employee.lastName
		End if 
End case 

AJUI_FloatingLabel_main (New object:C1471("formPath";"employeeName"))

