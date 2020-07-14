AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.more_infos.phone"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		  //CALL FORM(Current form window;"AJUI_Tip_hide";Form.warningTip)
		Form:C1466.warningTip.Hide()
		Form:C1466.tip.TextLabel("Enter the Phone")  // use xliff
		Form:C1466.tip.TargetName("employee_phone")
		Form:C1466.tip.Show()
		
	: ($evt=On Data Change:K2:15)
		If (Form:C1466.entity.more_infos.phone=Null:C1517)
			OBJECT SET VISIBLE:C603(*;"zoomPhone_btn";False:C215)
		Else 
			OBJECT SET VISIBLE:C603(*;"zoomPhone_btn";True:C214)
		End if 
End case 