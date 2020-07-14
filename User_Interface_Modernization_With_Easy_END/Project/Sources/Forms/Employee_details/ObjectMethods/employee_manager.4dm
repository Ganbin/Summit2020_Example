$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		
		If (Form:C1466.entity.manager#Null:C1517)
			Form:C1466.managerName:=Form:C1466.entity.manager.firstName+" "+Form:C1466.entity.manager.lastName
		Else 
			Form:C1466.managerName:=""
		End if 
		
End case 

AJUI_FloatingLabel_main (New object:C1471("formPath";"managerName"))