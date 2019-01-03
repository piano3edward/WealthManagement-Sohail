public with sharing class AccountLedgerBookEntries
{
public date fromDate {set; get;}
public date toDate   {set; get;}
public list<Account_ledger_Book__c> accLedger {set; get;}
public AccountLedgerBookEntries(){
	//accLedger=new list<Account_ledger_Book__c>();
}
public void customerDetails()
{

	if(fromDate==null && toDate==null)
	{
		ApexPages.addMessage(new ApexPages.message(ApexPages.severity.WARNING,'Please enter Date'));
	}
	else
	{
		accLedger=[select Id,CreatedDate,Name,Amount__c,ledger_Type__c,Account__c from Account_ledger_Book__c where CreatedDate>=:fromDate and CreatedDate<=:toDate];
		system.debug(accLedger);

	}

}
}
