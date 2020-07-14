C_OBJECT:C1216($newLine;$invoice)
C_LONGINT:C283($ID_product)

$product_name_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"product_name")
$quantity_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"quantity")
$price_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"price")

If ($product_name_ptr->>0)
	$ID_product:=addLine.products[$product_name_ptr->-1].ID
	
	$newLine:=ds:C1482.Invoice_Line.new()
	$newLine.ID_Product:=$ID_product
	$newLine.ID_Invoice:=addLine.ID_Invoice
	$newLine.quantity:=$quantity_ptr->
	$newLine.price:=$price_ptr->
	$newLine.save()
	
	$invoice:=ds:C1482.Invoice.get(addLine.ID_Invoice)
	$invoice.priceTotal:=$invoice.priceTotal+$price_ptr->
	$invoice.save()
	
	CALL FORM:C1391(Current form window:C827;"Invoice_Line_add_cb")
End if 