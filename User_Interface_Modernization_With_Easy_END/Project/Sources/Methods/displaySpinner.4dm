//%attributes = {}
C_TEXT:C284($1;$type)
$type:=$1

If (Form:C1466.spinner=Null:C1517)
	Form:C1466.spinner:=New AJUI_Banner 
End if 

Form:C1466.spinner.BannerType($type)
Form:C1466.spinner.BannerName($type)
Form:C1466.spinner.Message("Big operation in progress")
Form:C1466.spinner.TextFontSize(48)
Form:C1466.spinner.BannerHeight(200)
Form:C1466.spinner.BannerWidth(750)
Form:C1466.spinner.SpinnerScale(1)
Form:C1466.spinner.DrawBanner()