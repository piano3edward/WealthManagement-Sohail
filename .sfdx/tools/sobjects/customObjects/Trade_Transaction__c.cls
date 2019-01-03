// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Trade_Transaction__c {
    global List<Account_Ledger_Book__c> Account_Ledger__r;
    global Id Account__c;
    global Account Account__r;
    global List<ActivityHistory> ActivityHistories;
    global Boolean All_Sold__c;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global Decimal Avg_Buy_Price__c;
    global Decimal Avg_Sell_Price__c;
    global Decimal Brokerage_Charges__c;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessage> Emails;
    global String Equity_Type__c;
    global Id Equity__c;
    global Equity__c Equity__r;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global Decimal GST_Charges__c;
    global Decimal Gross_Amount__c;
    global Decimal Gross_Profit_2__c;
    global Decimal Gross_Profit__c;
    global List<Trade_Transaction__History> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Name;
    global Decimal Net_Amount__c;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global Decimal Price__c;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global Double Quantity__c;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global Decimal SEBI_Charges__c;
    global Decimal STT_Charges__c;
    global Double Sold_Quantity__c;
    global Decimal Stamp_Duty_Charges__c;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global Decimal Total_Charges__c;
    global List<Trade_Transaction_Lot_Book__c> Trade_Transaction_Lots_Book1__r;
    global List<Trade_Transaction_Lot_Book__c> Trade_Transaction_Lots_Book__r;
    global Decimal Transaction_Charges__c;
    global String Transaction_Type__c;
    global Decimal Turnover_Amount__c;

    global Trade_Transaction__c () 
    {
    }
}