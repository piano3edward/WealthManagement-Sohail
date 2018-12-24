// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npe03__Recurring_Donations_Settings__c {
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
    global List<FeedComment> Parent;
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
    global Boolean npe03__Add_Campaign_to_All_Opportunites__c;
    global Boolean npe03__DISABLE_Donations_trigger__c;
    global Boolean npe03__DISABLE_RecurringDonations_trigger__c;
    global Boolean npe03__Enable_Update_Check__c;
    global String npe03__Error_Email_Notifications__c;
    global Datetime npe03__Last_Batch_Run__c;
    global Double npe03__Maximum_Donations__c;
    global Double npe03__Number_of_Failures__c;
    global Double npe03__Number_of_Successes__c;
    global String npe03__Open_Opportunity_Behavior__c;
    global Double npe03__Opportunity_Forecast_Months__c;
    global String npe03__Record_Type__c;
    global Double npe03__Update_Check_Interval__c;
    global Double npsp__Recurring_Donation_Batch_Size__c;

    global npe03__Recurring_Donations_Settings__c () 
    {
    }
}