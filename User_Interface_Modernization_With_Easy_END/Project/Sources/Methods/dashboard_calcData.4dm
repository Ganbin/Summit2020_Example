//%attributes = {}
C_OBJECT:C1216($1;$allInvoices)
C_OBJECT:C1216($0;$result)
C_OBJECT:C1216($allEmployees;$bestEmployee;$allProducts;$bestProduct;$product;$employee)
C_COLLECTION:C1488($sumEmployee;$sumProduct)
C_REAL:C285($totalBEPrices;$totalPrices;$sumBS)

$allInvoices:=$1

$allEmployees:=$allInvoices.employee
$sumEmployee:=New collection:C1472
For each ($employee;$allEmployees)
	$sumEmployee.push(New object:C1471("ID_Employee";$employee.ID;"sum";$employee.invoices.and($allInvoices).sum("priceTotal")))
End for each 
$sumEmployee:=$sumEmployee.orderBy("sum desc")
$totalBEPrices:=$sumEmployee[0].sum
$bestEmployee:=ds:C1482.Employee.get($sumEmployee[0].ID_Employee)
$totalPrices:=$allInvoices.sum("priceTotal")

$allProducts:=$allInvoices.lines.product
$sumProduct:=New collection:C1472
For each ($product;$allProducts)
	$sumProduct.push(New object:C1471("ID_Product";$product.ID;"sum";$product.lines.and($allInvoices.lines).sum("price")))
End for each 
$sumProduct:=$sumProduct.orderBy("sum desc")
$sumBS:=$sumProduct[0].sum
$bestProduct:=ds:C1482.Product.get($sumProduct[0].ID_Product)

$result:=New object:C1471("bestSeller";New object:C1471("product";$bestProduct.name;"percent";($sumBS/$totalPrices)*100);\
"bestEmployee";New object:C1471("name";$bestEmployee.firstName+" "+$bestEmployee.lastName;"percent";($totalBEPrices/$totalPrices)*100);\
"monthPercent";($totalPrices/ds:C1482.Invoice.all().sum("priceTotal"))*100\
)

$0:=$result