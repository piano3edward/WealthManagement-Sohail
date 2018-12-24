// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Lead {
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global List<ActivityHistory> ActivityHistories;
    global Address Address;
    global Decimal AnnualRevenue;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CampaignMember> CampaignMembers;
    global String City;
    global List<CombinedAttachment> CombinedAttachments;
    global String Company;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global Account ConvertedAccount;
    global Id ConvertedAccountId;
    global Contact ConvertedContact;
    global Id ConvertedContactId;
    global Date ConvertedDate;
    global Opportunity ConvertedOpportunity;
    global Id ConvertedOpportunityId;
    global String Country;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global String Description;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global String Email;
    global Datetime EmailBouncedDate;
    global String EmailBouncedReason;
    global List<EmailMessageRelation> EmailMessageRelations;
    global List<EmailStatus> EmailStatuses;
    global List<EventRelation> EventRelations;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<LeadFeed> Feeds;
    global String FirstName;
    global List<ContentVersion> FirstPublishLocation;
    global String GW_Volunteers__Volunteer_Availability__c;
    global String GW_Volunteers__Volunteer_Notes__c;
    global String GW_Volunteers__Volunteer_Skills__c;
    global String GW_Volunteers__Volunteer_Status__c;
    global String GeocodeAccuracy;
    global List<LeadHistory> Histories;
    global Id Id;
    global String Industry;
    global Boolean IsConverted;
    global Boolean IsDeleted;
    global Boolean IsUnreadByOwner;
    global String Jigsaw;
    global String JigsawContactId;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LastName;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Double Latitude;
    global List<CampaignMember> LeadOrContact;
    global String LeadSource;
    global List<ListEmailIndividualRecipient> ListEmailIndividualRecipients;
    global Double Longitude;
    global Lead MasterRecord;
    global Id MasterRecordId;
    global String MobilePhone;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global Integer NumberOfEmployees;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedComment> Parent;
    global List<UserEmailPreferredPerson> PersonRecord;
    global List<SocialPersona> Personas;
    global String Phone;
    global String PhotoUrl;
    global String PostalCode;
    global List<SocialPost> Posts;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global String Rating;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<FlowRecordRelation> RelatedRecord;
    global String Salutation;
    global List<LeadShare> Shares;
    global String State;
    global String Status;
    global String Street;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global String Title;
    global List<TopicAssignment> TopicAssignments;
    global List<UndecidedEventRelation> UndecidedEventRelations;
    global String Website;
    global String npe01__Preferred_Email__c;
    global String npe01__Preferred_Phone__c;
    global Id npsp__Batch__c;
    global npsp__Batch__c npsp__Batch__r;
    global String npsp__CompanyCity__c;
    global String npsp__CompanyCountry__c;
    global String npsp__CompanyPostalCode__c;
    global String npsp__CompanyState__c;
    global String npsp__CompanyStreet__c;

    global Lead () 
    {
    }
}