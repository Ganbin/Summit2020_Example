C_TEXT:C284($current_panel)
$evt:=Form event code:C388

Case of 
	: ($evt=On Selection Change:K2:29)
		
		If (Form:C1466.currentModule#Null:C1517)
			If (Form:C1466.currentModule.details_panel#Null:C1517)
				If (Form:C1466.currentModule.details_panel#Form:C1466.details_panel_loaded)
					$current_panel:=Form:C1466.currentModule.details_panel
					OBJECT SET SUBFORM:C1138(*;"details_sf";$current_panel)
					Form:C1466.details_panel_loaded:=$current_panel
				End if 
				Form:C1466.details:=Form:C1466.details
			End if 
		End if 
End case 
