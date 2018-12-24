// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npe03__Recurring_Donation__c {
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
    global List<npe03__Recurring_Donation__Feed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<npe03__Recurring_Donation__History> Histories;
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
    global List<FeedComment> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global Decimal npe03__Amount__c;
    global Id npe03__Contact__c;
    global Contact npe03__Contact__r;
    global Date npe03__Date_Established__c;
    global List<Opportunity> npe03__Donations__r;
    global String npe03__Donor_Name__c;
    global Decimal npe03__Installment_Amount__c;
    global String npe03__Installment_Period__c;
    global Double npe03__Installments__c;
    global Date npe03__Last_Payment_Date__c;
    global Date npe03__Next_Payment_Date__c;
    global String npe03__Open_Ended_Status__c;
    global Id npe03__Organization__c;
    global Account npe03__Organization__r;
    global Decimal npe03__Paid_Amount__c;
    global Id npe03__Recurring_Donation_Campaign__c;
    global Campaign npe03__Recurring_Donation_Campaign__r;
    global String npe03__Schedule_Type__c;
    global Double npe03__Total_Paid_Installments__c;
    global Decimal npe03__Total__c;
    global List<npsp__Engagement_Plan__c> npsp__Action_Plans__r;
    global List<npsp__Allocation__c> npsp__Allocations__r;
    global Boolean npsp__Always_Use_Last_Day_Of_Month__c;
    global String npsp__Day_of_Month__c;

    global npe03__Recurring_Donation__c () 
    {
    }
}