// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npe01__Contacts_And_Orgs_Settings__c {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String Name;
    global List<FeedItem> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global SObject SetupOwner;
    global Id SetupOwnerId;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global String npe01__Account_Processor__c;
    global Boolean npe01__DISABLE_IndividualAccounts_trigger__c;
    global Boolean npe01__DISABLE_OpportunityAccount_trigger__c;
    global Boolean npe01__DISABLE_OpportunityContactRoles_trigger__c;
    global Boolean npe01__DISABLE_OpportunityPayments_trigger__c;
    global Boolean npe01__Default_Opp_on_Convert__c;
    global Boolean npe01__Disable_Account_Model_Trigger__c;
    global Boolean npe01__Enable_Opportunity_Contact_Role_Trigger__c;
    global Boolean npe01__Enable_Update_Check__c;
    global String npe01__HH_Account_RecordTypeID__c;
    global String npe01__Has_Package_Update__c;
    global Datetime npe01__Last_Update_Check__c;
    global String npe01__Max_Package_Version__c;
    global String npe01__One_to_One_RecordTypeID__c;
    global String npe01__Opportunity_Contact_Role_Default_role__c;
    global String npe01__Package_Update_URL__c;
    global Boolean npe01__Payments_Enabled__c;
    global Double npe01__Update_Check_Interval__c;
    global String npsp__Advancement_Namespace__c;
    global Boolean npsp__Automatic_Campaign_Member_Management__c;
    global String npsp__Campaign_Member_Non_Responded_Status__c;
    global String npsp__Campaign_Member_Responded_Status__c;
    global String npsp__Contact_Role_for_Organizational_Opps__c;
    global String npsp__Honoree_Opportunity_Contact_Role__c;
    global Boolean npsp__Household_Account_Addresses_Disabled__c;
    global Double npsp__Max_Payments__c;
    global String npsp__Notification_Recipient_Opp_Contact_Role__c;
    global String npsp__Opp_RecTypes_Excluded_for_Payments__c;
    global String npsp__Opp_Types_Excluded_for_Payments__c;
    global Boolean npsp__Organizational_Account_Addresses_Enabled__c;
    global String npsp__Payments_Auto_Close_Stage_Name__c;
    global Boolean npsp__Simple_Address_Change_Treated_as_Update__c;

    global npe01__Contacts_And_Orgs_Settings__c () 
    {
    }
}