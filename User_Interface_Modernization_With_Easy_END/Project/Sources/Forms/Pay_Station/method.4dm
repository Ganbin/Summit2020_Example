$evt:=Form event code:C388

Case of 
	: ($evt=On Page Change:K2:54)
		
		  // Reset the label when we change the page, the language has potentially changed
		
		Form:C1466.rightBottom_CR1.Message(Get localized string:C991("main.general.welcome"))
		  // use xliff
		$bonusTxt:="<span style=\"font-size:32px;align:center;\">Bonus Program</span><br/><br/>"
		$bonusTxt:=$bonusTxt+"With the bonus program, you collect points each time you buy something.<br/>You can get specials offers that are renewed monthly to provide you the best opportunities at the best price.<br/><br/>You can get discount price over<br/> ● Daily Products<"+"br/> ● Travels<br/> ● Gift Cards"
		
		Form:C1466.bonusTip.TextLabel($bonusTxt)
		
		
		Form:C1466.pay_card_btn.Label(AJUI_btn_default;Get localized string:C991("main.payment.card"))
		Form:C1466.pay_cash_btn.Label(AJUI_btn_default;Get localized string:C991("main.payment.payCash"))
		Form:C1466.vegetable_btn.Label(AJUI_btn_default;Get localized string:C991("main.groups.vegetables"))
		Form:C1466.fruits_btn.Label(AJUI_btn_default;Get localized string:C991("main.groups.fruits"))
		Form:C1466.bakery_btn.Label(AJUI_btn_default;Get localized string:C991("main.groups.bakery"))
		
		Form:C1466.pay_card_btn.Draw()
		Form:C1466.pay_cash_btn.Draw()
		Form:C1466.vegetable_btn.Draw()
		Form:C1466.fruits_btn.Draw()
		Form:C1466.bakery_btn.Draw()
		
	: ($evt=On Unload:K2:2)
		Form:C1466.paymentBanner.StopSpinner()
	: ($evt=On Load:K2:1)
		
		Form:C1466.title:=Get localized string:C991("main.general.chooseLanguage")
		
		  // Define the Right Bottom Corner Ribbon look with a welcome message
		Form:C1466.rightBottom_CR1:=New AJUI_Banner 
		Form:C1466.rightBottom_CR1.BannerType("cornerRibbon")
		Form:C1466.rightBottom_CR1.Message(Get localized string:C991("main.general.welcome"))
		Form:C1466.rightBottom_CR1.BannerName("rightBottom_CR1")
		Form:C1466.rightBottom_CR1.BannerWidth(500)
		Form:C1466.rightBottom_CR1.BannerHeight(150)
		Form:C1466.rightBottom_CR1.BannerBGColor("#3ba99c")
		Form:C1466.rightBottom_CR1.BorderColor("#21897e")
		Form:C1466.rightBottom_CR1.BorderSize(0)
		Form:C1466.rightBottom_CR1.DrawBanner()
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  // Define the tip for article
		Form:C1466.articleTip:=New AJUI_Tip 
		Form:C1466.articleTip.TipName("articleTip")
		Form:C1466.articleTip.TipPosition("right-middle")
		Form:C1466.articleTip.BackgroundColor("#21897e")
		Form:C1466.articleTip.BorderColor("#21897e")
		Form:C1466.articleTip.BackgroundOpacity(100)
		Form:C1466.articleTip.BorderSize(0)
		Form:C1466.articleTip.SubformName("Article_Modify")
		Form:C1466.articleTip.Curved(True:C214)
		Form:C1466.articleTip.ArrowCurve(0.95)
		Form:C1466.articleTip.ArrowCurve(0.9)
		Form:C1466.articleTip.ArrowWidth(25)
		Form:C1466.articleTip.ArrowHeight(18)
		Form:C1466.articleTip.CloseBoxDisplay(True:C214)
		Form:C1466.articleTip.CloseBoxSize(10)
		Form:C1466.articleTip.Padding(0)
		
		  // Object containing the data in the subform "Article_Modify"
		Form:C1466.tip_sf_details:=New object:C1471
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  // Payment Banner Definition
		Form:C1466.paymentBanner:=New AJUI_Banner 
		Form:C1466.paymentBanner.BannerType("window")
		Form:C1466.paymentBanner.BannerWidth(900)
		Form:C1466.paymentBanner.BannerHeight(200)
		Form:C1466.paymentBanner.TextFontSize(36)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  // Bonus Tip
		Form:C1466.bonusTip:=New AJUI_Tip 
		Form:C1466.bonusTip.TipName("bonusTip")
		Form:C1466.bonusTip.TargetName("bonusPointContainer")
		Form:C1466.bonusTip.TipPosition("right-top")
		Form:C1466.bonusTip.ArrowPosition("top")
		Form:C1466.bonusTip.BackgroundColor("#8980f5")
		Form:C1466.bonusTip.BorderColor("#21897e")
		Form:C1466.bonusTip.BackgroundOpacity(100)
		Form:C1466.bonusTip.BorderSize(0)
		Form:C1466.bonusTip.Curved(True:C214)
		Form:C1466.bonusTip.ArrowCurve(0.95)
		Form:C1466.bonusTip.ArrowCurve(0.9)
		Form:C1466.bonusTip.ArrowWidth(25)
		Form:C1466.bonusTip.ArrowHeight(18)
		Form:C1466.bonusTip.TextFontColor("white")
		Form:C1466.bonusTip.TextFontName("Gill sans")
		Form:C1466.bonusTip.TextFontSize(18)
		Form:C1466.bonusTip.TipboxMaxWidth(300)
		Form:C1466.bonusTip.Padding(10)
		
		  // use xliff
		$bonusTxt:="<span style=\"font-size:32px;align:center;\">Bonus Program</span><br/><br/>"
		$bonusTxt:=$bonusTxt+"With the bonus program, you collect points each time you buy something.<br/>You can get specials offers that are renewed monthly to provide you the best opportunities at the best price.<br/><br/>You can get discount price over<br/> ● Daily Products<"+"br/> ● Travels<br/> ● Gift Cards"
		
		Form:C1466.bonusTip.TextLabel($bonusTxt)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  // Discount Tip Description
		Form:C1466.discountTip:=New AJUI_Tip 
		Form:C1466.discountTip.TipName("discountTip")
		Form:C1466.discountTip.TargetName("discount_PB")
		Form:C1466.discountTip.ArrowPosition("middle")
		Form:C1466.discountTip.TipPosition("right-middle")
		Form:C1466.discountTip.BackgroundColor("#f2cc5c")
		Form:C1466.discountTip.BackgroundOpacity(100)
		Form:C1466.discountTip.TipboxMaxWidth(340)
		Form:C1466.discountTip.BorderSize(0)
		Form:C1466.discountTip.Curved(True:C214)
		Form:C1466.discountTip.ArrowCurve(0.95)
		Form:C1466.discountTip.ArrowCurve(0.9)
		Form:C1466.discountTip.ArrowWidth(25)
		Form:C1466.discountTip.ArrowHeight(12)
		Form:C1466.discountTip.TextFontColor("#42381A")
		Form:C1466.discountTip.TextFontName("Gill sans")
		Form:C1466.discountTip.TextFontSize(26)
		Form:C1466.discountTip.Padding(10)
		
		
		  // Discount Reached Tip
		Form:C1466.discountReachedTip:=New AJUI_Tip 
		Form:C1466.discountReachedTip.TipName("discountReachedTip")
		Form:C1466.discountReachedTip.TargetName("savedContainer")
		Form:C1466.discountReachedTip.ArrowPosition("center")
		Form:C1466.discountReachedTip.TipPosition("bottom-right")
		Form:C1466.discountReachedTip.BackgroundColor("#f2cc5c")
		Form:C1466.discountReachedTip.BackgroundOpacity(100)
		Form:C1466.discountReachedTip.BorderSize(0)
		Form:C1466.discountReachedTip.Curved(True:C214)
		Form:C1466.discountReachedTip.ArrowCurve(0.95)
		Form:C1466.discountReachedTip.ArrowCurve(0.9)
		Form:C1466.discountReachedTip.ArrowWidth(25)
		Form:C1466.discountReachedTip.ArrowHeight(18)
		Form:C1466.discountReachedTip.TextFontColor("#42381A")
		Form:C1466.discountReachedTip.TextFontName("Gill sans")
		Form:C1466.discountReachedTip.TextFontSize(52)
		Form:C1466.discountReachedTip.TextLabel("<span style=\"font-weight:bold;\">$ +5.00</span>")
		Form:C1466.discountReachedTip.JumpNumber(3)
		Form:C1466.discountReachedTip.TipDuration(3000)
		Form:C1466.discountReachedTip.Padding(10)
		
		
		
		
		  // Global values
		Form:C1466.totalSaved:=0
		Form:C1466.totalPrice:=0
		
		Form:C1466.pay_cash_btn.Enable(False:C215)
		Form:C1466.pay_card_btn.Enable(False:C215)
		
		Form:C1466.articles:=New collection:C1472()
		
		
		  // Init discount goal
		Form:C1466.discountFrom:=500  // 500 $
		
		
	: ($evt=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		Case of 
			: (Form:C1466.timerCase="toPrint")
				Form:C1466.paymentBanner.BannerType("windowSpinner")
				Form:C1466.paymentBanner.Message(Get localized string:C991("main.payment.printReceipt"))
				Form:C1466.paymentBanner.DrawBanner()
				SET TIMER:C645(60*5)
				Form:C1466.timerCase:="endTransaction"
				
			: (Form:C1466.timerCase="endTransaction")
				FORM GOTO PAGE:C247(3)
				Form:C1466.paymentBanner.HideBanner()
				Form:C1466.paymentBanner.StopSpinner()
				SET TIMER:C645(60*6)
				Form:C1466.timerCase:="resetTransaction"
				
			: (Form:C1466.timerCase="resetTransaction")
				FORM GOTO PAGE:C247(2)
				
				  // Global values
				Form:C1466.totalSaved:=0
				Form:C1466.totalPrice:=0
				
				Form:C1466.pay_cash_btn.Enable(False:C215)
				Form:C1466.pay_card_btn.Enable(False:C215)
				
				Form:C1466.articles:=New collection:C1472()
				
				
				  // Init discount goal
				Form:C1466.discountFrom:=500  // 500 $
				
				PS_checkDiscount 
		End case 
		
		
End case 
