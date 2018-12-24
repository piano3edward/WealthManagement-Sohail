// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class npo02__Households_Settings__c {
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
    global List<FeedItem> Parent;
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
    global Boolean npo02__Advanced_Household_Naming__c;
    global Boolean npo02__Always_Rollup_to_Primary_Contact__c;
    global Boolean npo02__Async_Household_Naming__c;
    global Double npo02__Batch_Size__c;
    global Boolean npo02__DISABLE_HouseholdAfter_trigger__c;
    global Boolean npo02__DISABLE_HouseholdBefore_trigger__c;
    global Boolean npo02__DISABLE_Household_Opportunity_trigger__c;
    global Boolean npo02__DISABLE_Households_trigger__c;
    global Boolean npo02__DISABLE_OpportunityRollup_trigger__c;
    global Boolean npo02__Enable_Opp_Rollup_Triggers__c;
    global Boolean npo02__Enable_Soft_Credit_Rollups__c;
    global Boolean npo02__Enable_Update_Check__c;
    global String npo02__Excluded_Account_Opp_Rectypes__c;
    global String npo02__Excluded_Account_Opp_Types__c;
    global String npo02__Excluded_Contact_Opp_Rectypes__c;
    global String npo02__Excluded_Contact_Opp_Types__c;
    global Boolean npo02__Force_Fiscal_Year__c;
    global String npo02__Has_Package_Update__c;
    global Boolean npo02__Household_Contact_Roles_On__c;
    global String npo02__Household_Creation_Excluded_Recordtypes__c;
    global String npo02__Household_Mailing_List_ID__c;
    global String npo02__Household_Member_Contact_Role__c;
    global String npo02__Household_OCR_Excluded_Recordtypes__c;
    global String npo02__Household_Rules__c;
    global Datetime npo02__Last_Update_Check__c;
    global String npo02__Max_Package_Version__c;
    global Double npo02__Membership_Grace_Period__c;
    global String npo02__Membership_Record_Types__c;
    global String npo02__Opp_Rollup_Scheduled_Job_Id__c;
    global String npo02__Package_Update_URL__c;
    global Double npo02__Rollup_N_Day_Value__c;
    global Double npo02__Schedule_Job_Limit__c;
    global String npo02__Soft_Credit_Roles__c;
    global Double npo02__Update_Check_Interval__c;
    global Boolean npo02__Use_Fiscal_Year_for_Rollups__c;
    global String npsp__Matched_Donor_Role__c;
    global Boolean npsp__Use_Dated_Conversion_Rates__c;

    global npo02__Households_Settings__c () 
    {
    }
}