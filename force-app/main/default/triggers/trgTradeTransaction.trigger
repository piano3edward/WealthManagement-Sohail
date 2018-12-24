trigger trgTradeTransaction on Trade_Transaction__c (before insert,before update,After insert,after update)
{
	if(Trigger.isInsert && Trigger.isBefore) {
		for (Trade_Transaction__C Tran :trigger.new)
		{
			if(Tran.Transaction_Type__C == 'Buy')
			{
				Tran.sold_Quantity__C = 0;
			}
			else
			{
				system.debug('Selling Quantity is: ' + Tran.Quantity__c);
				TradeTransactionHelper.UpdateBuySoldQuantityOnEquitySell(Tran.account__c, Tran.Equity__c, Tran.Quantity__c);
			}
		}
	}
}