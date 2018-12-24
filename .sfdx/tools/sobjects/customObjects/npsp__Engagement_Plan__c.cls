// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__Engagement_Plan__c {
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
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
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
    global Id npsp__Account__c;
    global Account npsp__Account__r;
    global Id npsp__Campaign__c;
    global Campaign npsp__Campaign__r;
    global Id npsp__Case__c;
    global Case npsp__Case__r;
    global Double npsp__Completed_Tasks__c;
    global Id npsp__Contact__c;
    global Contact npsp__Contact__r;
    global Id npsp__Engagement_Plan_Template__c;
    global npsp__Engagement_Plan_Template__c npsp__Engagement_Plan_Template__r;
    global Id npsp__Opportunity__c;
    global Opportunity npsp__Opportunity__r;
    global Id npsp__Recurring_Donation__c;
    global npe03__Recurring_Donation__c npsp__Recurring_Donation__r;
    global String npsp__Status__c;
    global List<LookedUpFromActivity> npsp__Tasks__r;
    global Double npsp__Total_EP_Tasks__c;
    global Double npsp__Total_Tasks__c;

    global npsp__Engagement_Plan__c () 
    {
    }
}