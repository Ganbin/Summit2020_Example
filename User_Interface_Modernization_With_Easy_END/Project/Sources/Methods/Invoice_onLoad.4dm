//%attributes = {}
$shipped:=False:C215
If (Form:C1466.entity.more_infos#Null:C1517)
	If (Form:C1466.entity.more_infos.shipped#Null:C1517)
		If (Form:C1466.entity.more_infos.shipped=True:C214)
			$shipped:=True:C214
		End if 
	End if 
End if 
CALL FORM:C1391(Current form window:C827;"displayCornerRibbon";"Shipped";$shipped;"shipped")  // use xliff
OBJECT SET VISIBLE:C603(*;"@_btn";Not:C34($shipped))
OBJECT SET ENABLED:C1123(*;"@_btn";True:C214)

If (Form:C1466.entity.employee#Null:C1517)
	Form:C1466.employeeName:=Form:C1466.entity.employee.firstName+" "+Form:C1466.entity.employee.lastName
End if 

Form:C1466.tip:=New AJUI_Tip 
Form:C1466.tip.TargetName("add_line_btn")
Form:C1466.tip.TipName("addLineTip")
Form:C1466.tip.TargetOffset(-7)
Form:C1466.tip.TipPosition("right-top")
Form:C1466.tip.TextFontSize(20)
Form:C1466.tip.TextFontName("Verdana")
Form:C1466.tip.TextFontColor("#FFFFFF")
Form:C1466.tip.TextOpacity(100)
Form:C1466.tip.TargetMargin(5)
Form:C1466.tip.SubformName("Invoice_Lines_add")
Form:C1466.tip.CornerRadius(0)
Form:C1466.tip.Padding(10)
Form:C1466.tip.BorderSize(3)
Form:C1466.tip.BorderColor("#191970")
Form:C1466.tip.BackgroundColor("#FFFFFF")
Form:C1466.tip.BackgroundOpacity(100)
Form:C1466.tip.ArrowWidth(15)
Form:C1466.tip.ArrowHeight(10)
Form:C1466.tip.ArrowPosition("top")
Form:C1466.tip.ArrowOffset(10)