//%attributes = {}
C_OBJECT:C1216($1;$params)
C_BOOLEAN:C305($2)

$params:=$1

If (Form:C1466.myPB#Null:C1517)
	If ($params.success=True:C214)
		OBJECT SET VISIBLE:C603(*;"PB";False:C215)
		Form:C1466.myPB.PBPercentValue(0)
		Form:C1466.myPB.LaunchProgressBar()
		Form:C1466.details.entity.reload()
		EXECUTE METHOD IN SUBFORM:C1085("details_sf";"Invoice_onLoad")
	Else 
		OBJECT SET VISIBLE:C603(*;"PB";True:C214)
		Form:C1466.myPB.PBTitle("Processing Invoice - $value_l %")
		Form:C1466.myPB.PBPercentValue($params.percent)
		Form:C1466.myPB.LaunchProgressBar()
	End if 
End if 