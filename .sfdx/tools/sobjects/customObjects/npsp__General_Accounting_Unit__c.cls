// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npsp__General_Accounting_Unit__c {
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
    global List<npsp__General_Accounting_Unit__History> Histories;
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
    global Boolean npsp__Active__c;
    global List<npsp__Allocation__c> npsp__Allocations__r;
    global Decimal npsp__Average_Allocation__c;
    global String npsp__Description__c;
    global Date npsp__First_Allocation_Date__c;
    global Decimal npsp__Largest_Allocation__c;
    global Date npsp__Last_Allocation_Date__c;
    global Double npsp__Number_of_Allocations_Last_N_Days__c;
    global Double npsp__Number_of_Allocations_Last_Year__c;
    global Double npsp__Number_of_Allocations_This_Year__c;
    global Double npsp__Number_of_Allocations_Two_Years_Ago__c;
    global Decimal npsp__Smallest_Allocation__c;
    global Decimal npsp__Total_Allocations_Last_N_Days__c;
    global Decimal npsp__Total_Allocations_Last_Year__c;
    global Decimal npsp__Total_Allocations_This_Year__c;
    global Decimal npsp__Total_Allocations_Two_Years_Ago__c;
    global Decimal npsp__Total_Allocations__c;
    global Double npsp__Total_Number_of_Allocations__c;

    global npsp__General_Accounting_Unit__c () 
    {
    }
}