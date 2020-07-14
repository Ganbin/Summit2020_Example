
$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"btn_explorer"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Label(AJUI_btn_default;"Ship Invoice")
		
	: ($evt=On Mouse Up:K2:58)
		
		$params:=New object:C1471("ref_win";Current form window:C827;"ID_Invoice";Form:C1466.entity.ID)
		OBJECT SET ENABLED:C1123(*;"@_btn";False:C215)
		
		CALL WORKER:C1389("Invoice_Process";"Invoice_Process";$params)
		
End case 

Form:C1466[$btn_name].Draw()