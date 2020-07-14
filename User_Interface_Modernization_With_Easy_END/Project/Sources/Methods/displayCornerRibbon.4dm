//%attributes = {}
C_TEXT:C284($1;$message)
C_BOOLEAN:C305($2;$display)
C_TEXT:C284($3;$case)

$message:=$1
$display:=$2

If (Count parameters:C259=3)
	$case:=$3
Else 
	$case:="fired"
End if 

If (Form:C1466.ribbon=Null:C1517)
	Form:C1466.ribbon:=New AJUI_Banner 
	Form:C1466.ribbon.BannerType("cornerRibbon")
	Form:C1466.ribbon.BannerName("ribbon")
End if 


Case of 
	: ($case="fired")
		Form:C1466.ribbon.BannerBGColor("#bd1717:100")
		Form:C1466.ribbon.BannerPosition("bottom-right")
	: ($case="shipped")
		Form:C1466.ribbon.BannerPosition("top-right")
		Form:C1466.ribbon.BannerBGColor("#191970:50")
End case 


If ($display)
	Form:C1466.ribbon.Message($message)
	Form:C1466.ribbon.DrawBanner()
Else 
	Form:C1466.ribbon.HideBanner()
End if 