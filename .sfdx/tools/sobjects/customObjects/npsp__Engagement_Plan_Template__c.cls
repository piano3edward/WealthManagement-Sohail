// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__Engagement_Plan_Template__c {
    global List<ActivityHistory> ActivityHistories;
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
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global Id Id;
    global Boolean IsDeleted;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
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
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global Boolean npsp__Automatically_Update_Child_Task_Due_Date__c;
    global String npsp__Default_Assignee__c;
    global String npsp__Description__c;
    global List<npsp__Engagement_Plan_Task__c> npsp__Engagement_Plan_Tasks__r;
    global List<npsp__Engagement_Plan__c> npsp__Engagement_Plans__r;
    global List<npsp__Level__c> npsp__Levels__r;
    global String npsp__Reschedule_To__c;
    global Boolean npsp__Skip_Weekends__c;
    global Double npsp__Total_Engagement_Plans__c;
    global Double npsp__Total_Tasks__c;

    global npsp__Engagement_Plan_Template__c () 
    {
    }
}