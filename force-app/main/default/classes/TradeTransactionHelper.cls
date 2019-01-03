public with sharing class TradeTransactionHelper
{
Public Static Void UpdateBuySoldQuantityOnEquitySell(String AccountId, String EquityId, Decimal SellQuantity)
{
	Decimal TotalQuantityToSell = 0; //quantity in hand
	Decimal RemainingQuantity = 0; // remaining/unsold quantity from buy transaction
	Decimal TransactionSoldQuantity = 0;
  
	List<Trade_Transaction__C> BuyTransactions = [select Quantity__c, Sold_Quantity__c from Trade_Transaction__C 
                                                where account__r.Id =: AccountId and Equity__r.Id=: EquityId and Transaction_Type__c ='Buy' 
                                                and All_sold__c=False order by CreatedDate];
	System.debug(BuyTransactions);
	for(Trade_Transaction__C Trn:BuyTransactions )
	{
		TotalQuantityToSell = TotalQuantityToSell + (Trn.Quantity__c - Trn.sold_Quantity__c);
	}
	if (TotalQuantityToSell ==SellQuantity) //customer is selling all the quantity in hand
	{
		for(Trade_Transaction__C Trn:BuyTransactions )
		{
			Trn.sold_Quantity__c = Trn.Quantity__c;
		}
	}
	else if (TotalQuantityToSell > SellQuantity) //customer is selling only partial quantity from quantity in hand
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
   ----- Email for Trading Transaction
   public class EmailSending
   {
   public void sendEmailtoCustomer(list<Transcation__c> na)
   {
   for(Transcation__c tr:na)
   {
   if(tr.Transcation_Type__c=='sell')
   {

   list<Messaging.SingleEmailMessage> emails = new list<Messaging.SingleEmailMessage>();
   Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
   List<String> sendTo = new List<String>();
   sendTo.add('sumasfdc033@gmail.com');
   email.settoAddresses(sendTo);
   email.subject = 'selling records';
   String bo='Dear '+ tr.Name+',<br/><br/>'+'Thank you for trading with us. Please find below trading details ,<br/><br/>'
 +'Transaction Type :'+tr.Transcation_Type__c+'<br/>'+'Account :'+tr.account__c +'<br/>'
 +'Trading Date :'+tr.Trading_Date__c+'<br/>'+'total Charges :'+tr.Total_Charges__c+'<br/>'+'Net Amount :'+tr.Net_Amount__c+'<br/>'
 +'Equity :'+tr.Equity__c+'<br/>'+'Equity Type :'+tr.equity_Type__c+'<br/>'+'Gross Amount :'+tr.Gross_Amount__c+'<br/>'
 +'Price :'+tr.Price__c+'<br/>'+'Quantity :'+tr.Quantity__c+'<br/><br/>'+'With Best Wishes'+'<br/>'+UserInfo.getOrganizationName();
   // email.setPlainTextBody(bo);
   email.setHtmlBody(bo);
   email.plainTextBody = 'selling record details';
   emails.add(email);
   Messaging.SendEmailResult[] results = Messaging.sendEmail(emails);
   }
   if(tr.Transcation_Type__c=='Buy')
   {

   list<Messaging.SingleEmailMessage> emails = new list<Messaging.SingleEmailMessage>();
   Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
   EmailTemplate temp=[select id,Name from EmailTemplate where Name='suma'];
   email.setTemplateId(temp.id);
   List<String> sendTo = new List<String>();
   sendTo.add('sumasfdc033@gmail.com');
   email.settoAddresses(sendTo);
   email.subject = 'buying records';
   String bo='Dear '+ tr.Name+',<br/> <br/>'+'Thank you for trading with us. Please find below trading details,<br/> <br/>'
 +'Transaction Type :'+tr.Transcation_Type__c+'<br/>'+'Account :'+tr.account__c +'<br/>'+'Equity :'
 +'Trading Date :'+tr.Trading_Date__c+'<br/>'+'total Charges :'+tr.Total_Charges__c+'<br/>'+'Net Amount :'+tr.Net_Amount__c+'<br/>'
 +tr.Equity__c+'<br/>'+'Equity Type :'+tr.equity_Type__c+'<br/>'+'Gross Amount :'+TR.Gross_Amount__c+'<br/>'+'Price :'
 +tr.Price__c+'<br/>'+'Quantity:'+tr.Quantity__c+'<br/><br/>'+'With Best Wishes'+'<br/>'+UserInfo.getOrganizationName();
   // email.setPlainTextBody(bo);
   email.setHtmlBody(bo);
   email.plainTextBody = 'buying record details';
   emails.add(email);
   Messaging.SendEmailResult[] results = Messaging.sendEmail(emails);
   }


   }
   }

   }
   trigger EmailAlertforBuyTrans on Transactions_Trade__c (before insert, before update){
    if(Trigger.isBefore && Trigger.isInsert){
        EmailNotification ee = new EmailNotification();
        ee.emailAlertToCustomer(Trigger.new);
    }
   }
 */

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