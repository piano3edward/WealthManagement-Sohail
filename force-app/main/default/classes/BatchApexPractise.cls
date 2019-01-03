global  class EquityPriceUpdater implements Database.Batchable<sObject>
{
//Any class that implements Batchable interface must also implement the Start, Execute & Finish methods

//Start method - Starts the batch process
global Database.QueryLocator start(Database.BatchableContext BatchContext)
{
	String EquityQuery= ' Select Id, Name from Equity__c Order By Name';
	return Database.getQueryLocator(EquityQuery);
}
//Execute method - executes the batch process
global void execute(Database.BatchableContext BatchContext, List<sObject> Scope)
{
	List<sObject> Equities = new List<sObject>();
	for(sObject Equity: Scope)
	{
        Equity__c tmpEquity = (Equity__c)Scope;
		tmpEquity.Price__c = 100;        
		Equities.add(tmpEquity);
	}
	update Equities;
}
//Finish method - is called once the batch processing is completed
global void finish(Database.BatchableContext BatchContext)
{
	Id BatchJobId = BatchContext.getJobId();
	System.debug(BatchJobId); //prints the batch job id
}
}
