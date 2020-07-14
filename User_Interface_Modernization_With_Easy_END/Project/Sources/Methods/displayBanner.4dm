//%attributes = {}
C_TEXT:C284($1;$message)
$message:=$1

Form:C1466.banner:=New AJUI_Banner 
Form:C1466.banner.BannerType("window")
Form:C1466.banner.Message($message)
Form:C1466.banner.TextFontSize(90)
Form:C1466.banner.BannerHeight(200)
Form:C1466.banner.BannerWidth(750)
Form:C1466.banner.DrawBanner()