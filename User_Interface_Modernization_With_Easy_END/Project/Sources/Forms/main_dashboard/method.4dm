
$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		Form:C1466.data:=New collection:C1472
		
		
		$allInvoices:=ds:C1482.Invoice.query("creationDate >= :1 and creationDate <= :2";!2019-01-01!;!2019-01-31!)
		$month:=dashboard_calcData ($allInvoices)
		$month.month:="January"  // use xliff
		Form:C1466.data.push($month)
		
		$allInvoices:=ds:C1482.Invoice.query("creationDate >= :1 and creationDate <= :2";!2019-02-01!;!2019-02-28!)
		$month:=dashboard_calcData ($allInvoices)
		$month.month:="February"  // use xliff
		Form:C1466.data.push($month)
		
		$allInvoices:=ds:C1482.Invoice.query("creationDate >= :1 and creationDate <= :2";!2019-03-01!;!2019-03-31!)
		$month:=dashboard_calcData ($allInvoices)
		$month.month:="March"  // use xliff
		Form:C1466.data.push($month)
		
		$allInvoices:=ds:C1482.Invoice.query("creationDate >= :1 and creationDate <= :2";!2019-04-01!;!2019-04-30!)
		$month:=dashboard_calcData ($allInvoices)
		$month.month:="April"  // use xliff
		Form:C1466.data.push($month)
		
		$allInvoices:=ds:C1482.Invoice.query("creationDate >= :1 and creationDate <= :2";!2019-05-01!;!2019-05-31!)
		$month:=dashboard_calcData ($allInvoices)
		$month.month:="May"  // use xliff
		Form:C1466.data.push($month)
		
		
		Form:C1466.indicator1:=New AJUI_CircularProgressBar 
		Form:C1466.indicator1.CPBExternalRadius(85)
		Form:C1466.indicator1.CPBActivateAnimation(True:C214)
		Form:C1466.indicator1.CPBPictFormObjName("pic1")
		Form:C1466.indicator1.CPBBarColor("#191970")
		Form:C1466.indicator1.CPBBarWidth(17)
		Form:C1466.indicator1.CPBBackgroundWidth(10)
		Form:C1466.indicator1.CPBBarSpeed(2)
		Form:C1466.indicator1.CPBBarLinecap("round")
		
		  //Form.indicator1.LaunchCircularProgressBar()
		
		Form:C1466.indicator2:=New AJUI_CircularProgressBar 
		Form:C1466.indicator2.CPBExternalRadius(85)
		Form:C1466.indicator2.CPBActivateAnimation(True:C214)
		Form:C1466.indicator2.CPBPictFormObjName("pic2")
		Form:C1466.indicator2.CPBBarColor("#191970")
		Form:C1466.indicator2.CPBBarWidth(17)
		Form:C1466.indicator2.CPBBackgroundWidth(10)
		Form:C1466.indicator2.CPBBarSpeed(3)
		Form:C1466.indicator2.CPBBarLinecap("round")
		
		  //Form.indicator2.LaunchCircularProgressBar()
		
		Form:C1466.indicator3:=New AJUI_CircularProgressBar 
		Form:C1466.indicator3.CPBExternalRadius(85)
		Form:C1466.indicator3.CPBActivateAnimation(True:C214)
		Form:C1466.indicator3.CPBPictFormObjName("pic3")
		Form:C1466.indicator3.CPBBarColor("#191970")
		Form:C1466.indicator3.CPBBarWidth(17)
		Form:C1466.indicator3.CPBBackgroundWidth(10)
		Form:C1466.indicator3.CPBBarSpeed(4)
		Form:C1466.indicator3.CPBBarLinecap("round")
		
		  //Form.indicator3.LaunchCircularProgressBar()
		
		
		Form:C1466.current:=4
		dashboardLaodForm 
		
		
		  // Tip Definition
		Form:C1466.tip:=New AJUI_Tip 
		Form:C1466.tip.TargetName("")
		Form:C1466.tip.TextFontSize(20)
		Form:C1466.tip.TextFontName("Verdana")
		Form:C1466.tip.TextFontColor("#FFFFFF")
		Form:C1466.tip.TextOpacity(100)
		Form:C1466.tip.TargetMargin(10)
		Form:C1466.tip.CornerRadius(0)
		Form:C1466.tip.Padding(10)
		Form:C1466.tip.BorderSize(2)
		Form:C1466.tip.BorderColor("#808080")
		Form:C1466.tip.BackgroundColor("#191970")
		Form:C1466.tip.BackgroundOpacity(100)
		Form:C1466.tip.AutoRebuild(False:C215)
		Form:C1466.tip.TipboxMaxWidth(200)
End case 
