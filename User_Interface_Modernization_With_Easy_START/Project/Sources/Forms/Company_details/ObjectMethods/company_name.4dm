C_OBJECT:C1216($match_company)
C_TEXT:C284($lastBGColor)
AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.name"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TargetName("company_name")
		Form:C1466.tip.TextLabel(Get localized string:C991("business.company.enterCompanyName"))
		Form:C1466.tip.Show()
		
	: ($evt=On After Edit:K2:43)
		$lastBGColor:=Form:C1466.tip.BackgroundColor()
		
		$match_company:=ds:C1482.Company.query("name = :1 and ID # :2";Get edited text:C655;Form:C1466.entity.ID)
		If ($match_company.length>0)
			Form:C1466.tip.TextLabel("The \""+Get edited text:C655+"\" company name is already used!")  // use xliff
			Form:C1466.tip.BackgroundColor("#bd1717")
			Form:C1466.entity.name:=Form:C1466.entity.name
		Else 
			Form:C1466.tip.TextLabel(Get localized string:C991("business.company.enterCompanyName"))
		End if 
		Form:C1466.tip.Show()
		Form:C1466.tip.BackgroundColor($lastBGColor)
End case 
