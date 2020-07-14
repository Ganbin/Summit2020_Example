//%attributes = {}
C_TEXT:C284($1;$module)
C_POINTER:C301($nil)

$module:=$1

If (Form:C1466.definition[$module]#Null:C1517)
	
	Form:C1466.currentModule:=Form:C1466.definition[$module]
	Form:C1466.items:=Form:C1466.currentModule.dataClass.all()
	
	LISTBOX DELETE COLUMN:C830(*;"items_lb";1;777)
	LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col1";Form:C1466.currentModule.listColumnFormula;Is text:K8:3;"item_head_1";$nil)
	
	OBJECT SET SUBFORM:C1138(*;"details_sf";New object:C1471)
	Form:C1466.details_panel_loaded:=""
	
End if 