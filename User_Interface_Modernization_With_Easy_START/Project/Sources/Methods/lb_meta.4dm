//%attributes = {}
C_OBJECT:C1216($0;$meta)

$meta:=New object:C1471
If (Form:C1466.selectedModule.name=This:C1470.name)
	$meta.fill:="#191970"
	$meta.stroke:="white"
End if 

If (Form:C1466.itemID=This:C1470.ID)
	$meta.fill:="#191970"
	$meta.stroke:="white"
End if 

$0:=$meta