// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__Address__c {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<npsp__Address__Feed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<FeedComment> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global String npsp__API_Response__c;
    global String npsp__Address_Type__c;
    global String npsp__Administrative_Area__c;
    global Boolean npsp__Ambiguous__c;
    global String npsp__Congressional_District__c;
    global List<Contact> npsp__Contacts1__r;
    global String npsp__County_Name__c;
    global List<npsp__DataImport__c> npsp__Data_Imports__r;
    global Boolean npsp__Default_Address__c;
    global String npsp__Formula_MailingAddress__c;
    global String npsp__Formula_MailingStreetAddress__c;
    global Double npsp__Geolocation__Latitude__s;
    global Double npsp__Geolocation__Longitude__s;
    global Location npsp__Geolocation__c;
    global Id npsp__Household_Account__c;
    global Account npsp__Household_Account__r;
    global Date npsp__Latest_End_Date__c;
    global Date npsp__Latest_Start_Date__c;
    global String npsp__MailingCity__c;
    global String npsp__MailingCountry__c;
    global String npsp__MailingPostalCode__c;
    global String npsp__MailingState__c;
    global String npsp__MailingStreet2__c;
    global String npsp__MailingStreet__c;
    global String npsp__Pre_Verification_Address__c;
    global String npsp__Seasonal_End_Day__c;
    global String npsp__Seasonal_End_Month__c;
    global String npsp__Seasonal_Start_Day__c;
    global String npsp__Seasonal_Start_Month__c;
    global String npsp__State_Lower_District__c;
    global String npsp__State_Upper_District__c;
    global String npsp__Verification_Status__c;
    global Boolean npsp__Verified__c;

    global npsp__Address__c () 
    {
    }
}