public with sharing class TradeTransactionHelper
{
Public Static Void UpdateBuySoldQuantityOnEquitySell(String AccountId, String EquityId, Decimal SellQuantity)
{
	Decimal TotalQuantityToSell = 0;
	Decimal RemainingQuantity = 0;
	Decimal TransactionSoldQuantity = 0;
	//Trade_Transaction__C Trn;
	List<Trade_Transaction__C> BuyTransactions = [select Quantity__c, Sold_Quantity__c from Trade_Transaction__C where account__r.Id =:AccountId and Equity__r.Id=:EquityId and Transaction_Type__c ='Buy' and All_sold__c=False order by CreatedDate];
	System.debug(BuyTransactions);
	for(Trade_Transaction__C Trn:BuyTransactions )
	{
		TotalQuantityToSell = TotalQuantityToSell + (Trn.Quantity__c - Trn.sold_Quantity__c);
	}
	if (TotalQuantityToSell ==SellQuantity)
	{
		for(Trade_Transaction__C Trn:BuyTransactions )
		{
			Trn.sold_Quantity__c = Trn.Quantity__c;
		}
	}
	else if (TotalQuantityToSell > SellQuantity)
	{
		Decimal tmpQuantity = 0;
		for(Trade_Transaction__C Trn:BuyTransactions )
		{
			RemainingQuantity = Trn.Quantity__c - Trn.sold_Quantity__c;
			system.debug('Remaining Quantity :' + RemainingQuantity);
			tmpQuantity = RemainingQuantity - (SellQuantity - TransactionSoldQuantity);
			if (tmpquantity<0)
			{
				Trn.sold_Quantity__c += RemainingQuantity;
				TransactionSoldQuantity += RemainingQuantity;
			}
			else if(tmpQuantity>=0)
			{
				Trn.sold_Quantity__c += SellQuantity - TransactionSoldQuantity;
				TransactionSoldQuantity += SellQuantity - TransactionSoldQuantity;
			}
			if(TransactionSoldQuantity == SellQuantity)
			{
				break;
			}
		}
	}
	Update BuyTransactions;
}

/*
   //AccountId = Sohail = 0019D000002SVOpQAO
   //EquityId = HDFC = a0z9D0000008OhgQAE
   Public Static Void UpdateBuySoldQuantityOnEquitySell(String AccountId, String EquityId, Decimal SellQuantity)
   {
   Decimal QuantityInhand = 0;
   Decimal RemainingQuantity = 0;
   Decimal TransactionSoldQuantity = 0;
   //Trade_Transaction__C Trn;
   List<Trade_Transaction__C> BuyTransactions = [select Quantity__c, Sold_Quantity__c from Trade_Transaction__C where account__r.Id =:AccountId and Equity__r.Id=:EquityId and Transaction_Type__c ='Buy' and All_sold__c=False order by CreatedDate];
   System.debug(BuyTransactions);
   for(Trade_Transaction__C Trn:BuyTransactions )
   {
   QuantityInhand = QuantityInhand + (Trn.Quantity__c - Trn.sold_Quantity__c);
   }
   for(Trade_Transaction__C Trn:BuyTransactions )
   {
   RemainingQuantity = Trn.Quantity__c - Trn.sold_Quantity__c;
   system.debug('Remaining Quantity :' + RemainingQuantity);
   if((SellQuantity - TransactionSoldQuantity) <RemainingQuantity)
   {
   TransactionSoldQuantity = TransactionSoldQuantity + (RemainingQuantity - SellQuantity);
   //Trn.sold_Quantity__c = Trn.sold_Quantity__c + (RemainingQuantity - TransactionSoldQuantity);
   Trn.sold_Quantity__c += TransactionSoldQuantity;
   }
   else if ((SellQuantity - TransactionSoldQuantity)==RemainingQuantity)
   {
   TransactionSoldQuantity = TransactionSoldQuantity + RemainingQuantity;
   Trn.sold_Quantity__c += RemainingQuantity;
   }
   else if ((SellQuantity - TransactionSoldQuantity)>RemainingQuantity)
   {
   TransactionSoldQuantity = TransactionSoldQuantity + RemainingQuantity;
   Trn.sold_Quantity__c +=  TransactionSoldQuantity;
   //Trn.sold_Quantity__c = RemainingQuantity;
   }
   //Trn.sold_Quantity__c = Trn.sold_Quantity__c + RemainingQuantity;
   //QuantityInHand = QuantityInHand - RemainingQuantity;
   if(TransactionSoldQuantity == SellQuantity)
   {
   break;
   }
   }
   Update BuyTransactions;
   }
 */



}