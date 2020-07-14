$evt:=Form event code:C388

Case of 
	: ($evt=On Bound Variable Change:K2:52) | ($evt=On Load:K2:1)
		Form:C1466.status:=""
		
		Case of 
			: (Form:C1466.entity.state=0)
				Form:C1466.status:="Started"
			: (Form:C1466.entity.state=1)
				Form:C1466.status:="Preparation"
			: (Form:C1466.entity.state=2)
				Form:C1466.status:="Shipping"
			: (Form:C1466.entity.state=3)
				Form:C1466.status:="Terminated"
				
		End case 
		
		
End case 
