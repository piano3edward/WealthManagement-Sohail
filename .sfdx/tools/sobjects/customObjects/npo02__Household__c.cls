// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npo02__Household__c {
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
    global List<npo02__Household__Feed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<npo02__Household__History> Histories;
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
    global String npo02__Addressee__c;
    global Boolean npo02__Always_Anonymous__c;
    global Decimal npo02__AverageAmount__c;
    global Decimal npo02__Best_Gift_Year_Total__c;
    global String npo02__Best_Gift_Year__c;
    global List<Contact> npo02__Contacts__r;
    global Date npo02__FirstCloseDate__c;
    global String npo02__Formal_Greeting__c;
    global String npo02__Formula_MailingAddress__c;
    global String npo02__HouseholdEmail__c;
    global String npo02__HouseholdPhone__c;
    global Double npo02__Household_ID__c;
    global String npo02__Informal_Greeting__c;
    global Decimal npo02__LargestAmount__c;
    global Date npo02__LastCloseDate__c;
    global Decimal npo02__LastMembershipAmount__c;
    global Date npo02__LastMembershipDate__c;
    global String npo02__LastMembershipLevel__c;
    global String npo02__LastMembershipOrigin__c;
    global Decimal npo02__LastOppAmount__c;
    global String npo02__MailingCity__c;
    global String npo02__MailingCountry__c;
    global String npo02__MailingPostalCode__c;
    global String npo02__MailingState__c;
    global String npo02__MailingStreet__c;
    global Date npo02__MembershipEndDate__c;
    global Date npo02__MembershipJoinDate__c;
    global Double npo02__Membership_Span__c;
    global String npo02__Membership_Status__c;
    global Double npo02__NumberOfClosedOpps__c;
    global Double npo02__NumberOfMembershipOpps__c;
    global Decimal npo02__OppAmount2YearsAgo__c;
    global Decimal npo02__OppAmountLastNDays__c;
    global Decimal npo02__OppAmountLastYear__c;
    global Decimal npo02__OppAmountThisYear__c;
    global Double npo02__OppsClosed2YearsAgo__c;
    global Double npo02__OppsClosedLastNDays__c;
    global Double npo02__OppsClosedLastYear__c;
    global Double npo02__OppsClosedThisYear__c;
    global String npo02__SYSTEM_CUSTOM_NAMING__c;
    global Decimal npo02__SmallestAmount__c;
    global Decimal npo02__TotalMembershipOppAmount__c;
    global Decimal npo02__TotalOppAmount__c;
    global Double npsp__Number_of_Household_Members__c;

    global npo02__Household__c () 
    {
    }
}