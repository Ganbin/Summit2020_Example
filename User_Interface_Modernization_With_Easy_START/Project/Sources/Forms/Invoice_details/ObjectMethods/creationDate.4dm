AJUI_FloatingLabel_main (New object:C1471("formPath";"entity.creationDate"))

$evt:=Form event code:C388

Case of 
	: ($evt=On Getting Focus:K2:7)
		Form:C1466.tip.TargetName("company_country")
		Form:C1466.tip.TextLabel("Enter the Company Country")  // use xliff
		Form:C1466.tip.Show()
		
End case 
