/* checksum : e5da6e170530bfd3ab3cf470d98892f4 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
service sapci {
  @cds.external : true
  @cds.persistence.skip : true
  entity ServiceEndpoints {
    key Id : String not null;
    Name : String;
    Title : String not null;
    Version : String not null;
    Summary : String not null;
    Description : String not null;
    @odata.Type : 'Edm.DateTime'
    LastUpdated : DateTime;
    Protocol : String;
    EntryPoints : Association to many EntryPoints {  };
    ApiDefinitions : Association to many APIDefinitions {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationConnections {
    key Id : Integer not null;
    ResolvedConnection : Boolean;
    SenderHost : String not null;
    ReceiverHost : String not null;
    IntegrationFlows : Association to many IntegrationFlows {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ValueMappingDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String not null;
    Description : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    ValMapSchema : Association to many ValMapSchema {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CustomTags {
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MDIDeltaToken {
    key Operation : String not null;
    key Entity : String not null;
    key Version : String not null;
    DeltaToken : String;
    LastUpdateTimestamp : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationDesigntimeLocks {
    key ResourceId : String not null;
    ArtifactId : String not null;
    ArtifactName : String;
    ArtifactType : String;
    PackageId : String;
    PackageName : String;
    @odata.Type : 'Edm.DateTime'
    CreatedAt : DateTime;
    CreatedBy : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ServiceInterfaceDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String;
    Namespace : String;
    Description : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Resources : Association to many Resources {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationAdapterDesigntimeArtifacts {
    key Id : String not null;
    Version : String not null;
    PackageId : String;
    Name : String;
    ArtifactContent : LargeBinary;
    Description : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BuildAndDeployStatus {
    key TaskId : String not null;
    Status : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Resources {
    key Name : String not null;
    key ResourceType : String not null;
    ReferencedResourceType : String;
    ResourceSize : Integer64;
    ResourceSizeUnit : String;
    ResourceContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ValMapSchema {
    key SrcAgency : String not null;
    key SrcId : String not null;
    key TgtAgency : String not null;
    key TgtId : String not null;
    State : String;
    ValMaps : Association to many ValMaps {  };
    DefaultValMaps : Association to many DefaultValMaps {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationPackages {
    key Id : String not null;
    Name : String not null;
    ResourceId : String not null;
    Description : String;
    ShortText : String not null;
    Version : String;
    Vendor : String;
    PartnerContent : Boolean;
    UpdateAvailable : Boolean;
    Mode : String;
    SupportedPlatform : String;
    ModifiedBy : String;
    CreationDate : String;
    ModifiedDate : String;
    CreatedBy : String;
    Products : String;
    Keywords : String;
    Countries : String;
    Industries : String;
    LineOfBusiness : String;
    PackageContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    IntegrationDesigntimeArtifacts : Association to many IntegrationDesigntimeArtifacts {  };
    ValueMappingDesigntimeArtifacts : Association to many ValueMappingDesigntimeArtifacts {  };
    MessageMappingDesigntimeArtifacts : Association to many MessageMappingDesigntimeArtifacts {  };
    ScriptCollectionDesigntimeArtifacts : Association to many ScriptCollectionDesigntimeArtifacts {  };
    DataTypeDesigntimeArtifacts : Association to many DataTypeDesigntimeArtifacts {  };
    MessageTypeDesigntimeArtifacts : Association to many MessageTypeDesigntimeArtifacts {  };
    FaultMessageTypeDesigntimeArtifacts : Association to many FaultMessageTypeDesigntimeArtifacts {  };
    ServiceInterfaceDesigntimeArtifacts : Association to many ServiceInterfaceDesigntimeArtifacts {  };
    CustomTags : Association to many CustomTags {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DesignGuidelineExecutionResults {
    key ExecutionId : String not null;
    ArtifactVersion : String;
    ExecutionStatus : String;
    ExecutionTime : String;
    ReportType : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    DesignGuidelines : Association to many DesignGuidelines {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageMappingDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String not null;
    Description : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Resources : Association to many Resources {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ScriptCollectionDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String;
    Name : String;
    Description : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Resources : Association to many Resources {  };
    DesignGuidelineExecutionResults : Association to many DesignGuidelineExecutionResults {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity APIDefinitions {
    key Url : String not null;
    Name : String not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity FaultMessageTypeDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String;
    Namespace : String;
    Description : String;
    DataTypeUsed : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity NumberRanges {
    key Name : String not null;
    Description : String;
    MaxValue : String;
    MinValue : String;
    Rotate : String;
    CurrentValue : String;
    FieldLength : String;
    DeployedBy : String;
    @odata.Type : 'Edm.DateTime'
    DeployedOn : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Configurations {
    key ParameterKey : String not null;
    ParameterValue : String;
    DataType : String;
    Description : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CustomTagConfigurations {
    key Id : String not null;
    CustomTagsConfigurationContent : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ValMaps {
    key Id : String not null;
    Value : Value not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity EntryPoints {
    key Url : String not null;
    Name : String not null;
    Type : String;
    AdditionalInformation : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DesignGuidelines {
    key GuidelineId : String not null;
    GuidelineName : String;
    Category : String;
    Severity : String;
    Applicability : String;
    Compliance : String;
    IsGuidelineSkipped : Boolean;
    SkipReason : String;
    SkippedBy : String;
    ExpectedKPI : String;
    ActualKPI : String;
    ViolatedComponents : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DataTypeDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String;
    Namespace : String;
    Description : String;
    ArtifactContent : LargeBinary;
    IsSimpleType : Boolean;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DefaultValMaps {
    key Id : String not null;
    Value : Value not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String;
    Name : String;
    Description : String;
    Sender : String;
    Receiver : String;
    CreatedBy : String;
    CreatedAt : String;
    ModifiedBy : String;
    ModifiedAt : String;
    ArtifactContent : LargeBinary;
    Comment : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Configurations : Association to many Configurations {  };
    Resources : Association to many Resources {  };
    DesignGuidelineExecutionResults : Association to many DesignGuidelineExecutionResults {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageTypeDesigntimeArtifacts {
    key Id : String not null;
    key Version : String not null;
    PackageId : String not null;
    Name : String;
    Namespace : String;
    Description : String;
    DataTypeUsed : String;
    ArtifactContent : LargeBinary;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationFlows {
    key Id : String not null;
    Name : String;
    SenderHostType : String;
    ReceiverHostType : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity B2BArchivingKeyPerformanceIndicators {
    @odata.Type : 'Edm.DateTime'
    key RunStart : DateTime not null;
    RunDurationInMinutes : Integer;
    DataCollectionDurationInMinutes : Integer;
    DataCompressionDurationInMinutes : Integer;
    DataUploadDurationInMinutes : Integer;
    DocumentsToBeArchived : Integer;
    DocumentsArchived : Integer;
    DocumentsArchivingFailed : Integer;
    @odata.Type : 'Edm.DateTime'
    DocumentsArchivedUntilDate : DateTime;
    @odata.Type : 'Edm.DateTime'
    DateOfOldestDocumentToBeArchivedAfterRun : DateTime;
    DataUploadedInMb : Integer;
    RunStatus : String;
    RunFailedPhase : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity TechnicalAcknowledgements {
    key Id : String not null;
    Type : String;
    Direction : String;
    PayloadId : String;
    Status : String;
    PayloadContainerContentType : String;
    PayloadContentType : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    BusinessDocumentProcessingEvent : Association to BusinessDocumentProcessingEvents {  };
    BusinessDocument : Association to BusinessDocuments {  };
    FunctionalAcknowledgement : Association to FunctionalAcknowledgements {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity B2BArchivingConfigurations {
    key Id : String not null;
    Active : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentNotes {
    key Id : String not null;
    UserId : String;
    @odata.Type : 'Edm.DateTime'
    CreateTimeStamp : DateTime;
    Text : String;
    Type : String;
    BusinessDocumentProcessingEvent : Association to BusinessDocumentProcessingEvents {  };
    BusinessDocument : Association to BusinessDocuments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentExtFields {
    key Id : String not null;
    AgreementName : String;
    AgreementNameHyperlink : String;
    UsageIndicator : String;
    UsageIndicatorHyperlink : String;
    As2MessageId : String;
    As2MessageIdHyperlink : String;
    ReceiverAs2MessageId : String;
    ReceiverAs2MessageIdHyperlink : String;
    BusinessDocument : Association to BusinessDocuments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ErrorDetails {
    key Id : String not null;
    ErrorInformation : String;
    ErrorCategory : String;
    IsTransientError : Boolean;
    BusinessDocumentProcessingEvent : Association to BusinessDocumentProcessingEvents {  };
    OrphanedInterchange : Association to OrphanedInterchanges {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentProcessingEvents {
    key Id : String not null;
    EventType : String;
    @odata.Type : 'Edm.DateTime'
    Date : DateTime;
    MonitoringType : String;
    MonitoringId : String;
    BusinessDocument : Association to BusinessDocuments {  };
    FunctionalAcknowledgement : Association to FunctionalAcknowledgements {  };
    BusinessDocumentPayload : Association to many BusinessDocumentPayloads {  };
    ErrorDetails : Association to many ErrorDetails {  };
    BusinessDocumentNotes : Association to many BusinessDocumentNotes {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity FunctionalAcknowledgements {
    key Id : String not null;
    PayloadId : String;
    PayloadContainerContentType : String;
    PayloadContentType : String;
    DocumentId : String;
    MessageType : String;
    DocumentStandard : String;
    Direction : String;
    Status : String;
    TransmissionStatus : String;
    TransmissionErrorInformation : String;
    TransmissionHttpCode : Integer;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    BusinessDocumentProcessingEvents : Association to many BusinessDocumentProcessingEvents {  };
    BusinessDocument : Association to BusinessDocuments {  };
    TechnicalAcknowledgement : Association to TechnicalAcknowledgements {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentPayloads {
    key Id : String not null;
    ProcessingState : String;
    Direction : String;
    PayloadId : String;
    PayloadContainerContentType : String;
    PayloadContentType : String;
    ArchivingRelevant : Boolean;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    BusinessDocumentProcessingEvent : Association to BusinessDocumentProcessingEvents {  };
    BusinessDocument : Association to BusinessDocuments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentRelations {
    key SourceDocumentId : String not null;
    key TargetDocumentId : String not null;
    RelationType : String;
    TargetBusinessDocument : Association to BusinessDocuments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CustomObjects {
    key Id : String not null;
    SearchFieldValue1 : String;
    SearchFieldValue2 : String;
    SearchFieldValue3 : String;
    SearchFieldValue4 : String;
    SearchFieldValue5 : String;
    SearchFieldValue6 : String;
    SearchFieldValue7 : String;
    SearchFieldValue8 : String;
    SearchFieldValue9 : String;
    SearchFieldValue10 : String;
    BusinessDocument : Association to BusinessDocuments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocumentProtocolHeaders {
    key Id : String not null;
    Name : String;
    Value : String;
    BusinessDocument : Association to BusinessDocuments {  };
    OrphanedInterchange : Association to OrphanedInterchanges {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BusinessDocuments {
    key Id : String not null;
    SenderMessageType : String;
    SenderGroupControlNumber : String;
    SenderDocumentStandard : String;
    SenderInterchangeControlNumber : String;
    SenderMessageNumber : String;
    SenderTradingPartnerName : String;
    SrcDocId : String;
    RelationType : String;
    SenderSystemId : String;
    SenderAdapterType : String;
    SenderCommunicationPartnerName : String;
    ReceiverMessageType : String;
    ReceiverGroupControlNumber : String;
    ReceiverDocumentStandard : String;
    ReceiverInterchangeControlNumber : String;
    ReceiverMessageNumber : String;
    ReceiverSystemId : String;
    ReceiverAdapterType : String;
    ReceiverTradingPartnerName : String;
    ReceiverCommunicationPartnerName : String;
    AgreedSenderIdentiferAtSenderSide : String;
    AgreedSenderIdentiferQualifierAtSenderSide : String;
    AgreedReceiverIdentiferAtSenderSide : String;
    AgreedReceiverIdentiferQualifierAtSenderSide : String;
    AgreedSenderIdentiferAtReceiverSide : String;
    AgreedSenderIdentiferQualifierAtReceiverSide : String;
    AgreedReceiverIdentiferAtReceiverSide : String;
    AgreedReceiverIdentiferQualifierAtReceiverSide : String;
    Bulk : Boolean;
    TransactionDocumentType : String;
    ProcessingStatus : String;
    ReceiverFunctionalAckStatus : String;
    ReceiverTechnicalAckStatus : String;
    OverallStatus : String;
    @odata.Type : 'Edm.DateTime'
    StartedAt : DateTime;
    @odata.Type : 'Edm.DateTime'
    EndedAt : DateTime;
    @odata.Type : 'Edm.DateTime'
    DocumentCreationTime : DateTime;
    @odata.Type : 'Edm.DateTime'
    TechnicalAckDueTime : DateTime;
    @odata.Type : 'Edm.DateTime'
    FunctionalAckDueTime : DateTime;
    ResendAllowed : Boolean;
    RetryAllowed : Boolean;
    AgreementTypeName : String;
    TransactionTypeName : String;
    ArchivingStatus : String;
    InterchangeName : String;
    InterchangeDirection : String;
    TransactionActivityType : String;
    BusinessDocumentRelations : Association to many BusinessDocumentRelations {  };
    BusinessDocumentProcessingEvents : Association to many BusinessDocumentProcessingEvents {  };
    BusinessDocumentPayloads : Association to many BusinessDocumentPayloads {  };
    SenderTechnicalAcknowledgement : Association to TechnicalAcknowledgements {  };
    ReceiverTechnicalAcknowledgement : Association to TechnicalAcknowledgements {  };
    SenderFunctionalAcknowledgement : Association to FunctionalAcknowledgements {  };
    ReceiverFunctionalAcknowledgement : Association to FunctionalAcknowledgements {  };
    LastErrorDetails : Association to ErrorDetails {  };
    CustomObjects : Association to CustomObjects {  };
    BusinessDocumentExtFields : Association to BusinessDocumentExtFields {  };
    BusinessDocumentNotes : Association to many BusinessDocumentNotes {  };
    BusinessDocumentProtocolHeaders : Association to many BusinessDocumentProtocolHeaders {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ExtendedFieldsConfigs {
    key FieldName : String not null;
    Length : String;
    SearchField : Boolean;
    ODataPropertyName : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity OrphanedInterchanges {
    key Id : String not null;
    AdapterType : String;
    @odata.Type : 'Edm.DateTime'
    Date : DateTime;
    ProcessingStatus : String;
    BusinessDocumentProtocolHeaders : Association to many BusinessDocumentProtocolHeaders {  };
    BusinessDocumentProcessingEvent : Association to BusinessDocumentProcessingEvents {  };
    BusinessDocumentPayloads : Association to many BusinessDocumentPayloads {  };
    ErrorDetails : Association to ErrorDetails {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CommunicationProtocolHeaders {
    key Id : String not null;
    Name : String;
    Value : String;
    OrphanedInterchange : Association to OrphanedInterchanges {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IdempotentRepositoryEntries {
    key HexSource : String(2000) not null;
    key HexEntry : String(2000) not null;
    Source : String;
    Entry : String;
    Component : String;
    CreationTime : Integer64;
    ExpirationTime : Integer64;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity GenericIdempotentRepositoryEntries {
    key HexVendor : String not null;
    key HexSource : String(2000) not null;
    key HexEntry : String(2000) not null;
    key HexComponent : String(200) not null;
    Source : String;
    Entry : String;
    Component : String;
    Vendor : String(100);
    CreationTime : Integer64;
    ExpirationTime : Integer64;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IdMapFromIds {
    key FromId : String(200) not null;
    ToIds : Association to many IdMapToIds {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IdMapToIds {
    key ToId : String not null;
    FromId_ : String;
    Mapper : String;
    @odata.Type : 'Edm.DateTimeOffset'
    ExpirationTime : DateTime;
    Qualifier : String;
    Context : String;
    FromId : Association to IdMapFromIds {  };
    FromId2s : Association to many IdMapFromId2s {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IdMapFromId2s {
    key FromId : String(200) not null;
    ToId2 : String;
    Mapper : String;
    @odata.Type : 'Edm.DateTimeOffset'
    ExpirationTime : DateTime;
    Qualifier : String;
    Context : String;
    ToId : Association to IdMapToIds {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Locks {
    key Component : String not null;
    key HexSource : String not null;
    key HexEntry : String not null;
    Source : String;
    Entry : String;
    LockName : String;
    CreationTime : Integer64;
    ExpirationTime : Integer64;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DataStores {
    key DataStoreName : String not null;
    key IntegrationFlow : String not null;
    key Type : String not null;
    Visibility : String;
    NumberOfMessages : Integer64;
    NumberOfOverdueMessages : Integer64;
    Entries : Association to many DataStoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity DataStoreEntries {
    key Id : String not null;
    key DataStoreName : String not null;
    key IntegrationFlow : String not null;
    key Type : String not null;
    Status : String;
    MessageId : String;
    @odata.Type : 'Edm.DateTime'
    DueAt : DateTime;
    @odata.Type : 'Edm.DateTime'
    CreatedAt : DateTime;
    @odata.Type : 'Edm.DateTime'
    RetainUntil : DateTime;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Variables {
    key VariableName : String not null;
    key IntegrationFlow : String not null;
    Visibility : String;
    @odata.Type : 'Edm.DateTime'
    UpdatedAt : DateTime;
    @odata.Type : 'Edm.DateTime'
    RetainUntil : DateTime;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity JmsMessages {
    key Msgid : String(2000) not null;
    key Name : String(200) not null;
    key Failed : Boolean not null;
    Mplid : String;
    CreatedAt : Integer64;
    RetryCount : Integer64;
    NextRetry : Integer64;
    MimeMsgid : String;
    ContentType : String;
    MimeVersion : String;
    OverdueAt : Integer64;
    ExpirationDate : Integer64;
    SapSender : String;
    SapReceiver : String;
    SapMsgType : String;
    SapApplicationId : String;
    SapMplCorrelationId : String;
    SapMessageProcessingLogCustomStatus : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Queue : Association to Queues {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Queues {
    key Name : String(200) not null;
    NumbOfMsgs : Integer64;
    Size : Integer64;
    Type : Integer64;
    State : Integer64;
    FillGrade : Integer64;
    Active : Integer64;
    Exclusive : Integer64;
    Messages : Association to many JmsMessages {  };
    Artifacts : Association to many JmsArtifacts {  };
    JmsQueues : Association to many JmsQueues {  };
    Broker : Association to JmsBrokers {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity JmsQueues {
    key Name : String(200) not null;
    MaxQueueSize : Integer64;
    ActiveState : Integer64;
    QueueSize : Integer64;
    State : Integer64;
    Queue : Association to Queues {  };
    Broker : Association to JmsBrokers {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity JmsBrokers {
    key ![Key] : String(10) not null;
    Capacity : Integer64;
    MaxCapacity : Integer64;
    IsTransactedSessionsHigh : Integer;
    IsConsumersHigh : Integer;
    IsProducersHigh : Integer;
    MaxQueueNumber : Integer64;
    QueueNumber : Integer64;
    CapacityOk : Integer64;
    CapacityWarning : Integer64;
    CapacityError : Integer64;
    IsQueuesHigh : Integer;
    IsMessageSpoolHigh : Integer;
    QueueNamesHigh : Association to many JmsQueues {  };
    InactiveQueues : Association to many Queues {  };
    QueueStates : Association to many QueueStates {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity JmsArtifacts {
    key Name : String(200) not null;
    Id : String;
    Direction : Integer64;
    Queue : Association to Queues {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity QueueStates {
    key Name : String(200) not null;
    State : Integer64;
    Broker : Association to JmsBrokers {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessagingQueues {
    key queueName : String(200) not null;
    numberOfMessages : Integer64;
    active : Boolean;
    exclusive : Boolean;
    MessagingMessages : Association to many MessagingMessages {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessagingMessages {
    key jmsMessageId : String(2000) not null;
    key queueName : String(200) not null;
    failed : Boolean;
    mplId : String(200);
    createdAt : Integer64;
    retryCount : Integer64;
    nextRetry : Integer64;
    overdueAt : Integer64;
    expirationDate : Integer64;
    sender : String(500);
    receiver : String(500);
    messageType : String(200);
    applicationId : String(200);
    correlationId : String(200);
    customStatus : String(200);
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    MessagingQueues : Association to MessagingQueues {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity WNNodes {
    key Type : String not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity StringParameters : Parameter {
    Value : String(4000) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity BinaryParameters : Parameter {
    ContentType : String(300) not null;
    Value : Binary(1572864) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity AlternativePartners {
    key Hexagency : String(480) not null;
    key Hexscheme : String(480) not null;
    key Hexid : String(1020) not null;
    Agency : String(120) not null;
    Scheme : String(120) not null;
    Id : String(255) not null;
    Pid : String(60) not null;
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    LastModifiedTime : DateTime;
    CreatedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    CreatedTime : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity AuthorizedUsers {
    key User : String(150) not null;
    Pid : String(60) not null;
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    LastModifiedTime : DateTime;
    CreatedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    CreatedTime : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Partners {
    key Pid : String(60) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity NodeProfiles {
    key Name : String(100) not null;
    Roles : Association to many Roles {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Roles {
    key Name : String not null;
    NodeProfile : Association to NodeProfiles {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity XiDataStores {
    key Name : String not null;
    key Qualifier : String not null;
    Participant : String not null;
    Channel : String not null;
    Artifact : Association to XiDataStoreArtifacts {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity XiDataStoreArtifacts {
    key Id : String not null;
    Name : String;
    DataStores : Association to many XiDataStores {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeyEntries {
    key Id : String not null;
    KeyId : String;
    Fingerprint : String;
    Type : String;
    @odata.Type : 'Edm.DateTimeOffset'
    CreatedTime : DateTime;
    Algorithm : String;
    KeyLength : Integer;
    KeyFlags : Integer;
    KeyFlagsLabel : String;
    ValidityState : String(20);
    @odata.Type : 'Edm.DateTimeOffset'
    ValidUntil : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    ModifiedOn : DateTime;
    ErrorInformation : String;
    PrimaryUserId : String(512);
    UserIds : Association to many PgpUserIds {  };
    SubKeys : Association to many PgpSubKeys {  };
    PublicResource : Association to PgpKeyPublicResources {  };
    SecretResource : Association to PgpKeySecretResources {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeyEntryImportResults {
    key Id : String not null;
    KeyId : String;
    PrimaryUserId : String(512);
    Status : String;
    StatusDetails : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpUserIds {
    key UserId : String(512) not null;
    PgpKeyEntry : Association to PgpKeyEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpSubKeys {
    key Id : String not null;
    KeyId : String;
    @odata.Type : 'Edm.DateTimeOffset'
    CreatedTime : DateTime;
    Algorithm : String;
    KeyLength : Integer;
    KeyFlags : Integer;
    KeyFlagsLabel : String;
    ValidityState : String;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidUntil : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    ModifiedOn : DateTime;
    PgpKeyEntry : Association to PgpKeyEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeyPublicResources {
    key KeyId : String not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    PgpKeyEntry : Association to PgpKeyEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeySecretResources {
    key KeyId : String not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    PgpKeyEntry : Association to PgpKeyEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeyringPublicResources {
    key Name : String not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpKeyringSecretResources {
    key Name : String not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity PgpKeyrings {
    key Name : String(100) not null;
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    LastModifiedTime : DateTime;
    Size : Integer;
    RuntimeIds : String(620);
    AggregatedStatus : String(20);
    AggregatedErrors : String(5000);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpPublicKeyrings : PgpKeyrings {
    Runtimes : Association to many KeyringRuntimeAssignment {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity PgpSecretKeyrings : PgpKeyrings {
    Runtimes : Association to many KeyringRuntimeAssignment {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity KeyringRuntimeAssignment {
    key KeyringName : String(30) not null;
    key RuntimeId : String(30) not null;
    Status : String(20) not null;
    StatusUpdatedAt : Integer64 not null;
    Errors : String(5000);
    Pubring : Association to PgpPublicKeyrings {  };
    Secring : Association to PgpSecretKeyrings {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity KeystoreEntries : KeystoreEntryCertificatePart {
    Type : String(30);
    Owner : String(30);
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    LastModifiedTime : DateTime;
    CreatedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    CreatedTime : DateTime;
    Status : String(500);
    ChainCertificates : Association to many ChainCertificates {  };
    Certificate : Association to CertificateResources {  };
    Sshkey : Association to SSHKeyResources {  };
    Keystore : Association to Keystores {  };
    ChainResource : Association to CertificateChainResources {  };
    SigningRequest : Association to CertificateSigningRequests {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity HistoryKeystoreEntries : KeystoreEntries {
    ActivatedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    ActiveFrom : DateTime;
    DeactivatedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    ActiveUntil : DateTime;
    ActivationSequenceNumber : Integer;
    OriginalAlias : String(250);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity KeyPairResources : KeystoreEntryAlias {
    Resource : Binary(30072);
    Password : String(500);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ChainCertificates {
    key Hexalias : String(2000) not null;
    key Index : Integer not null;
    Alias : String(250) not null;
    Validity : String(1000);
    KeyType : String(30);
    KeySize : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotBefore : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotAfter : DateTime;
    SubjectDN : String(50000);
    IssuerDN : String(50000);
    SerialNumber : String(66);
    SignatureAlgorithm : String(60);
    Version : Integer;
    FingerprintSha1 : String(200);
    FingerprintSha256 : String(200);
    FingerprintSha512 : String(200);
    KeystoreEntry : Association to KeystoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity SSHKeyResources : KeystoreEntryAlias {
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    KeystoreEntry : Association to KeystoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity KeyPairGenerationRequests : KeystoreEntryCertificatePartBase {
    KeyAlgorithmParameter : String(500);
    CommonName : String(500);
    OrganizationUnit : String(500);
    Organization : String(500);
    Locality : String(500);
    State : String(500);
    Country : String(2);
    Email : String(500);
    Extensions : Binary(3000);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CertificateSigningRequests {
    key Hexalias : String(2000) not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    KeystoreEntry : Association to KeystoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CertificateResources : KeystoreEntryAlias {
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    KeystoreEntry : Association to KeystoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CertificateChainResources : KeystoreEntryAlias {
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    KeystoreEntry : Association to KeystoreEntries {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity KeystoreResources {
    key Name : String(100) not null;
    Resource : Binary(6291456);
    Password : String(300);
    Aliases : String(2097152);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity Keystores {
    key Name : String(100) not null;
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTimeOffset'
    LastModifiedTime : DateTime;
    Size : Integer;
    RuntimeIds : String(620);
    AggregatedStatus : String(20);
    AggregatedErrors : String(5000);
    Entries : Association to many KeystoreEntries {  };
    Runtimes : Association to many RuntimeSyncInfos {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity RuntimeSyncInfos {
    key KeystoreName : String(30) not null;
    key RuntimeId : String(30) not null;
    Status : String(20) not null;
    StatusUpdatedAt : Integer64 not null;
    Errors : String(5000);
    Keystore : Association to Keystores {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity SecurityArtifacts {
    key Name : String not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity SSHKeyGenerationRequests : KeystoreEntryCertificatePartBase {
    SSHFile : String(10000);
    Password : String(500);
    KeyAlgorithmParameter : String(500);
    CommonName : String(500);
    OrganizationUnit : String(500);
    Organization : String(500);
    Locality : String(500);
    State : String(500);
    Country : String(2);
    Email : String(500);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity RSAKeyGenerationRequests : KeystoreEntryAlias {
    RSAFile : Binary(10000) not null;
    SignatureAlgorithm : String(60);
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotBefore : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotAfter : DateTime;
    SerialNumber : String(256);
    CommonName : String(500);
    OrganizationUnit : String(500);
    Organization : String(500);
    Locality : String(500);
    State : String(500);
    Country : String(2);
    Email : String(500);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity UserCredentialParameters : Parameter {
    User : String(200) not null;
    Password : String(200);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity UserCredentials {
    key Name : String not null;
    Kind : String;
    Description : String;
    User : String;
    Password : String;
    CompanyId : String;
    SecurityArtifactDescriptor : SecurityArtifactDescriptor not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity SecureParameters {
    key Name : String(150) not null;
    Description : String(1024);
    SecureParam : String(4096);
    DeployedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    DeployedOn : DateTime;
    Status : String(20);
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity OAuth2ClientCredentials {
    key Name : String(1024) not null;
    Description : String(1024);
    TokenServiceUrl : String(1024) not null;
    ClientId : String(1024) not null;
    ClientSecret : String(1024);
    ClientAuthentication : String(1024);
    Scope : String(1024);
    ScopeContentType : String(5120);
    Resource : String(1024);
    Audience : String(1024);
    SecurityArtifactDescriptor : SecurityArtifactDescriptor not null;
    CustomParameters : Association to many CustomParameters {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity CustomParameters {
    key ![Key] : String(1024) not null;
    key Value : String(1024) not null;
    key SendAsPartOf : String(1024) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity OAuth2AuthorizationCodes {
    key Name : String(150) not null;
    Type : String(50) not null;
    Description : String(200);
    Provider : String(50) not null;
    TokenUrl : String(2000) not null;
    AuthUrl : String(2000) not null;
    ClientId : String(200) not null;
    ClientSecret : String(1000);
    ClientAuthentication : String(200);
    Scope : String(4000);
    UserName : String(1000);
    RefreshToken : String(20000);
    RefreshTokenCreationTime : Integer64;
    RefreshTokenExisting : Boolean;
    RefreshTokenExpiryPeriod : Integer64 not null;
    LastModifiedBy : String(150);
    LastModifiedTime : Integer64;
    RuntimeId : String(255);
    IsEdge : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity IntegrationRuntimeArtifacts {
    key Id : String not null;
    Version : String;
    Name : String;
    Type : String;
    DeployedBy : String;
    @odata.Type : 'Edm.DateTime'
    DeployedOn : DateTime;
    Status : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    ErrorInformation : Association to RuntimeArtifactErrorInformations {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity RuntimeArtifactErrorInformations {
    key Id : String not null;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogRunStepProperties {
    key RunId : String not null;
    key ChildCount : Integer not null;
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ArtifactReferences {
    key Id : Integer64 not null;
    Name : String;
    Description : String;
    Type : String;
    ConditionAttribute : String;
    ConditionValue : String;
    ConditionType : String;
    AccessPolicy : Association to AccessPolicies {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ExternalLoggingActivationStatus {
    key Id : String not null;
    Active : Boolean;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogRunSteps {
    key RunId : String not null;
    key ChildCount : Integer not null;
    @odata.Type : 'Edm.DateTime'
    StepStart : DateTime;
    @odata.Type : 'Edm.DateTime'
    StepStop : DateTime;
    StepId : String;
    ModelStepId : String;
    BranchId : String;
    Status : String;
    Error : String;
    Activity : String;
    RunStepProperties : Association to many MessageProcessingLogRunStepProperties {  };
    TraceMessages : Association to many TraceMessages {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogCustomHeaderProperties {
    key Id : String not null;
    Name : String;
    Value : String;
    Log : Association to MessageProcessingLogs {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ArchivingConfigurations {
    key Id : String not null;
    Active : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity TraceMessageExchangeProperties {
    key TraceId : Integer64 not null;
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogs {
    key MessageGuid : String not null;
    CorrelationId : String;
    ApplicationMessageId : String;
    PredecessorMessageGuid : String;
    ApplicationMessageType : String;
    @odata.Type : 'Edm.DateTime'
    LogStart : DateTime;
    @odata.Type : 'Edm.DateTime'
    LogEnd : DateTime;
    Sender : String;
    Receiver : String;
    IntegrationFlowName : String;
    Status : String;
    AlternateWebLink : String;
    IntegrationArtifact : IntegrationArtifact not null;
    LogLevel : String;
    CustomStatus : String;
    ArchivingStatus : String;
    ArchivingSenderChannelMessages : Boolean;
    ArchivingReceiverChannelMessages : Boolean;
    ArchivingLogAttachments : Boolean;
    ArchivingPersistedMessages : Boolean;
    TransactionId : String;
    PreviousComponentName : String;
    LocalComponentName : String;
    OriginComponentName : String;
    LastChangeTime : Integer64;
    CustomHeaderProperties : Association to many MessageProcessingLogCustomHeaderProperties {  };
    MessageStoreEntries : Association to many MessageStoreEntries {  };
    ErrorInformation : Association to MessageProcessingLogErrorInformations {  };
    AdapterAttributes : Association to many MessageProcessingLogAdapterAttributes {  };
    Attachments : Association to many MessageProcessingLogAttachments {  };
    Runs : Association to many MessageProcessingLogRuns {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ArchivingKeyPerformanceIndicators {
    @odata.Type : 'Edm.DateTime'
    key RunStart : DateTime not null;
    RunDurationInMinutes : Integer;
    DataCollectionDurationInMinutes : Integer;
    DataCompressionDurationInMinutes : Integer;
    DataUploadDurationInMinutes : Integer;
    MplsToBeArchived : Integer;
    MplsArchived : Integer;
    MplsArchivingFailed : Integer;
    @odata.Type : 'Edm.DateTime'
    MplsArchivedUntilDate : DateTime;
    @odata.Type : 'Edm.DateTime'
    DateOfOldestMplToBeArchivedAfterRun : DateTime;
    DataUploadedInMb : Integer;
    RunStatus : String;
    RunFailedPhase : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageStoreEntryAttachments {
    key Id : String not null;
    Name : String;
    ContentType : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Properties : Association to many MessageStoreEntryAttachmentProperties {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity AuditLogs {
    key ChangeId : String not null;
    Action : String;
    @odata.Type : 'Edm.DateTime'
    Timestamp : DateTime;
    UserName : String;
    ObjName : String;
    ObjType : String;
    Source : String;
    NodeType : String;
    UserType : String;
    CustomerVisible : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageStoreEntryAttachmentProperties {
    key AttachmentId : String not null;
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity TraceMessageProperties {
    key TraceId : Integer64 not null;
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageStoreEntries {
    key Id : String not null;
    MessageGuid : String;
    MessageStoreId : String;
    @odata.Type : 'Edm.DateTime'
    TimeStamp : DateTime;
    HasAttachments : Boolean;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Attachments : Association to many MessageStoreEntryAttachments {  };
    Properties : Association to many MessageStoreEntryProperties {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageStoreEntryProperties {
    key MessageId : String not null;
    key Name : String not null;
    Value : String;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogAttachments {
    key Id : String not null;
    MessageGuid : String;
    @odata.Type : 'Edm.DateTime'
    TimeStamp : DateTime;
    Name : String;
    ContentType : String;
    PayloadSize : Integer64;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity LogFiles {
    key Name : String not null;
    key Application : String not null;
    @odata.Type : 'Edm.DateTimeOffset'
    LastModified : DateTime;
    ContentType : String;
    LogFileType : String;
    NodeScope : String;
    Size : Integer64;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogRuns {
    key Id : String not null;
    @odata.Type : 'Edm.DateTime'
    RunStart : DateTime;
    @odata.Type : 'Edm.DateTime'
    RunStop : DateTime;
    LogLevel : String;
    OverallState : String;
    ProcessId : String;
    RunSteps : Association to many MessageProcessingLogRunSteps {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogErrorInformations {
    key MessageGuid : String not null;
    Type : String;
    LastErrorModelStepId : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity AccessPolicies {
    key Id : Integer64 not null;
    RoleName : String;
    Description : String;
    ArtifactReferences : Association to many ArtifactReferences {  };
    AccessPolicyRuntimeAssignments : Association to many AccessPolicyRuntimeAssignments {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity MessageProcessingLogAdapterAttributes {
    key Id : String not null;
    AdapterId : String;
    AdapterMessageId : String;
    Name : String;
    Value : String;
    MessageProcessingLog : Association to MessageProcessingLogs {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity TraceMessages {
    key TraceId : Integer64 not null;
    MplId : String not null;
    RunId : String;
    ModelStepId : String;
    PayloadSize : Integer64;
    MimeType : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
    Properties : Association to many TraceMessageProperties {  };
    ExchangeProperties : Association to many TraceMessageExchangeProperties {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity LogFileArchives {
    key Scope : String not null;
    key LogFileType : String not null;
    key NodeScope : String not null;
    ContentType : String;
    @Core.MediaType : 'application/octet-stream'
    blob : LargeBinary;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity ExternalLoggingEvents {
    key Timestamp : Integer64 not null;
    EventType : String;
    EventObject : String;
    HasError : Boolean;
    StatusText : String;
    StatusChangedAtMillis : Integer64;
    AverageLoadSec : Double;
    AverageLagSec : Double;
    AverageAvailability : Double;
  };

  @cds.external : true
  @cds.persistence.skip : true
  entity AccessPolicyRuntimeAssignments {
    key Id : Integer64 not null;
    RuntimeLocationId : String;
    TransferStatus : String;
    TransferErrors : String;
    @odata.Type : 'Edm.DateTime'
    StatusUpdatedAt : DateTime;
    AccessPolicy : Association to AccessPolicies {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity Parameter {
    key Pid : String(60) not null;
    key Id : String(1500) not null;
    LastModifiedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    LastModifiedTime : DateTime;
    CreatedBy : String(150);
    @odata.Type : 'Edm.DateTime'
    CreatedTime : DateTime;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity KeystoreEntryAlias {
    key Hexalias : String(2000) not null;
    Alias : String(250) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity KeystoreEntryCertificatePartBase : KeystoreEntryAlias {
    KeyType : String(30);
    KeySize : Integer;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotBefore : DateTime;
    @odata.Type : 'Edm.DateTimeOffset'
    ValidNotAfter : DateTime;
    SerialNumber : String(256);
    SignatureAlgorithm : String(60);
    EllipticCurve : String(500);
  };

  @cds.external : true
  @cds.persistence.skip : true
  @open : true
  entity KeystoreEntryCertificatePart : KeystoreEntryCertificatePartBase {
    Validity : String(1000);
    SubjectDN : String(50000);
    IssuerDN : String(50000);
    Version : Integer;
    FingerprintSha1 : String(200);
    FingerprintSha256 : String(200);
    FingerprintSha512 : String(200);
  };

  @cds.external : true
  type Value {
    SrcValue : String;
    TgtValue : String;
  };

  @cds.external : true
  type SecurityArtifactDescriptor {
    Type : String(1024);
    DeployedBy : String(1024);
    @odata.Type : 'Edm.DateTime'
    DeployedOn : DateTime;
    Status : String(1024);
  };

  @cds.external : true
  type IntegrationArtifact {
    Id : String;
    Name : String;
    Type : String;
    PackageId : String;
    PackageName : String;
  };

  @cds.external : true
  action ValueMappingDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns ValueMappingDesigntimeArtifacts;

  @cds.external : true
  action DeployValueMappingDesigntimeArtifact(
    Id : String not null,
    Version : String not null
  ) returns ValueMappingDesigntimeArtifacts;

  @cds.external : true
  action ServiceInterfaceDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns ServiceInterfaceDesigntimeArtifacts;

  @cds.external : true
  action DeployIntegrationAdapterDesigntimeArtifact(
    Id : String not null
  ) returns String;

  @cds.external : true
  action CopyIntegrationPackage(
    Id : String not null,
    ImportMode : String,
    Suffix : String
  ) returns IntegrationPackages;

  @cds.external : true
  action ExecuteIntegrationDesigntimeArtifactsGuidelines(
    Id : String not null,
    Version : String not null
  ) returns String;

  @cds.external : true
  action ExecuteScriptCollectionDesigntimeArtifactsGuidelines(
    Id : String not null,
    Version : String not null
  ) returns String;

  @cds.external : true
  action DeployMessageMappingDesigntimeArtifact(
    Id : String not null,
    Version : String not null
  ) returns MessageMappingDesigntimeArtifacts;

  @cds.external : true
  action MessageMappingDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns MessageMappingDesigntimeArtifacts;

  @cds.external : true
  action ScriptCollectionDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns ScriptCollectionDesigntimeArtifacts;

  @cds.external : true
  action DeployScriptCollectionDesigntimeArtifact(
    Id : String not null,
    Version : String not null
  ) returns String;

  @cds.external : true
  action FaultMessageTypeDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns FaultMessageTypeDesigntimeArtifacts;

  @cds.external : true
  action UpsertValMaps(
    Id : String not null,
    Version : String not null,
    SrcAgency : String not null,
    SrcId : String not null,
    TgtAgency : String not null,
    TgtId : String not null,
    ValMapId : String,
    SrcValue : String not null,
    TgtValue : String not null,
    IsConfigured : Boolean not null
  ) returns ValMaps;

  @cds.external : true
  action DeleteValMaps(
    Id : String not null,
    Version : String not null,
    SrcAgency : String not null,
    SrcId : String not null,
    TgtAgency : String not null,
    TgtId : String not null
  ) returns String;

  @cds.external : true
  action DataTypeDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns DataTypeDesigntimeArtifacts;

  @cds.external : true
  action UpdateDefaultValMap(
    Id : String not null,
    Version : String not null,
    SrcAgency : String not null,
    SrcId : String not null,
    TgtAgency : String not null,
    TgtId : String not null,
    ValMapId : String not null,
    IsConfigured : Boolean not null
  ) returns DefaultValMaps;

  @cds.external : true
  action IntegrationDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns IntegrationDesigntimeArtifacts;

  @cds.external : true
  action DeployIntegrationDesigntimeArtifact(
    Id : String not null,
    Version : String not null
  ) returns String;

  @cds.external : true
  action ValidateIntegrationDesigntimeArtifact(
    Id : String not null,
    Version : String not null
  ) returns String;

  @cds.external : true
  action MessageTypeDesigntimeArtifactSaveAsVersion(
    Id : String not null,
    SaveAsVersion : String not null
  ) returns MessageTypeDesigntimeArtifacts;

  @cds.external : true
  action activateB2BArchivingConfiguration() returns String;

  @cds.external : true
  action singleInterchangeProcess(
    Id : String not null,
    ActionName : String not null,
    NoteText : String
  ) returns String;

  @cds.external : true
  action massInterchangeProcess(
    FiltersQuery : String not null,
    ActionName : String not null,
    NoteText : String,
    Parameter1 : String,
    Parameter2 : String,
    Parameter3 : String,
    Parameter4 : String,
    Parameter5 : String
  ) returns String;

  @cds.external : true
  action deactivateQueue(
    Name : String not null,
    State : String
  ) returns String;

  @cds.external : true
  action activateQueue(
    Name : String not null,
    State : String
  ) returns String;

  @cds.external : true
  action MoveMessagingMessages() returns String;

  @cds.external : true
  action RetryMessagingMessages() returns String;

  @cds.external : true
  action OAuth2AuthorizationCodeRefreshTokenUpdate() returns String;

  @cds.external : true
  action OAuth2AuthorizationCodeCopy() returns String;

  @cds.external : true
  function OAuthTokenFromCode() returns String;

  @cds.external : true
  action OAuth2AuthorizationCodeFullAuthUrl() returns String;

  @cds.external : true
  action activateExternalLogging() returns String;

  @cds.external : true
  action deactivateExternalLogging() returns String;

  @cds.external : true
  action activateArchivingConfiguration() returns String;

  @cds.external : true
  action CancelMessageProcessingLog(
    Id : String not null
  ) returns MessageProcessingLogs;
};

