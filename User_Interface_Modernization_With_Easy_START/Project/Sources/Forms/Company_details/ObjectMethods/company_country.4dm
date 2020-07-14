AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.more_infos.country"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TargetName("company_country")
		Form:C1466.tip.TextLabel(Get localized string:C991("business.company.enterCompanyCountry"))
		Form:C1466.tip.Show()
		
End case 
