//%attributes = {}
C_BOOLEAN:C305($1)

If (Count parameters:C259=0)
	CALL WORKER:C1389("main_windows";Current method name:C684;True:C214)
Else 
	C_OBJECT:C1216(PS_current)
	If (PS_current=Null:C1517)
		PS_current:=New object:C1471
	End if 
	$ref_win:=Open form window:C675("Pay_Station";Plain form window:K39:10)
	PS_current.ps_mainWindow_ref:=$ref_win
	DIALOG:C40("Pay_Station";*)
	If (PS_current.fake_scanOpen=Null:C1517)
		$ref_win:=Open form window:C675("fake_scan";Plain form window:K39:10;On the left:K39:2;At the top:K39:5)
		DIALOG:C40("fake_scan";*)
	End if 
End if 