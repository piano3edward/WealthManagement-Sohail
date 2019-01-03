public with sharing class WealthManagementHelper
{
/*
   1) Update Sold Quantity of buy records while selling
   2) Calculate Avg Buy Price for corresponding Buy
   transaction records while selling
   3) Calculate Avg Sell Price of buy records while sell
   4) Calculate charges for buy/sell records
   5) Insert into Account_Ledger_Book table for every Buy/Sell transaction
   6) Insert into Trade Transaction Lot Books for every Sell transaction
 */
//Public Static List<Trade_Transaction__c> UpdateSoldQuantityAndAvgBuyPriceAndGrossProfit(List<Trade_Transaction__c> SellTransactions)
Public Static Boolean PerformSellCalculations(List<Trade_Transaction__c> SellTransactions)
{
	Decimal TotalQuantityToSell = 0; //quantity in hand
	Decimal RemainingQuantity = 0; // remaining/unsold quantity from buy transaction
	Decimal TransactionSoldQuantity = 0;
	Decimal tmpQuantity = 0;
	Decimal SellQuantity = 0;
	Decimal AvgBuyPrice = 0;
	Decimal BuyPrice = 0;

	List<Trade_Transaction__c> BuyTransactionsToUpdate = new List<Trade_Transaction__c>();
	List<Trade_Transaction__c> SellTransactionsToUpdate = new List<Trade_Transaction__c>();
	List<Trade_Transaction__c> BuyTransactions;
	List<Trade_Transaction__c> tmpBuyTransactions = new List<Trade_Transaction__c>();
	Map<Id,List<Trade_Transaction__C> > BuyTransactionsMap = new Map<Id,List<Trade_Transaction__C> >();
	Set<Id> AccountIds = new Set<Id>();
	Set<Id> EquityIds= new Set<Id>();

	List<Trade_Transaction_Lot_Book__c> TradeTransactionLotBooksToInsert = new list<Trade_Transaction_Lot_Book__c>();
	Trade_Transaction_Lot_Book__c TradeTransactionLotBook;

	if(SellTransactions==Null)
	{
		return False;
	}
	else
	{
		try
		{
			// Get a set of all account id's and equity id's from incoming list of sell transactions
			for (Trade_Transaction__c SellTransaction:SellTransactions)
			{
				AccountIds.add(SellTransaction.Account__c);
				EquityIds.add(SellTransaction.Equity__c);
			}
			/*Get a list of all unsold/partially sold buy transactions for all the customer's and equity's present in incoming
			   list of sell transactions*/
			BuyTransactions = [select Account__c, Quantity__c, Sold_Quantity__c, Price__c, Avg_Sell_Price__C from Trade_Transaction__C
			                   where account__r.Id In:AccountIds and Equity__r.Id In:EquityIds and Transaction_Type__c ='Buy'
			                                                                                                             and All_sold__c=False order by account__r.Id, CreatedDate];
			//Build a map consisting of Account Id as key and list of corresponding buy transactions as values
			for (Trade_Transaction__c BuyTransaction:BuyTransactions)
			{
				if(BuyTransactionsMap.containsKey(BuyTransaction.Account__c))
				{
					tmpBuyTransactions = BuyTransactionsMap.get(BuyTransaction.Account__c);
					tmpBuyTransactions.add(BuyTransaction);
				}
				else
				{
					tmpBuyTransactions = new List<Trade_Transaction__c>();
					tmpBuyTransactions.add(BuyTransaction);
					BuyTransactionsMap.put(BuyTransaction.Account__c,tmpBuyTransactions);
				}
			}
			/*Get a list of corresponding buy transactions for each sell transaction in the list of incoming sell transactions
			   and update their sold quantity value and add them to BuyTransactionsToUpdate list for updating later to the database
			 */
			for(Trade_Transaction__c SellTransaction:SellTransactions)
			{
				tmpQuantity = 0;
				TransactionSoldQuantity=0;
				RemainingQuantity = 0;
				AvgBuyPrice = 0;
				BuyPrice = 0;
				SellQuantity = SellTransaction.Quantity__c;
				BuyTransactions = BuyTransactionsMap.get(SellTransaction.Account__c);
				//
				for(Trade_Transaction__C BuyTransaction:BuyTransactions )
				{
					TotalQuantityToSell = TotalQuantityToSell + (BuyTransaction.Quantity__c - BuyTransaction.sold_Quantity__c);
					BuyPrice += BuyTransaction.Price__c;
					//update Avg Sell Price for the buy transaction
					if(BuyTransaction.Avg_Sell_Price__c==0)
					{
						BuyTransaction.Avg_Sell_Price__c = SellTransaction.Price__c;
					}
					else
					{
						BuyTransaction.Avg_Sell_Price__c = (BuyTransaction.Avg_Sell_Price__c + SellTransaction.Price__c)/2;
					}
				}
				AvgBuyPrice = BuyPrice / BuyTransactions.size();
				SellTransaction.Avg_Buy_Price__c = AvgBuyPrice; //update Avg Buy Price value of sell transaction
				//update Turn Over Amount of sell transaction
				SellTransaction.Turnover_Amount__c = (AvgBuyPrice * SellTransaction.Quantity__c) + (SellTransaction.Price__c * SellTransaction.Quantity__c);
				if (TotalQuantityToSell ==SellQuantity) //customer is selling all the quantity in hand
				{
					for(Trade_Transaction__C BuyTransaction:BuyTransactions )
					{
						//build a list of Trade_Transaction_Lot_Book to insert in the database later
						TradeTransactionLotBook =  new Trade_Transaction_Lot_Book__c();
						TradeTransactionLotBook.Buy_Transaction__c = BuyTransaction.Id;
						TradeTransactionLotBook.Sell_Transaction__c = SellTransaction.Id;
						TradeTransactionLotBook.Sell_Date__c = date.today();
						//System.debug('Sell Date: ' + TradeTransactionLotBook.Sell_Date__c);
						TradeTransactionLotBook.Buy_Price__c = BuyTransaction.Price__c;
						TradeTransactionLotBook.Sell_Price__c = SellTransaction.Price__c;
						TradeTransactionLotBook.Sold_Quantity__c = BuyTransaction.Quantity__c - BuyTransaction.sold_Quantity__c;
						TradeTransactionLotBook.recalculateFormulas();
						TradeTransactionLotBook.Gross_Profit__c = TradeTransactionLotBook.Sell_Amount__c - TradeTransactionLotBook.Buy_Amount__c;
						TradeTransactionLotBooksToInsert.add(TradeTransactionLotBook);
						BuyTransaction.sold_Quantity__c = BuyTransaction.Quantity__c;
					}
				}
				else if (TotalQuantityToSell > SellQuantity) //customer is selling only partial quantity from quantity in hand
				{
					tmpQuantity = 0;
					for(Trade_Transaction__C BuyTransaction:BuyTransactions )
					{
						RemainingQuantity = BuyTransaction.Quantity__c - BuyTransaction.sold_Quantity__c;
						system.debug('Remaining Quantity :' + RemainingQuantity);
						tmpQuantity = RemainingQuantity - (SellQuantity - TransactionSoldQuantity);
						//build a list of Trade_Transaction_Lot_Book to insert in the database later
						TradeTransactionLotBook =  new Trade_Transaction_Lot_Book__c();
						TradeTransactionLotBook.Buy_Transaction__c = BuyTransaction.Id;
						TradeTransactionLotBook.Sell_Transaction__c = SellTransaction.Id;
						TradeTransactionLotBook.Sell_Date__c = date.today();
						TradeTransactionLotBook.Buy_Price__c = BuyTransaction.Price__c;
						TradeTransactionLotBook.Sell_Price__c = SellTransaction.Price__c;
						if (tmpquantity<0)
						{
							BuyTransaction.sold_Quantity__c += RemainingQuantity;
							TransactionSoldQuantity += RemainingQuantity;
							TradeTransactionLotBook.Sold_Quantity__c = RemainingQuantity;
						}
						else if(tmpQuantity>=0)
						{
							BuyTransaction.sold_Quantity__c += SellQuantity - TransactionSoldQuantity;
							TradeTransactionLotBook.Sold_Quantity__c = SellQuantity - TransactionSoldQuantity;
							TransactionSoldQuantity += SellQuantity - TransactionSoldQuantity;
						}
						TradeTransactionLotBook.recalculateFormulas();
						TradeTransactionLotBook.Gross_Profit__c = TradeTransactionLotBook.Sell_Amount__c - TradeTransactionLotBook.Buy_Amount__c;
						TradeTransactionLotBooksToInsert.add(TradeTransactionLotBook);
						if(TransactionSoldQuantity == SellQuantity)
						{
							break;
						}
					}
				}
				BuyTransactionsToUpdate.addAll(BuyTransactions); //add for updating later
				SellTransactionsToUpdate.add(SellTransaction);
			}
			//return BuyTransactionsToUpdate;
			Update BuyTransactionsToUpdate;
			Update SellTransactionsToUpdate;
			Insert TradeTransactionLotBooksToInsert;
			return true;
		}
		catch (Exception e)
		{
			System.debug('Unable to process your request. Please try again or contact system administrator');
			return false;
		}
	}
}

/*
    Prevents duplicate insert of existing tax slab record
*/
Public Static Void CheckDuplicateTaxSlabs(List<Tax_Slab__c> TaxSlabs)
{
    
}

/*
   1) Calculate taxes for incoming Trade_Transaction_Lot_Book__c entries
   2) Update Tax_Type__c & Tax_Amount__c fields of incoming Trade_Transaction_Lot_Book__c entries
 */
public Static List<Trade_Transaction_Lot_Book__c> CalculateTaxes(List<Trade_Transaction_Lot_Book__c> TradeTransactionLotBooks)
{
	if(TradeTransactionLotBooks!=null)
	{
		Map<String,Tax_Slab__c> TaxSlabMap;
		List<Tax_Slab__c> TaxSlabs;
		//Get tax slabs and build a map of slabs
		TaxSlabs = [Select Tax_Type__c, Gain_Threshold_Amount__c, Percentage__c From Tax_Slab__c Where Tax_Type__c  = 'Short Term Capital Gain' or Tax_Type__c = 'Long Term Capital Gain'];

	}
	return TradeTransactionLotBooks;
}
}
