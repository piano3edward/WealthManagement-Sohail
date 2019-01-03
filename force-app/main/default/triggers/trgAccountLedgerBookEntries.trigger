trigger trgAccountLedgerBookEntries on Account_Ledger_Book__c (before insert)
{
    if(Trigger.isinsert && Trigger.isbefore) {
        for(Account_ledger_Book__c LedgerBook:Trigger.new) {
            if(LedgerBook.Amount__c!=null) {
                LedgerBook.ledger_Type__c='Deposit';
                
            }
            if(LedgerBook.Amount__c==null || LedgerBook.Amount__c<=0 ) {
                LedgerBook.Amount__c.adderror('Please enter valid Amount ');
            }
        }
    }
}