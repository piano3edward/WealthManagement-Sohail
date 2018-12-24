// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class GW_Volunteers__Volunteers_Settings__c {
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
    global String GW_Volunteers__Contact_Match_Email_Fields__c;
    global String GW_Volunteers__Contact_Match_First_Name_Fields__c;
    global String GW_Volunteers__Contact_Matching_Rule__c;
    global String GW_Volunteers__Google_Maps_API_Key__c;
    global String GW_Volunteers__Personal_Site_Org_Wide_Email_Name__c;
    global Boolean GW_Volunteers__Personal_Site_Report_Hours_Filtered__c;
    global Boolean GW_Volunteers__Personal_Site_Requires_URL_Email_Match__c;
    global Double GW_Volunteers__Recurring_Job_Future_Months__c;
    global String GW_Volunteers__Signup_Bucket_Account_On_Create__c;
    global Boolean GW_Volunteers__Signup_Creates_Contacts_If_No_Match__c;
    global Boolean GW_Volunteers__Signup_Matches_Existing_Contacts__c;
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

    global GW_Volunteers__Volunteers_Settings__c () 
    {
    }
}