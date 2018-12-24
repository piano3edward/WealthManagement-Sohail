// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__Engagement_Plan_Task__c {
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
    global Id npsp__Assigned_To__c;
    global User npsp__Assigned_To__r;
    global String npsp__Comments__c;
    global Double npsp__Days_After__c;
    global List<npsp__Engagement_Plan_Task__c> npsp__Engagement_Plan_Tasks__r;
    global Id npsp__Engagement_Plan_Template__c;
    global npsp__Engagement_Plan_Template__c npsp__Engagement_Plan_Template__r;
    global Id npsp__Parent_Task__c;
    global npsp__Engagement_Plan_Task__c npsp__Parent_Task__r;
    global String npsp__Priority__c;
    global String npsp__Reminder_Time__c;
    global Boolean npsp__Reminder__c;
    global Boolean npsp__Send_Email__c;
    global String npsp__Status__c;
    global List<LookedUpFromActivity> npsp__Tasks__r;
    global String npsp__Type__c;

    global npsp__Engagement_Plan_Task__c () 
    {
    }
}