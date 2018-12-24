// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npe4__Relationship_Settings__c {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
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
    global List<FeedComment> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global SObject SetupOwner;
    global Id SetupOwnerId;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global Boolean npe4__Allow_AutoCreated_Duplicates__c;
    global Boolean npe4__DISABLE_RelationshipCM_trigger__c;
    global Boolean npe4__DISABLE_RelationshipContacts_trigger__c;
    global Boolean npe4__DISABLE_Relationships_trigger__c;
    global Boolean npe4__Force_Synchronous_Auto_Create__c;
    global String npe4__Gender_Field__c;
    global String npe4__Reciprocal_Method__c;
    global String npe4__Relationship_Name_Field_Id__c;
    global String npe4__Relationship_Name_Id_Field_Id__c;
    global Boolean npsp__Enable_Custom_Field_Sync__c;

    global npe4__Relationship_Settings__c () 
    {
    }
}