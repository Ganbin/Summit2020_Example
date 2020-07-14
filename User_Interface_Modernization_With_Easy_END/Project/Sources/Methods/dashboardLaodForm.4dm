//%attributes = {}
C_OBJECT:C1216($data)

$data:=Form:C1466.data[Form:C1466.current]

If (Form:C1466.current>=0) & (Form:C1466.current<Form:C1466.data.length)
	
	OBJECT SET TITLE:C194(*;"month_txt";$data.month)
	
	Form:C1466.indicator1.CPBPercentValue($data.bestSeller.percent)
	Form:C1466.indicator1.CPBTitle("$value_l %")
	Form:C1466.indicator1.CPBSubtitle($data.bestSeller.product)
	Form:C1466.indicator1.LaunchCircularProgressBar()
	
	Form:C1466.indicator2.CPBPercentValue($data.bestEmployee.percent)
	Form:C1466.indicator2.CPBTitle("$value_r %")
	Form:C1466.indicator2.CPBSubtitle($data.bestEmployee.name)
	Form:C1466.indicator2.LaunchCircularProgressBar()
	
	Form:C1466.indicator3.CPBPercentValue($data.monthPercent)
	Form:C1466.indicator3.CPBTitle("$value_l %")
	Form:C1466.indicator3.CPBSubtitle($data.month)
	Form:C1466.indicator3.LaunchCircularProgressBar()
End if 

If (Form:C1466.current=0)
	OBJECT SET ENABLED:C1123(*;"previous_btn";False:C215)
Else 
	OBJECT SET ENABLED:C1123(*;"previous_btn";True:C214)
End if 

If (Form:C1466.current=4)
	OBJECT SET ENABLED:C1123(*;"next_btn";False:C215)
Else 
	OBJECT SET ENABLED:C1123(*;"next_btn";True:C214)
End if 