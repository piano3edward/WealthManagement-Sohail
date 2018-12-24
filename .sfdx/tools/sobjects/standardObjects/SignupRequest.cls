// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class SignupRequest {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global String AuthCode;
    global List<CombinedAttachment> CombinedAttachments;
    global String Company;
    global String ConnectedAppCallbackUrl;
    global String ConnectedAppConsumerKey;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global String Country;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String CreatedOrgId;
    global String CreatedOrgInstance;
    global String Edition;
    global String ErrorCode;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<SignupRequestFeed> Feeds;
    global String FirstName;
    global List<ContentVersion> FirstPublishLocation;
    global List<SignupRequestHistory> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global Boolean IsSignupEmailSuppressed;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LastName;
    global String Name;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedComment> Parent;
    global String PreferredLanguage;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global String ResolvedTemplateId;
    global String SignupEmail;
    global String SignupSource;
    global String Status;
    global String Subdomain;
    global Datetime SystemModstamp;
    global String TemplateDescription;
    global String TemplateId;
    global Integer TrialDays;
    global String TrialSourceOrgId;
    global String Username;

    global SignupRequest () 
    {
    }
}