C_TEXT:C284($detail_form)
$evt:=Form event code:C388

Case of 
	: ($evt=On Selection Change:K2:29)
		
		If (Form:C1466.itemPosition>0)
			If (Form:C1466.details=Null:C1517)
				Form:C1466.details:=New object:C1471()
			End if 
			Form:C1466.details.entity:=Form:C1466.items[Form:C1466.itemPosition-1]
			Form:C1466.itemID:=Form:C1466.details.entity.ID
			If (Form:C1466.details_form#"")
				$detail_form:=Form:C1466.details_form
				If (Form:C1466.laoded_details_form#$detail_form)
					OBJECT SET SUBFORM:C1138(*;"details_sf";$detail_form)
					Form:C1466.laoded_details_form:=$detail_form
				Else 
					Form:C1466.details:=Form:C1466.details
				End if 
			Else 
				OBJECT SET SUBFORM:C1138(*;"details_sf";New object:C1471)
			End if 
		Else 
			Form:C1466.laoded_details_form:=""
		End if 
		
End case 