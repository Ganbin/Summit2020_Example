$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1) | ($evt=On Bound Variable Change:K2:52)
		If (Form:C1466.entity.more_infos=Null:C1517)
			Form:C1466.entity.more_infos:=New object:C1471
		End if 
		
		$isFired:=False:C215
		If (Form:C1466.entity.more_infos.fired#Null:C1517)
			If (Form:C1466.entity.more_infos.fired=True:C214)
				$isFired:=True:C214
			End if 
		End if 
		
		Form:C1466.isFired:=$isFired
		
		CALL FORM:C1391(Current form window:C827;"displayCornerRibbon";"Fired";$isFired)
		
		If (Form:C1466.entity.more_infos.phone=Null:C1517)
			OBJECT SET VISIBLE:C603(*;"zoomPhone_btn";False:C215)
		Else 
			OBJECT SET VISIBLE:C603(*;"zoomPhone_btn";True:C214)
		End if 
		
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TipName("employeeTip")
		Form:C1466.tip.TipPosition("bottom-left")
		Form:C1466.tip.BackgroundOpacity(100)
		Form:C1466.tip.TextFontSize(20)
		Form:C1466.tip.TextFontName("Verdana")
		Form:C1466.tip.TextFontColor("#FFFFFF")
		Form:C1466.tip.TextOpacity(100)
		Form:C1466.tip.TargetMargin(10)
		Form:C1466.tip.CornerRadius(0)
		Form:C1466.tip.Padding(10)
		Form:C1466.tip.BorderSize(0)
		Form:C1466.tip.BorderColor("#808080")
		Form:C1466.tip.BackgroundColor("#191970")
		Form:C1466.tip.BackgroundOpacity(100)
		
		
		Form:C1466.warningTip:=New AJUI_Tip 
		Form:C1466.warningTip.TipName("warningTip")
		Form:C1466.warningTip.TipPosition("bottom-left")
		Form:C1466.warningTip.BackgroundOpacity(100)
		Form:C1466.warningTip.TextFontSize(20)
		Form:C1466.warningTip.TextFontName("Verdana")
		Form:C1466.warningTip.TextFontColor("#FFFFFF")
		Form:C1466.warningTip.TextOpacity(100)
		Form:C1466.warningTip.TargetMargin(10)
		Form:C1466.warningTip.CornerRadius(0)
		Form:C1466.warningTip.Padding(10)
		Form:C1466.warningTip.BorderSize(0)
		Form:C1466.warningTip.BorderColor("#808080")
		Form:C1466.warningTip.BackgroundColor("#bd1717")
		Form:C1466.warningTip.BackgroundOpacity(100)
		Form:C1466.warningTip.BlinkNumber(3)
		Form:C1466.warningTip.BlinkDuration(600)
		Form:C1466.warningTip.BlinkOn(50)
		Form:C1466.warningTip.TextLabel("Employee Phone Is Mandatory")
		Form:C1466.warningTip.TargetName("employee_phone")
		
		
		
	: ($evt=On Timer:K2:25)
		SET TIMER:C645(0)
		
		Case of 
			: (Form:C1466.timerCase="spinner1")
				hideSpinner 
				CALL FORM:C1391(Current form window:C827;"displaySpinner";"windowSpinner")
				Form:C1466.timerCase:="stopSpinner"
				SET TIMER:C645(60*6)
			: (Form:C1466.timerCase="stopSpinner")
				CALL FORM:C1391(Current form window:C827;"hideSpinner")
				
		End case 
		
End case 
