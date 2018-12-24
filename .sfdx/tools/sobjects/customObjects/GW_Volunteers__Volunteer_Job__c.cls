// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class GW_Volunteers__Volunteer_Job__c {
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
    global Id GW_Volunteers__Campaign__c;
    global Campaign GW_Volunteers__Campaign__r;
    global String GW_Volunteers__Description__c;
    global Boolean GW_Volunteers__Display_on_Website__c;
    global Datetime GW_Volunteers__First_Shift__c;
    global Boolean GW_Volunteers__Inactive__c;
    global String GW_Volunteers__Location_City__c;
    global String GW_Volunteers__Location_Information__c;
    global String GW_Volunteers__Location_Street__c;
    global String GW_Volunteers__Location_Zip_Postal_Code__c;
    global String GW_Volunteers__Location__c;
    global Double GW_Volunteers__Number_of_Completed_Hours__c;
    global Double GW_Volunteers__Number_of_Shifts__c;
    global Double GW_Volunteers__Number_of_Volunteers_Still_Needed__c;
    global Double GW_Volunteers__Number_of_Volunteers__c;
    global Boolean GW_Volunteers__Ongoing__c;
    global String GW_Volunteers__Skills_Needed__c;
    global List<GW_Volunteers__Volunteer_Hours__c> GW_Volunteers__Volunteer_Hours__r;
    global List<GW_Volunteers__Job_Recurrence_Schedule__c> GW_Volunteers__Volunteer_Job_Recurrence_Schedules__r;
    global List<GW_Volunteers__Volunteer_Shift__c> GW_Volunteers__Volunteer_Job_Slots__r;
    global List<GW_Volunteers__Volunteer_Recurrence_Schedule__c> GW_Volunteers__Volunteer_Recurrence_Schedules__r;
    global String GW_Volunteers__Volunteer_Website_Time_Zone__c;
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

    global GW_Volunteers__Volunteer_Job__c () 
    {
    }
}