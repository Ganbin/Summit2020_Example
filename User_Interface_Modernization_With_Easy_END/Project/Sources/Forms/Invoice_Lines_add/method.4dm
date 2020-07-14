$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		OBJECT SET ENABLED:C1123(*;"save_btn";False:C215)
		GOTO OBJECT:C206(*;"quantity")
		$product_name_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"product_name")
		
		  //%W-518.5
		ARRAY TEXT:C222($product_name_ptr->;0)
		  //%W+518.5
		ARRAY REAL:C219($_price;0)
		
		ALL RECORDS:C47([Product:3])
		ORDER BY:C49([Product:3]name:2)
		  //%W-518.2
		SELECTION TO ARRAY:C260([Product:3]name:2;$product_name_ptr->;[Product:3]price:3;$_price;[Product:3]ID:1;$_ID)
		  //%W+518.2
		
		C_COLLECTION:C1488($product_name)
		$product_name:=New collection:C1472
		ARRAY TO COLLECTION:C1563($product_name;$product_name_ptr->;"name";$_price;"price";$_ID;"ID")
		addLine.products:=$product_name
		
	: ($evt=On After Edit:K2:43) | ($evt=On Data Change:K2:15)
		$product_name_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"product_name")
		$quantity_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"quantity")
		If ($evt=On After Edit:K2:43)
			$quantity_ptr->:=Num:C11(Get edited text:C655)
		End if 
		$price_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"price")
		If ($product_name_ptr->>0)
			$price_ptr->:=addLine.products[$product_name_ptr->-1].price*$quantity_ptr->
		End if 
		
		If ($price_ptr->>0)
			OBJECT SET ENABLED:C1123(*;"save_btn";True:C214)
		Else 
			OBJECT SET ENABLED:C1123(*;"save_btn";False:C215)
		End if 
End case 
