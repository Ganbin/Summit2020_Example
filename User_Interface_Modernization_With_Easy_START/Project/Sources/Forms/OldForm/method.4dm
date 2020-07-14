$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.definition:=New object:C1471
		
		Form:C1466.definition.Company:=New object:C1471
		Form:C1466.definition.Company.dataClass:=ds:C1482.Company
		Form:C1466.definition.Company.title:="Companies"
		Form:C1466.definition.Company.listColumnFormula:="this.name"
		Form:C1466.definition.Company.details_panel:="Company_Details_old"
		Form:C1466.definition.Company.options:="add;del;save"
		
		
		Form:C1466.definition.Employee:=New object:C1471
		Form:C1466.definition.Employee.dataClass:=ds:C1482.Employee
		Form:C1466.definition.Employee.title:="Employees"
		Form:C1466.definition.Employee.listColumnFormula:="this.firstName+\" \"+this.lastName"
		Form:C1466.definition.Employee.details_panel:="Employee_Details_old"
		Form:C1466.definition.Employee.options:="add;del;save"
		
		
		Form:C1466.definition.Product:=New object:C1471
		Form:C1466.definition.Product.dataClass:=ds:C1482.Product
		Form:C1466.definition.Product.title:="Products"
		Form:C1466.definition.Product.listColumnFormula:="this.name"
		Form:C1466.definition.Product.details_panel:="Product_Details_old"
		Form:C1466.definition.Product.options:="add;del;save"
		
		
		Form:C1466.definition.Invoice:=New object:C1471
		Form:C1466.definition.Invoice.dataClass:=ds:C1482.Invoice
		Form:C1466.definition.Invoice.title:="Invoices"
		Form:C1466.definition.Invoice.listColumnFormula:="this.HRID"
		Form:C1466.definition.Invoice.details_panel:="Invoice_Details_old"
		
End case 
