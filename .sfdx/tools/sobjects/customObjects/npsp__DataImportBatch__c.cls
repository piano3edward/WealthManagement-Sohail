// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__DataImportBatch__c {
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
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global String npsp__Account_Custom_Unique_ID__c;
    global String npsp__Batch_Description__c;
    global Double npsp__Batch_Process_Size__c;
    global String npsp__Contact_Custom_Unique_ID__c;
    global String npsp__Contact_Matching_Rule__c;
    global Double npsp__Donation_Date_Range__c;
    global String npsp__Donation_Matching_Behavior__c;
    global String npsp__Donation_Matching_Implementing_Class__c;
    global String npsp__Donation_Matching_Rule__c;
    global Datetime npsp__Last_Processed_On__c;
    global List<npsp__DataImport__c> npsp__NPSP_Data_Imports__r;
    global String npsp__Post_Process_Implementing_Class__c;
    global Boolean npsp__Process_Using_Scheduled_Job__c;
    global Double npsp__Records_Failed__c;
    global Double npsp__Records_Successfully_Processed__c;
    global Boolean npsp__Run_Opportunity_Rollups_while_Processing__c;

    global npsp__DataImportBatch__c () 
    {
    }
}