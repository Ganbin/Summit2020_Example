
$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"btn_explorer"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Label(AJUI_btn_default;"Save")
		
	: ($evt=On Mouse Up:K2:58)
		C_OBJECT:C1216($status)
		
		If (Form:C1466.details.entity#Null:C1517)
			$status:=Form:C1466.details.entity.save()
			If ($status.success=False:C215)
				ALERT:C41("An error occurs during the save!")  // use xliff
			Else 
				displayBanner ("Entity Saved!")  // use xliff
			End if 
		End if 
		
		
End case 

Form:C1466[$btn_name].Draw()