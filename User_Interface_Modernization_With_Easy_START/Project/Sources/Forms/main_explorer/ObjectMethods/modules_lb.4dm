C_POINTER:C301($nil)
$evt:=Form event code:C388

Case of 
	: ($evt=On Selection Change:K2:29)
		
		LISTBOX DELETE COLUMN:C830(*;"items_lb";1;77)
		Form:C1466.details_form:=""
		Form:C1466.itemID:=""
		OBJECT SET SUBFORM:C1138(*;"details_sf";New object:C1471)
		CALL FORM:C1391(Current form window:C827;"displayCornerRibbon";"";False:C215)
		
		If (Form:C1466.selectedModule#Null:C1517)
			
			Case of 
				: (Form:C1466.selectedModule.name="Company")
					Form:C1466.items:=ds:C1482.Company.all().orderBy("name")
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col1";"This.name";Is text:K8:3;"item_head_1";$nil)
					Form:C1466.details_form:="Company_details"
					
				: (Form:C1466.selectedModule.name="Employee")
					Form:C1466.items:=ds:C1482.Employee.all().orderBy("lastName")
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col1";"This.lastName+\" \"+This.firstName";Is text:K8:3;"item_head_1";$nil)
					Form:C1466.details_form:="Employee_details"
					
				: (Form:C1466.selectedModule.name="Product")
					Form:C1466.items:=ds:C1482.Product.all().orderBy("name")
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col1";"This.name";Is text:K8:3;"item_head_1";$nil)
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col2";"This.price";Is real:K8:4;"item_head_2";$nil)
					LISTBOX SET COLUMN WIDTH:C833(*;"item_col1";150)
					LISTBOX SET COLUMN WIDTH:C833(*;"item_col2";85)
					OBJECT SET FORMAT:C236(*;"item_col2";"###'###'###'##0.00 $")
					
				: (Form:C1466.selectedModule.name="Invoice")
					Form:C1466.items:=ds:C1482.Invoice.all().orderBy("HRID")
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col1";"This.HRID";Is text:K8:3;"item_head_1";$nil)
					LISTBOX INSERT COLUMN FORMULA:C970(*;"items_lb";777;"item_col2";"This.priceTotal";Is real:K8:4;"item_head_2";$nil)
					LISTBOX SET COLUMN WIDTH:C833(*;"item_col1";100)
					LISTBOX SET COLUMN WIDTH:C833(*;"item_col2";105)
					OBJECT SET FORMAT:C236(*;"item_col2";"###'###'###'##0.00 $")
					Form:C1466.details_form:="Invoice_details"
			End case 
			OBJECT SET ENTERABLE:C238(*;"@col@";False:C215)
		End if 
		
		Form:C1466.laoded_details_form:=""
End case 
