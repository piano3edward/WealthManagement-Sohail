public class CodingSpeedTest 
{
    
    public string IndustryInput {get; set;}
    public string RatingInput {get; set;}
    public Transient List<Account> AccountList { get; private set; }
    
    public  PageReference GetAccountsList()        
    {
        AccountList = [Select AccountNumber, Name From Account Where Industry =:IndustryInput and Rating =:RatingInput];
        system.debug(AccountList);
        return null;
    }
    
    
    public  List<Account> GetAccountsByIndustryAndRating(String Industry, String Rating)        
    {
        List<Account> Accounts = [Select AccountNumber, Name From Account Where Industry =:Industry and Rating =:Rating];
        system.debug(Accounts);
        return Accounts;
    }
    
    public Static List<Account> GetAccountsByIndustryAndRating(list<String> Industry, list<String> Rating)        
    {
        List<Account> Accounts = [Select AccountNumber, Name From Account Where Industry In:Industry and Rating In:Rating];
        system.debug(Accounts);
        return Accounts;
    }
    
    public Static  List<Account> GetAccountsAndContactsByIndustryAndRating(String Industry, String Rating)        
    {
        List<Account> Accounts = [Select AccountNumber, Name, (Select Name From Contacts) From Account Where Industry =:Industry and Rating =:Rating];
        system.debug(Accounts);
        return Accounts;
    }
    
    public static Void UpdateContactAndOpportunityCount(String AccountId)
    {
        integer ContactCount = 0;
        integer OpportunityCount = 0;
        
        integer OpportunitiesCount = 0;
        List<AggregateResult> ContactsCount = [Select Count(AccountId) ContactCount from Contact C WHERE C.AccountId = :AccountId];


    }
    
    
    
}