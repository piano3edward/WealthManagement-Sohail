trigger trgTradeTransaction on Trade_Transaction__c (before insert,before update,After insert,after update)
{
	if(Trigger.isInsert && Trigger.isBefore)
	{
		//List<Trade_Transaction__c> TradeTransactions = new List<Trade_Transaction__c>();
		List<Trade_Transaction__c> tmpBuyTransactions = new List<Trade_Transaction__c>();
		List<Trade_Transaction__c> tmpSellTransactions = new List<Trade_Transaction__c>();

		for (Trade_Transaction__C Tran :trigger.new)
		{
			if(Tran.Transaction_Type__C == 'Buy') //its a buy transaction
			{
				Tran.sold_Quantity__C = 0;
				Tran.Avg_Buy_Price__c = 0;
				Tran.Turnover_Amount__c = tran.Price__c * tran.Quantity__c;
				Tran.Avg_Sell_Price__c = 0;
				tmpBuyTransactions.add(Tran);
			}
			else //its a sell transaction
			{
				Tran.sold_Quantity__C = 0;
				//tmpSellTransactions.add(Tran);
			}
			//TradeTransactions.add(Tran);
		}
		/*
		   if(tmpBuyTransactions.size()>0) // it means all the transactions were of buy type
		   {

		   }
		   if(tmpSellTransactions.size()>0) // it means all the transactions were of sell type
		   {
		        //List<Trade_Transaction__c> BuyTransactions;
		        tmpBuyTransactions = TradeTransactionHelper2.UpdateSoldQuantityAndAvgBuyPriceAndGrossProfit(tmpSellTransactions);
		        if(tmpBuyTransactions!=null)
		        {
		                update tmpBuyTransactions;
		        }
		   }*/
	}
	else if(Trigger.isInsert && Trigger.isAfter)
	{
		//List<Trade_Transaction__c> TradeTransactions = new List<Trade_Transaction__c>();
		List<Trade_Transaction__c> tmpBuyTransactions = new List<Trade_Transaction__c>();
		List<Trade_Transaction__c> tmpSellTransactions = new List<Trade_Transaction__c>();
		Trade_Transaction__c tmpSellTransaction;
		for (Trade_Transaction__C Tran :trigger.new)
		{
			if(Tran.Transaction_Type__C == 'Sell') //its a Sell transaction
			{
				tmpSellTransaction = Tran.clone(true,true);
				//System.debug('Sell Created Date: ' + tmpselltransaction.CreatedDate);
				//System.debug('Sell Modified Date: ' + tmpselltransaction.LastModifiedDate);
				tmpSellTransactions.add(tmpSellTransaction);
			}
		}
		if(tmpSellTransactions.size()>0)
		{
			//TradeTransactionHelper2.PerformSellCalculations(tmpSellTransactions);
			WealthManagementHelper.PerformSellCalculations(tmpSellTransactions);
		}
	}
}