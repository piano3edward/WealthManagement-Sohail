// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npe01__OppPayment__c {
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
    global List<npe01__OppPayment__Feed> Feeds;
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
    global String Payment_Status__c;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global String npe01__Check_Reference_Number__c;
    global String npe01__Custom_Payment_Field__c;
    global Id npe01__Opportunity__c;
    global Opportunity npe01__Opportunity__r;
    global Boolean npe01__Paid__c;
    global Decimal npe01__Payment_Amount__c;
    global Date npe01__Payment_Date__c;
    global String npe01__Payment_Method__c;
    global Date npe01__Scheduled_Date__c;
    global Boolean npe01__Written_Off__c;
    global List<npsp__DataImport__c> npsp__NPSP_Data_Imports__r;
    global Date npsp__Payment_Acknowledged_Date__c;
    global String npsp__Payment_Acknowledgment_Status__c;

    global npe01__OppPayment__c () 
    {
    }
}