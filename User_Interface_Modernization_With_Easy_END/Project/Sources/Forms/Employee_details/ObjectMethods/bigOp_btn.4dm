
$evt:=Form event code:C388
$btn_name:=OBJECT Get name:C1087(Object current:K67:2)

Case of 
	: ($evt=On Load:K2:1)
		
		Form:C1466[$btn_name]:=New AJUI_Button (New object:C1471("templateName";"btn_explorer"))
		Form:C1466[$btn_name].Name($btn_name)
		Form:C1466[$btn_name].Label(AJUI_btn_default;"Do Big Operation")
		
	: ($evt=On Mouse Up:K2:58)
		
		$show_warning:=True:C214
		If (Form:C1466.entity.more_infos.phone#Null:C1517)
			If (Form:C1466.entity.more_infos.phone#"")
				
				displaySpinner ("spinner")
				  //CALL FORM(Current form window;"displaySpinner";"spinner")
				Form:C1466.timerCase:="spinner1"
				SET TIMER:C645(60*3)
				$show_warning:=False:C215
			End if 
		End if 
		
		If ($show_warning)
			Form:C1466.tip.Hide()
			Form:C1466.warningTip.Show()
		End if 
		
		
		
End case 

Form:C1466[$btn_name].Draw()