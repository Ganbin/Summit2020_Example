//%attributes = {}
C_OBJECT:C1216($1;$params)
C_OBJECT:C1216($invoice)

$params:=$1
$ref_win:=$params.ref_win
$invoice:=ds:C1482.Invoice.get($params.ID_Invoice)


$steps:=100

For ($i;1;$steps)
	$random:=(Random:C100%(10-2))+1
	
	Case of 
		: ($random<5)
			$delay:=1
		: ($random=5)
			$delay:=10
		: ($random=6)
			$delay:=20
		: ($random=7)
			$delay:=15
		: ($random=8)
			$delay:=5
		Else 
			$delay:=1
	End case 
	
	
	DELAY PROCESS:C323(Current process:C322;$delay)
	
	CALL FORM:C1391($ref_win;"Invoice_Process_cb";New object:C1471("success";False:C215;"percent";($i/$steps)*100))
End for 

If ($invoice.more_infos=Null:C1517)
	$invoice.more_infos:=New object:C1471
End if 
$invoice.more_infos.shipped:=True:C214
$invoice.save()

CALL FORM:C1391($ref_win;"Invoice_Process_cb";New object:C1471("success";True:C214))