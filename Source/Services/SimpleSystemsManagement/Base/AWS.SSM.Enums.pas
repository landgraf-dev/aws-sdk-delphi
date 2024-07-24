unit AWS.SSM.Enums;

{$SCOPEDENUMS ON}

interface

type
  TAssociationComplianceSeverity = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CRITICAL: TAssociationComplianceSeverity; static;
    class function HIGH: TAssociationComplianceSeverity; static;
    class function LOW: TAssociationComplianceSeverity; static;
    class function MEDIUM: TAssociationComplianceSeverity; static;
    class function UNSPECIFIED: TAssociationComplianceSeverity; static;
    class operator Equal(a: TAssociationComplianceSeverity; b: TAssociationComplianceSeverity): Boolean;
    class operator NotEqual(a: TAssociationComplianceSeverity; b: TAssociationComplianceSeverity): Boolean;
    class operator Implicit(a: string): TAssociationComplianceSeverity;
    property Value: string read FValue;
  end;
  
  TAssociationExecutionFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CreatedTime: TAssociationExecutionFilterKey; static;
    class function ExecutionId: TAssociationExecutionFilterKey; static;
    class function Status: TAssociationExecutionFilterKey; static;
    class operator Equal(a: TAssociationExecutionFilterKey; b: TAssociationExecutionFilterKey): Boolean;
    class operator NotEqual(a: TAssociationExecutionFilterKey; b: TAssociationExecutionFilterKey): Boolean;
    class operator Implicit(a: string): TAssociationExecutionFilterKey;
    property Value: string read FValue;
  end;
  
  TAssociationExecutionTargetsFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ResourceId: TAssociationExecutionTargetsFilterKey; static;
    class function ResourceType: TAssociationExecutionTargetsFilterKey; static;
    class function Status: TAssociationExecutionTargetsFilterKey; static;
    class operator Equal(a: TAssociationExecutionTargetsFilterKey; b: TAssociationExecutionTargetsFilterKey): Boolean;
    class operator NotEqual(a: TAssociationExecutionTargetsFilterKey; b: TAssociationExecutionTargetsFilterKey): Boolean;
    class operator Implicit(a: string): TAssociationExecutionTargetsFilterKey;
    property Value: string read FValue;
  end;
  
  TAssociationFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AssociationId: TAssociationFilterKey; static;
    class function AssociationName: TAssociationFilterKey; static;
    class function AssociationStatusName: TAssociationFilterKey; static;
    class function InstanceId: TAssociationFilterKey; static;
    class function LastExecutedAfter: TAssociationFilterKey; static;
    class function LastExecutedBefore: TAssociationFilterKey; static;
    class function Name: TAssociationFilterKey; static;
    class function ResourceGroupName: TAssociationFilterKey; static;
    class operator Equal(a: TAssociationFilterKey; b: TAssociationFilterKey): Boolean;
    class operator NotEqual(a: TAssociationFilterKey; b: TAssociationFilterKey): Boolean;
    class operator Implicit(a: string): TAssociationFilterKey;
    property Value: string read FValue;
  end;
  
  TAssociationFilterOperatorType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EQUAL: TAssociationFilterOperatorType; static;
    class function GREATER_THAN: TAssociationFilterOperatorType; static;
    class function LESS_THAN: TAssociationFilterOperatorType; static;
    class operator Equal(a: TAssociationFilterOperatorType; b: TAssociationFilterOperatorType): Boolean;
    class operator NotEqual(a: TAssociationFilterOperatorType; b: TAssociationFilterOperatorType): Boolean;
    class operator Implicit(a: string): TAssociationFilterOperatorType;
    property Value: string read FValue;
  end;
  
  TAssociationStatusName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TAssociationStatusName; static;
    class function Pending: TAssociationStatusName; static;
    class function Success: TAssociationStatusName; static;
    class operator Equal(a: TAssociationStatusName; b: TAssociationStatusName): Boolean;
    class operator NotEqual(a: TAssociationStatusName; b: TAssociationStatusName): Boolean;
    class operator Implicit(a: string): TAssociationStatusName;
    property Value: string read FValue;
  end;
  
  TAssociationSyncCompliance = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AUTO: TAssociationSyncCompliance; static;
    class function MANUAL: TAssociationSyncCompliance; static;
    class operator Equal(a: TAssociationSyncCompliance; b: TAssociationSyncCompliance): Boolean;
    class operator NotEqual(a: TAssociationSyncCompliance; b: TAssociationSyncCompliance): Boolean;
    class operator Implicit(a: string): TAssociationSyncCompliance;
    property Value: string read FValue;
  end;
  
  TAttachmentHashType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Sha256: TAttachmentHashType; static;
    class operator Equal(a: TAttachmentHashType; b: TAttachmentHashType): Boolean;
    class operator NotEqual(a: TAttachmentHashType; b: TAttachmentHashType): Boolean;
    class operator Implicit(a: string): TAttachmentHashType;
    property Value: string read FValue;
  end;
  
  TAttachmentsSourceKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AttachmentReference: TAttachmentsSourceKey; static;
    class function S3FileUrl: TAttachmentsSourceKey; static;
    class function SourceUrl: TAttachmentsSourceKey; static;
    class operator Equal(a: TAttachmentsSourceKey; b: TAttachmentsSourceKey): Boolean;
    class operator NotEqual(a: TAttachmentsSourceKey; b: TAttachmentsSourceKey): Boolean;
    class operator Implicit(a: string): TAttachmentsSourceKey;
    property Value: string read FValue;
  end;
  
  TAutomationExecutionFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AutomationSubtype: TAutomationExecutionFilterKey; static;
    class function AutomationType: TAutomationExecutionFilterKey; static;
    class function CurrentAction: TAutomationExecutionFilterKey; static;
    class function DocumentNamePrefix: TAutomationExecutionFilterKey; static;
    class function ExecutionId: TAutomationExecutionFilterKey; static;
    class function ExecutionStatus: TAutomationExecutionFilterKey; static;
    class function OpsItemId: TAutomationExecutionFilterKey; static;
    class function ParentExecutionId: TAutomationExecutionFilterKey; static;
    class function StartTimeAfter: TAutomationExecutionFilterKey; static;
    class function StartTimeBefore: TAutomationExecutionFilterKey; static;
    class function TagKey: TAutomationExecutionFilterKey; static;
    class function TargetResourceGroup: TAutomationExecutionFilterKey; static;
    class operator Equal(a: TAutomationExecutionFilterKey; b: TAutomationExecutionFilterKey): Boolean;
    class operator NotEqual(a: TAutomationExecutionFilterKey; b: TAutomationExecutionFilterKey): Boolean;
    class operator Implicit(a: string): TAutomationExecutionFilterKey;
    property Value: string read FValue;
  end;
  
  TAutomationExecutionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Approved: TAutomationExecutionStatus; static;
    class function Cancelled: TAutomationExecutionStatus; static;
    class function Cancelling: TAutomationExecutionStatus; static;
    class function ChangeCalendarOverrideApproved: TAutomationExecutionStatus; static;
    class function ChangeCalendarOverrideRejected: TAutomationExecutionStatus; static;
    class function CompletedWithFailure: TAutomationExecutionStatus; static;
    class function CompletedWithSuccess: TAutomationExecutionStatus; static;
    class function Failed: TAutomationExecutionStatus; static;
    class function InProgress: TAutomationExecutionStatus; static;
    class function Pending: TAutomationExecutionStatus; static;
    class function PendingApproval: TAutomationExecutionStatus; static;
    class function PendingChangeCalendarOverride: TAutomationExecutionStatus; static;
    class function Rejected: TAutomationExecutionStatus; static;
    class function RunbookInProgress: TAutomationExecutionStatus; static;
    class function Scheduled: TAutomationExecutionStatus; static;
    class function Success: TAutomationExecutionStatus; static;
    class function TimedOut: TAutomationExecutionStatus; static;
    class function Waiting: TAutomationExecutionStatus; static;
    class operator Equal(a: TAutomationExecutionStatus; b: TAutomationExecutionStatus): Boolean;
    class operator NotEqual(a: TAutomationExecutionStatus; b: TAutomationExecutionStatus): Boolean;
    class operator Implicit(a: string): TAutomationExecutionStatus;
    property Value: string read FValue;
  end;
  
  TAutomationSubtype = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ChangeRequest: TAutomationSubtype; static;
    class operator Equal(a: TAutomationSubtype; b: TAutomationSubtype): Boolean;
    class operator NotEqual(a: TAutomationSubtype; b: TAutomationSubtype): Boolean;
    class operator Implicit(a: string): TAutomationSubtype;
    property Value: string read FValue;
  end;
  
  TAutomationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CrossAccount: TAutomationType; static;
    class function Local: TAutomationType; static;
    class operator Equal(a: TAutomationType; b: TAutomationType): Boolean;
    class operator NotEqual(a: TAutomationType; b: TAutomationType): Boolean;
    class operator Implicit(a: string): TAutomationType;
    property Value: string read FValue;
  end;
  
  TCalendarState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CLOSED: TCalendarState; static;
    class function OPEN: TCalendarState; static;
    class operator Equal(a: TCalendarState; b: TCalendarState): Boolean;
    class operator NotEqual(a: TCalendarState; b: TCalendarState): Boolean;
    class operator Implicit(a: string): TCalendarState;
    property Value: string read FValue;
  end;
  
  TCommandFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DocumentName: TCommandFilterKey; static;
    class function ExecutionStage: TCommandFilterKey; static;
    class function InvokedAfter: TCommandFilterKey; static;
    class function InvokedBefore: TCommandFilterKey; static;
    class function Status: TCommandFilterKey; static;
    class operator Equal(a: TCommandFilterKey; b: TCommandFilterKey): Boolean;
    class operator NotEqual(a: TCommandFilterKey; b: TCommandFilterKey): Boolean;
    class operator Implicit(a: string): TCommandFilterKey;
    property Value: string read FValue;
  end;
  
  TCommandInvocationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Cancelled: TCommandInvocationStatus; static;
    class function Cancelling: TCommandInvocationStatus; static;
    class function Delayed: TCommandInvocationStatus; static;
    class function Failed: TCommandInvocationStatus; static;
    class function InProgress: TCommandInvocationStatus; static;
    class function Pending: TCommandInvocationStatus; static;
    class function Success: TCommandInvocationStatus; static;
    class function TimedOut: TCommandInvocationStatus; static;
    class operator Equal(a: TCommandInvocationStatus; b: TCommandInvocationStatus): Boolean;
    class operator NotEqual(a: TCommandInvocationStatus; b: TCommandInvocationStatus): Boolean;
    class operator Implicit(a: string): TCommandInvocationStatus;
    property Value: string read FValue;
  end;
  
  TCommandPluginStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Cancelled: TCommandPluginStatus; static;
    class function Failed: TCommandPluginStatus; static;
    class function InProgress: TCommandPluginStatus; static;
    class function Pending: TCommandPluginStatus; static;
    class function Success: TCommandPluginStatus; static;
    class function TimedOut: TCommandPluginStatus; static;
    class operator Equal(a: TCommandPluginStatus; b: TCommandPluginStatus): Boolean;
    class operator NotEqual(a: TCommandPluginStatus; b: TCommandPluginStatus): Boolean;
    class operator Implicit(a: string): TCommandPluginStatus;
    property Value: string read FValue;
  end;
  
  TCommandStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Cancelled: TCommandStatus; static;
    class function Cancelling: TCommandStatus; static;
    class function Failed: TCommandStatus; static;
    class function InProgress: TCommandStatus; static;
    class function Pending: TCommandStatus; static;
    class function Success: TCommandStatus; static;
    class function TimedOut: TCommandStatus; static;
    class operator Equal(a: TCommandStatus; b: TCommandStatus): Boolean;
    class operator NotEqual(a: TCommandStatus; b: TCommandStatus): Boolean;
    class operator Implicit(a: string): TCommandStatus;
    property Value: string read FValue;
  end;
  
  TComplianceQueryOperatorType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BEGIN_WITH: TComplianceQueryOperatorType; static;
    class function EQUAL: TComplianceQueryOperatorType; static;
    class function GREATER_THAN: TComplianceQueryOperatorType; static;
    class function LESS_THAN: TComplianceQueryOperatorType; static;
    class function NOT_EQUAL: TComplianceQueryOperatorType; static;
    class operator Equal(a: TComplianceQueryOperatorType; b: TComplianceQueryOperatorType): Boolean;
    class operator NotEqual(a: TComplianceQueryOperatorType; b: TComplianceQueryOperatorType): Boolean;
    class operator Implicit(a: string): TComplianceQueryOperatorType;
    property Value: string read FValue;
  end;
  
  TComplianceSeverity = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CRITICAL: TComplianceSeverity; static;
    class function HIGH: TComplianceSeverity; static;
    class function INFORMATIONAL: TComplianceSeverity; static;
    class function LOW: TComplianceSeverity; static;
    class function MEDIUM: TComplianceSeverity; static;
    class function UNSPECIFIED: TComplianceSeverity; static;
    class operator Equal(a: TComplianceSeverity; b: TComplianceSeverity): Boolean;
    class operator NotEqual(a: TComplianceSeverity; b: TComplianceSeverity): Boolean;
    class operator Implicit(a: string): TComplianceSeverity;
    property Value: string read FValue;
  end;
  
  TComplianceStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLIANT: TComplianceStatus; static;
    class function NON_COMPLIANT: TComplianceStatus; static;
    class operator Equal(a: TComplianceStatus; b: TComplianceStatus): Boolean;
    class operator NotEqual(a: TComplianceStatus; b: TComplianceStatus): Boolean;
    class operator Implicit(a: string): TComplianceStatus;
    property Value: string read FValue;
  end;
  
  TComplianceUploadType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETE: TComplianceUploadType; static;
    class function PARTIAL: TComplianceUploadType; static;
    class operator Equal(a: TComplianceUploadType; b: TComplianceUploadType): Boolean;
    class operator NotEqual(a: TComplianceUploadType; b: TComplianceUploadType): Boolean;
    class operator Implicit(a: string): TComplianceUploadType;
    property Value: string read FValue;
  end;
  
  TConnectionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Connected: TConnectionStatus; static;
    class function NotConnected: TConnectionStatus; static;
    class operator Equal(a: TConnectionStatus; b: TConnectionStatus): Boolean;
    class operator NotEqual(a: TConnectionStatus; b: TConnectionStatus): Boolean;
    class operator Implicit(a: string): TConnectionStatus;
    property Value: string read FValue;
  end;
  
  TDescribeActivationsFilterKeys = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ActivationIds: TDescribeActivationsFilterKeys; static;
    class function DefaultInstanceName: TDescribeActivationsFilterKeys; static;
    class function IamRole: TDescribeActivationsFilterKeys; static;
    class operator Equal(a: TDescribeActivationsFilterKeys; b: TDescribeActivationsFilterKeys): Boolean;
    class operator NotEqual(a: TDescribeActivationsFilterKeys; b: TDescribeActivationsFilterKeys): Boolean;
    class operator Implicit(a: string): TDescribeActivationsFilterKeys;
    property Value: string read FValue;
  end;
  
  TDocumentFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DocumentType: TDocumentFilterKey; static;
    class function Name: TDocumentFilterKey; static;
    class function Owner: TDocumentFilterKey; static;
    class function PlatformTypes: TDocumentFilterKey; static;
    class operator Equal(a: TDocumentFilterKey; b: TDocumentFilterKey): Boolean;
    class operator NotEqual(a: TDocumentFilterKey; b: TDocumentFilterKey): Boolean;
    class operator Implicit(a: string): TDocumentFilterKey;
    property Value: string read FValue;
  end;
  
  TDocumentFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function JSON: TDocumentFormat; static;
    class function TEXT: TDocumentFormat; static;
    class function YAML: TDocumentFormat; static;
    class operator Equal(a: TDocumentFormat; b: TDocumentFormat): Boolean;
    class operator NotEqual(a: TDocumentFormat; b: TDocumentFormat): Boolean;
    class operator Implicit(a: string): TDocumentFormat;
    property Value: string read FValue;
  end;
  
  TDocumentHashType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Sha1: TDocumentHashType; static;
    class function Sha256: TDocumentHashType; static;
    class operator Equal(a: TDocumentHashType; b: TDocumentHashType): Boolean;
    class operator NotEqual(a: TDocumentHashType; b: TDocumentHashType): Boolean;
    class operator Implicit(a: string): TDocumentHashType;
    property Value: string read FValue;
  end;
  
  TDocumentMetadataEnum = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DocumentReviews: TDocumentMetadataEnum; static;
    class operator Equal(a: TDocumentMetadataEnum; b: TDocumentMetadataEnum): Boolean;
    class operator NotEqual(a: TDocumentMetadataEnum; b: TDocumentMetadataEnum): Boolean;
    class operator Implicit(a: string): TDocumentMetadataEnum;
    property Value: string read FValue;
  end;
  
  TDocumentParameterType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function &String: TDocumentParameterType; static;
    class function StringList: TDocumentParameterType; static;
    class operator Equal(a: TDocumentParameterType; b: TDocumentParameterType): Boolean;
    class operator NotEqual(a: TDocumentParameterType; b: TDocumentParameterType): Boolean;
    class operator Implicit(a: string): TDocumentParameterType;
    property Value: string read FValue;
  end;
  
  TDocumentPermissionType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Share: TDocumentPermissionType; static;
    class operator Equal(a: TDocumentPermissionType; b: TDocumentPermissionType): Boolean;
    class operator NotEqual(a: TDocumentPermissionType; b: TDocumentPermissionType): Boolean;
    class operator Implicit(a: string): TDocumentPermissionType;
    property Value: string read FValue;
  end;
  
  TDocumentReviewAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Approve: TDocumentReviewAction; static;
    class function Reject: TDocumentReviewAction; static;
    class function SendForReview: TDocumentReviewAction; static;
    class function UpdateReview: TDocumentReviewAction; static;
    class operator Equal(a: TDocumentReviewAction; b: TDocumentReviewAction): Boolean;
    class operator NotEqual(a: TDocumentReviewAction; b: TDocumentReviewAction): Boolean;
    class operator Implicit(a: string): TDocumentReviewAction;
    property Value: string read FValue;
  end;
  
  TDocumentReviewCommentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Comment: TDocumentReviewCommentType; static;
    class operator Equal(a: TDocumentReviewCommentType; b: TDocumentReviewCommentType): Boolean;
    class operator NotEqual(a: TDocumentReviewCommentType; b: TDocumentReviewCommentType): Boolean;
    class operator Implicit(a: string): TDocumentReviewCommentType;
    property Value: string read FValue;
  end;
  
  TDocumentStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Active: TDocumentStatus; static;
    class function Creating: TDocumentStatus; static;
    class function Deleting: TDocumentStatus; static;
    class function Failed: TDocumentStatus; static;
    class function Updating: TDocumentStatus; static;
    class operator Equal(a: TDocumentStatus; b: TDocumentStatus): Boolean;
    class operator NotEqual(a: TDocumentStatus; b: TDocumentStatus): Boolean;
    class operator Implicit(a: string): TDocumentStatus;
    property Value: string read FValue;
  end;
  
  TDocumentType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ApplicationConfiguration: TDocumentType; static;
    class function ApplicationConfigurationSchema: TDocumentType; static;
    class function Automation: TDocumentType; static;
    class function AutomationChangeTemplate: TDocumentType; static;
    class function ChangeCalendar: TDocumentType; static;
    class function Command: TDocumentType; static;
    class function DeploymentStrategy: TDocumentType; static;
    class function Package: TDocumentType; static;
    class function Policy: TDocumentType; static;
    class function ProblemAnalysis: TDocumentType; static;
    class function ProblemAnalysisTemplate: TDocumentType; static;
    class function Session: TDocumentType; static;
    class operator Equal(a: TDocumentType; b: TDocumentType): Boolean;
    class operator NotEqual(a: TDocumentType; b: TDocumentType): Boolean;
    class operator Implicit(a: string): TDocumentType;
    property Value: string read FValue;
  end;
  
  TExecutionMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Auto: TExecutionMode; static;
    class function Interactive: TExecutionMode; static;
    class operator Equal(a: TExecutionMode; b: TExecutionMode): Boolean;
    class operator NotEqual(a: TExecutionMode; b: TExecutionMode): Boolean;
    class operator Implicit(a: string): TExecutionMode;
    property Value: string read FValue;
  end;
  
  TFault = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Client: TFault; static;
    class function Server: TFault; static;
    class function Unknown: TFault; static;
    class operator Equal(a: TFault; b: TFault): Boolean;
    class operator NotEqual(a: TFault; b: TFault): Boolean;
    class operator Implicit(a: string): TFault;
    property Value: string read FValue;
  end;
  
  TInstanceInformationFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ActivationIds: TInstanceInformationFilterKey; static;
    class function AgentVersion: TInstanceInformationFilterKey; static;
    class function AssociationStatus: TInstanceInformationFilterKey; static;
    class function IamRole: TInstanceInformationFilterKey; static;
    class function InstanceIds: TInstanceInformationFilterKey; static;
    class function PingStatus: TInstanceInformationFilterKey; static;
    class function PlatformTypes: TInstanceInformationFilterKey; static;
    class function ResourceType: TInstanceInformationFilterKey; static;
    class operator Equal(a: TInstanceInformationFilterKey; b: TInstanceInformationFilterKey): Boolean;
    class operator NotEqual(a: TInstanceInformationFilterKey; b: TInstanceInformationFilterKey): Boolean;
    class operator Implicit(a: string): TInstanceInformationFilterKey;
    property Value: string read FValue;
  end;
  
  TInstancePatchStateOperatorType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Equal: TInstancePatchStateOperatorType; static;
    class function GreaterThan: TInstancePatchStateOperatorType; static;
    class function LessThan: TInstancePatchStateOperatorType; static;
    class function NotEqual: TInstancePatchStateOperatorType; static;
    class operator Equal(a: TInstancePatchStateOperatorType; b: TInstancePatchStateOperatorType): Boolean;
    class operator NotEqual(a: TInstancePatchStateOperatorType; b: TInstancePatchStateOperatorType): Boolean;
    class operator Implicit(a: string): TInstancePatchStateOperatorType;
    property Value: string read FValue;
  end;
  
  TInventoryAttributeDataType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Number: TInventoryAttributeDataType; static;
    class function &String: TInventoryAttributeDataType; static;
    class operator Equal(a: TInventoryAttributeDataType; b: TInventoryAttributeDataType): Boolean;
    class operator NotEqual(a: TInventoryAttributeDataType; b: TInventoryAttributeDataType): Boolean;
    class operator Implicit(a: string): TInventoryAttributeDataType;
    property Value: string read FValue;
  end;
  
  TInventoryDeletionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Complete: TInventoryDeletionStatus; static;
    class function InProgress: TInventoryDeletionStatus; static;
    class operator Equal(a: TInventoryDeletionStatus; b: TInventoryDeletionStatus): Boolean;
    class operator NotEqual(a: TInventoryDeletionStatus; b: TInventoryDeletionStatus): Boolean;
    class operator Implicit(a: string): TInventoryDeletionStatus;
    property Value: string read FValue;
  end;
  
  TInventoryQueryOperatorType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BeginWith: TInventoryQueryOperatorType; static;
    class function Equal: TInventoryQueryOperatorType; static;
    class function Exists: TInventoryQueryOperatorType; static;
    class function GreaterThan: TInventoryQueryOperatorType; static;
    class function LessThan: TInventoryQueryOperatorType; static;
    class function NotEqual: TInventoryQueryOperatorType; static;
    class operator Equal(a: TInventoryQueryOperatorType; b: TInventoryQueryOperatorType): Boolean;
    class operator NotEqual(a: TInventoryQueryOperatorType; b: TInventoryQueryOperatorType): Boolean;
    class operator Implicit(a: string): TInventoryQueryOperatorType;
    property Value: string read FValue;
  end;
  
  TInventorySchemaDeleteOption = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DeleteSchema: TInventorySchemaDeleteOption; static;
    class function DisableSchema: TInventorySchemaDeleteOption; static;
    class operator Equal(a: TInventorySchemaDeleteOption; b: TInventorySchemaDeleteOption): Boolean;
    class operator NotEqual(a: TInventorySchemaDeleteOption; b: TInventorySchemaDeleteOption): Boolean;
    class operator Implicit(a: string): TInventorySchemaDeleteOption;
    property Value: string read FValue;
  end;
  
  TLastResourceDataSyncStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TLastResourceDataSyncStatus; static;
    class function InProgress: TLastResourceDataSyncStatus; static;
    class function Successful: TLastResourceDataSyncStatus; static;
    class operator Equal(a: TLastResourceDataSyncStatus; b: TLastResourceDataSyncStatus): Boolean;
    class operator NotEqual(a: TLastResourceDataSyncStatus; b: TLastResourceDataSyncStatus): Boolean;
    class operator Implicit(a: string): TLastResourceDataSyncStatus;
    property Value: string read FValue;
  end;
  
  TMaintenanceWindowExecutionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CANCELLED: TMaintenanceWindowExecutionStatus; static;
    class function CANCELLING: TMaintenanceWindowExecutionStatus; static;
    class function FAILED: TMaintenanceWindowExecutionStatus; static;
    class function IN_PROGRESS: TMaintenanceWindowExecutionStatus; static;
    class function PENDING: TMaintenanceWindowExecutionStatus; static;
    class function SKIPPED_OVERLAPPING: TMaintenanceWindowExecutionStatus; static;
    class function SUCCESS: TMaintenanceWindowExecutionStatus; static;
    class function TIMED_OUT: TMaintenanceWindowExecutionStatus; static;
    class operator Equal(a: TMaintenanceWindowExecutionStatus; b: TMaintenanceWindowExecutionStatus): Boolean;
    class operator NotEqual(a: TMaintenanceWindowExecutionStatus; b: TMaintenanceWindowExecutionStatus): Boolean;
    class operator Implicit(a: string): TMaintenanceWindowExecutionStatus;
    property Value: string read FValue;
  end;
  
  TMaintenanceWindowResourceType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function INSTANCE: TMaintenanceWindowResourceType; static;
    class function RESOURCE_GROUP: TMaintenanceWindowResourceType; static;
    class operator Equal(a: TMaintenanceWindowResourceType; b: TMaintenanceWindowResourceType): Boolean;
    class operator NotEqual(a: TMaintenanceWindowResourceType; b: TMaintenanceWindowResourceType): Boolean;
    class operator Implicit(a: string): TMaintenanceWindowResourceType;
    property Value: string read FValue;
  end;
  
  TMaintenanceWindowTaskCutoffBehavior = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CANCEL_TASK: TMaintenanceWindowTaskCutoffBehavior; static;
    class function CONTINUE_TASK: TMaintenanceWindowTaskCutoffBehavior; static;
    class operator Equal(a: TMaintenanceWindowTaskCutoffBehavior; b: TMaintenanceWindowTaskCutoffBehavior): Boolean;
    class operator NotEqual(a: TMaintenanceWindowTaskCutoffBehavior; b: TMaintenanceWindowTaskCutoffBehavior): Boolean;
    class operator Implicit(a: string): TMaintenanceWindowTaskCutoffBehavior;
    property Value: string read FValue;
  end;
  
  TMaintenanceWindowTaskType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AUTOMATION: TMaintenanceWindowTaskType; static;
    class function LAMBDA: TMaintenanceWindowTaskType; static;
    class function RUN_COMMAND: TMaintenanceWindowTaskType; static;
    class function STEP_FUNCTIONS: TMaintenanceWindowTaskType; static;
    class operator Equal(a: TMaintenanceWindowTaskType; b: TMaintenanceWindowTaskType): Boolean;
    class operator NotEqual(a: TMaintenanceWindowTaskType; b: TMaintenanceWindowTaskType): Boolean;
    class operator Implicit(a: string): TMaintenanceWindowTaskType;
    property Value: string read FValue;
  end;
  
  TNotificationEvent = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function All: TNotificationEvent; static;
    class function Cancelled: TNotificationEvent; static;
    class function Failed: TNotificationEvent; static;
    class function InProgress: TNotificationEvent; static;
    class function Success: TNotificationEvent; static;
    class function TimedOut: TNotificationEvent; static;
    class operator Equal(a: TNotificationEvent; b: TNotificationEvent): Boolean;
    class operator NotEqual(a: TNotificationEvent; b: TNotificationEvent): Boolean;
    class operator Implicit(a: string): TNotificationEvent;
    property Value: string read FValue;
  end;
  
  TNotificationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Command: TNotificationType; static;
    class function Invocation: TNotificationType; static;
    class operator Equal(a: TNotificationType; b: TNotificationType): Boolean;
    class operator NotEqual(a: TNotificationType; b: TNotificationType): Boolean;
    class operator Implicit(a: string): TNotificationType;
    property Value: string read FValue;
  end;
  
  TOperatingSystem = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AMAZON_LINUX: TOperatingSystem; static;
    class function AMAZON_LINUX_2: TOperatingSystem; static;
    class function CENTOS: TOperatingSystem; static;
    class function DEBIAN: TOperatingSystem; static;
    class function MACOS: TOperatingSystem; static;
    class function ORACLE_LINUX: TOperatingSystem; static;
    class function RASPBIAN: TOperatingSystem; static;
    class function REDHAT_ENTERPRISE_LINUX: TOperatingSystem; static;
    class function ROCKY_LINUX: TOperatingSystem; static;
    class function SUSE: TOperatingSystem; static;
    class function UBUNTU: TOperatingSystem; static;
    class function WINDOWS: TOperatingSystem; static;
    class operator Equal(a: TOperatingSystem; b: TOperatingSystem): Boolean;
    class operator NotEqual(a: TOperatingSystem; b: TOperatingSystem): Boolean;
    class operator Implicit(a: string): TOperatingSystem;
    property Value: string read FValue;
  end;
  
  TOpsFilterOperatorType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BeginWith: TOpsFilterOperatorType; static;
    class function Equal: TOpsFilterOperatorType; static;
    class function Exists: TOpsFilterOperatorType; static;
    class function GreaterThan: TOpsFilterOperatorType; static;
    class function LessThan: TOpsFilterOperatorType; static;
    class function NotEqual: TOpsFilterOperatorType; static;
    class operator Equal(a: TOpsFilterOperatorType; b: TOpsFilterOperatorType): Boolean;
    class operator NotEqual(a: TOpsFilterOperatorType; b: TOpsFilterOperatorType): Boolean;
    class operator Implicit(a: string): TOpsFilterOperatorType;
    property Value: string read FValue;
  end;
  
  TOpsItemDataType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function SearchableString: TOpsItemDataType; static;
    class function &String: TOpsItemDataType; static;
    class operator Equal(a: TOpsItemDataType; b: TOpsItemDataType): Boolean;
    class operator NotEqual(a: TOpsItemDataType; b: TOpsItemDataType): Boolean;
    class operator Implicit(a: string): TOpsItemDataType;
    property Value: string read FValue;
  end;
  
  TOpsItemEventFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OpsItemId: TOpsItemEventFilterKey; static;
    class operator Equal(a: TOpsItemEventFilterKey; b: TOpsItemEventFilterKey): Boolean;
    class operator NotEqual(a: TOpsItemEventFilterKey; b: TOpsItemEventFilterKey): Boolean;
    class operator Implicit(a: string): TOpsItemEventFilterKey;
    property Value: string read FValue;
  end;
  
  TOpsItemEventFilterOperator = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Equal: TOpsItemEventFilterOperator; static;
    class operator Equal(a: TOpsItemEventFilterOperator; b: TOpsItemEventFilterOperator): Boolean;
    class operator NotEqual(a: TOpsItemEventFilterOperator; b: TOpsItemEventFilterOperator): Boolean;
    class operator Implicit(a: string): TOpsItemEventFilterOperator;
    property Value: string read FValue;
  end;
  
  TOpsItemFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ActualEndTime: TOpsItemFilterKey; static;
    class function ActualStartTime: TOpsItemFilterKey; static;
    class function AutomationId: TOpsItemFilterKey; static;
    class function Category: TOpsItemFilterKey; static;
    class function ChangeRequestByApproverArn: TOpsItemFilterKey; static;
    class function ChangeRequestByApproverName: TOpsItemFilterKey; static;
    class function ChangeRequestByRequesterArn: TOpsItemFilterKey; static;
    class function ChangeRequestByRequesterName: TOpsItemFilterKey; static;
    class function ChangeRequestByTargetsResourceGroup: TOpsItemFilterKey; static;
    class function ChangeRequestByTemplate: TOpsItemFilterKey; static;
    class function CreatedBy: TOpsItemFilterKey; static;
    class function CreatedTime: TOpsItemFilterKey; static;
    class function InsightByType: TOpsItemFilterKey; static;
    class function LastModifiedTime: TOpsItemFilterKey; static;
    class function OperationalData: TOpsItemFilterKey; static;
    class function OperationalDataKey: TOpsItemFilterKey; static;
    class function OperationalDataValue: TOpsItemFilterKey; static;
    class function OpsItemId: TOpsItemFilterKey; static;
    class function OpsItemType: TOpsItemFilterKey; static;
    class function PlannedEndTime: TOpsItemFilterKey; static;
    class function PlannedStartTime: TOpsItemFilterKey; static;
    class function Priority: TOpsItemFilterKey; static;
    class function ResourceId: TOpsItemFilterKey; static;
    class function Severity: TOpsItemFilterKey; static;
    class function Source: TOpsItemFilterKey; static;
    class function Status: TOpsItemFilterKey; static;
    class function Title: TOpsItemFilterKey; static;
    class operator Equal(a: TOpsItemFilterKey; b: TOpsItemFilterKey): Boolean;
    class operator NotEqual(a: TOpsItemFilterKey; b: TOpsItemFilterKey): Boolean;
    class operator Implicit(a: string): TOpsItemFilterKey;
    property Value: string read FValue;
  end;
  
  TOpsItemFilterOperator = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Contains: TOpsItemFilterOperator; static;
    class function Equal: TOpsItemFilterOperator; static;
    class function GreaterThan: TOpsItemFilterOperator; static;
    class function LessThan: TOpsItemFilterOperator; static;
    class operator Equal(a: TOpsItemFilterOperator; b: TOpsItemFilterOperator): Boolean;
    class operator NotEqual(a: TOpsItemFilterOperator; b: TOpsItemFilterOperator): Boolean;
    class operator Implicit(a: string): TOpsItemFilterOperator;
    property Value: string read FValue;
  end;
  
  TOpsItemRelatedItemsFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AssociationId: TOpsItemRelatedItemsFilterKey; static;
    class function ResourceType: TOpsItemRelatedItemsFilterKey; static;
    class function ResourceUri: TOpsItemRelatedItemsFilterKey; static;
    class operator Equal(a: TOpsItemRelatedItemsFilterKey; b: TOpsItemRelatedItemsFilterKey): Boolean;
    class operator NotEqual(a: TOpsItemRelatedItemsFilterKey; b: TOpsItemRelatedItemsFilterKey): Boolean;
    class operator Implicit(a: string): TOpsItemRelatedItemsFilterKey;
    property Value: string read FValue;
  end;
  
  TOpsItemRelatedItemsFilterOperator = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Equal: TOpsItemRelatedItemsFilterOperator; static;
    class operator Equal(a: TOpsItemRelatedItemsFilterOperator; b: TOpsItemRelatedItemsFilterOperator): Boolean;
    class operator NotEqual(a: TOpsItemRelatedItemsFilterOperator; b: TOpsItemRelatedItemsFilterOperator): Boolean;
    class operator Implicit(a: string): TOpsItemRelatedItemsFilterOperator;
    property Value: string read FValue;
  end;
  
  TOpsItemStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Approved: TOpsItemStatus; static;
    class function Cancelled: TOpsItemStatus; static;
    class function Cancelling: TOpsItemStatus; static;
    class function ChangeCalendarOverrideApproved: TOpsItemStatus; static;
    class function ChangeCalendarOverrideRejected: TOpsItemStatus; static;
    class function Closed: TOpsItemStatus; static;
    class function CompletedWithFailure: TOpsItemStatus; static;
    class function CompletedWithSuccess: TOpsItemStatus; static;
    class function Failed: TOpsItemStatus; static;
    class function InProgress: TOpsItemStatus; static;
    class function Open: TOpsItemStatus; static;
    class function Pending: TOpsItemStatus; static;
    class function PendingApproval: TOpsItemStatus; static;
    class function PendingChangeCalendarOverride: TOpsItemStatus; static;
    class function Rejected: TOpsItemStatus; static;
    class function Resolved: TOpsItemStatus; static;
    class function RunbookInProgress: TOpsItemStatus; static;
    class function Scheduled: TOpsItemStatus; static;
    class function TimedOut: TOpsItemStatus; static;
    class operator Equal(a: TOpsItemStatus; b: TOpsItemStatus): Boolean;
    class operator NotEqual(a: TOpsItemStatus; b: TOpsItemStatus): Boolean;
    class operator Implicit(a: string): TOpsItemStatus;
    property Value: string read FValue;
  end;
  
  TParameterTier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Advanced: TParameterTier; static;
    class function IntelligentTiering: TParameterTier; static;
    class function Standard: TParameterTier; static;
    class operator Equal(a: TParameterTier; b: TParameterTier): Boolean;
    class operator NotEqual(a: TParameterTier; b: TParameterTier): Boolean;
    class operator Implicit(a: string): TParameterTier;
    property Value: string read FValue;
  end;
  
  TParameterType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function SecureString: TParameterType; static;
    class function &String: TParameterType; static;
    class function StringList: TParameterType; static;
    class operator Equal(a: TParameterType; b: TParameterType): Boolean;
    class operator NotEqual(a: TParameterType; b: TParameterType): Boolean;
    class operator Implicit(a: string): TParameterType;
    property Value: string read FValue;
  end;
  
  TParametersFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function KeyId: TParametersFilterKey; static;
    class function Name: TParametersFilterKey; static;
    class function &Type: TParametersFilterKey; static;
    class operator Equal(a: TParametersFilterKey; b: TParametersFilterKey): Boolean;
    class operator NotEqual(a: TParametersFilterKey; b: TParametersFilterKey): Boolean;
    class operator Implicit(a: string): TParametersFilterKey;
    property Value: string read FValue;
  end;
  
  TPatchAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ALLOW_AS_DEPENDENCY: TPatchAction; static;
    class function BLOCK: TPatchAction; static;
    class operator Equal(a: TPatchAction; b: TPatchAction): Boolean;
    class operator NotEqual(a: TPatchAction; b: TPatchAction): Boolean;
    class operator Implicit(a: string): TPatchAction;
    property Value: string read FValue;
  end;
  
  TPatchComplianceDataState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TPatchComplianceDataState; static;
    class function INSTALLED: TPatchComplianceDataState; static;
    class function INSTALLED_OTHER: TPatchComplianceDataState; static;
    class function INSTALLED_PENDING_REBOOT: TPatchComplianceDataState; static;
    class function INSTALLED_REJECTED: TPatchComplianceDataState; static;
    class function MISSING: TPatchComplianceDataState; static;
    class function NOT_APPLICABLE: TPatchComplianceDataState; static;
    class operator Equal(a: TPatchComplianceDataState; b: TPatchComplianceDataState): Boolean;
    class operator NotEqual(a: TPatchComplianceDataState; b: TPatchComplianceDataState): Boolean;
    class operator Implicit(a: string): TPatchComplianceDataState;
    property Value: string read FValue;
  end;
  
  TPatchComplianceLevel = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CRITICAL: TPatchComplianceLevel; static;
    class function HIGH: TPatchComplianceLevel; static;
    class function INFORMATIONAL: TPatchComplianceLevel; static;
    class function LOW: TPatchComplianceLevel; static;
    class function MEDIUM: TPatchComplianceLevel; static;
    class function UNSPECIFIED: TPatchComplianceLevel; static;
    class operator Equal(a: TPatchComplianceLevel; b: TPatchComplianceLevel): Boolean;
    class operator NotEqual(a: TPatchComplianceLevel; b: TPatchComplianceLevel): Boolean;
    class operator Implicit(a: string): TPatchComplianceLevel;
    property Value: string read FValue;
  end;
  
  TPatchDeploymentStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function APPROVED: TPatchDeploymentStatus; static;
    class function EXPLICIT_APPROVED: TPatchDeploymentStatus; static;
    class function EXPLICIT_REJECTED: TPatchDeploymentStatus; static;
    class function PENDING_APPROVAL: TPatchDeploymentStatus; static;
    class operator Equal(a: TPatchDeploymentStatus; b: TPatchDeploymentStatus): Boolean;
    class operator NotEqual(a: TPatchDeploymentStatus; b: TPatchDeploymentStatus): Boolean;
    class operator Implicit(a: string): TPatchDeploymentStatus;
    property Value: string read FValue;
  end;
  
  TPatchFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ADVISORY_ID: TPatchFilterKey; static;
    class function ARCH: TPatchFilterKey; static;
    class function BUGZILLA_ID: TPatchFilterKey; static;
    class function CLASSIFICATION: TPatchFilterKey; static;
    class function CVE_ID: TPatchFilterKey; static;
    class function EPOCH: TPatchFilterKey; static;
    class function MSRC_SEVERITY: TPatchFilterKey; static;
    class function NAME: TPatchFilterKey; static;
    class function PATCH_ID: TPatchFilterKey; static;
    class function PATCH_SET: TPatchFilterKey; static;
    class function PRIORITY: TPatchFilterKey; static;
    class function PRODUCT: TPatchFilterKey; static;
    class function PRODUCT_FAMILY: TPatchFilterKey; static;
    class function RELEASE: TPatchFilterKey; static;
    class function REPOSITORY: TPatchFilterKey; static;
    class function SECTION: TPatchFilterKey; static;
    class function SECURITY: TPatchFilterKey; static;
    class function SEVERITY: TPatchFilterKey; static;
    class function VERSION: TPatchFilterKey; static;
    class operator Equal(a: TPatchFilterKey; b: TPatchFilterKey): Boolean;
    class operator NotEqual(a: TPatchFilterKey; b: TPatchFilterKey): Boolean;
    class operator Implicit(a: string): TPatchFilterKey;
    property Value: string read FValue;
  end;
  
  TPatchOperationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Install: TPatchOperationType; static;
    class function Scan: TPatchOperationType; static;
    class operator Equal(a: TPatchOperationType; b: TPatchOperationType): Boolean;
    class operator NotEqual(a: TPatchOperationType; b: TPatchOperationType): Boolean;
    class operator Implicit(a: string): TPatchOperationType;
    property Value: string read FValue;
  end;
  
  TPatchProperty = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CLASSIFICATION: TPatchProperty; static;
    class function MSRC_SEVERITY: TPatchProperty; static;
    class function PRIORITY: TPatchProperty; static;
    class function PRODUCT: TPatchProperty; static;
    class function PRODUCT_FAMILY: TPatchProperty; static;
    class function SEVERITY: TPatchProperty; static;
    class operator Equal(a: TPatchProperty; b: TPatchProperty): Boolean;
    class operator NotEqual(a: TPatchProperty; b: TPatchProperty): Boolean;
    class operator Implicit(a: string): TPatchProperty;
    property Value: string read FValue;
  end;
  
  TPatchSet = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function APPLICATION: TPatchSet; static;
    class function OS: TPatchSet; static;
    class operator Equal(a: TPatchSet; b: TPatchSet): Boolean;
    class operator NotEqual(a: TPatchSet; b: TPatchSet): Boolean;
    class operator Implicit(a: string): TPatchSet;
    property Value: string read FValue;
  end;
  
  TPingStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ConnectionLost: TPingStatus; static;
    class function Inactive: TPingStatus; static;
    class function Online: TPingStatus; static;
    class operator Equal(a: TPingStatus; b: TPingStatus): Boolean;
    class operator NotEqual(a: TPingStatus; b: TPingStatus): Boolean;
    class operator Implicit(a: string): TPingStatus;
    property Value: string read FValue;
  end;
  
  TPlatformType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Linux: TPlatformType; static;
    class function MacOS: TPlatformType; static;
    class function Windows: TPlatformType; static;
    class operator Equal(a: TPlatformType; b: TPlatformType): Boolean;
    class operator NotEqual(a: TPlatformType; b: TPlatformType): Boolean;
    class operator Implicit(a: string): TPlatformType;
    property Value: string read FValue;
  end;
  
  TRebootOption = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function NoReboot: TRebootOption; static;
    class function RebootIfNeeded: TRebootOption; static;
    class operator Equal(a: TRebootOption; b: TRebootOption): Boolean;
    class operator NotEqual(a: TRebootOption; b: TRebootOption): Boolean;
    class operator Implicit(a: string): TRebootOption;
    property Value: string read FValue;
  end;
  
  TResourceDataSyncS3Format = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function JsonSerDe: TResourceDataSyncS3Format; static;
    class operator Equal(a: TResourceDataSyncS3Format; b: TResourceDataSyncS3Format): Boolean;
    class operator NotEqual(a: TResourceDataSyncS3Format; b: TResourceDataSyncS3Format): Boolean;
    class operator Implicit(a: string): TResourceDataSyncS3Format;
    property Value: string read FValue;
  end;
  
  TResourceType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Document: TResourceType; static;
    class function EC2Instance: TResourceType; static;
    class function ManagedInstance: TResourceType; static;
    class operator Equal(a: TResourceType; b: TResourceType): Boolean;
    class operator NotEqual(a: TResourceType; b: TResourceType): Boolean;
    class operator Implicit(a: string): TResourceType;
    property Value: string read FValue;
  end;
  
  TResourceTypeForTagging = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Automation: TResourceTypeForTagging; static;
    class function Document: TResourceTypeForTagging; static;
    class function MaintenanceWindow: TResourceTypeForTagging; static;
    class function ManagedInstance: TResourceTypeForTagging; static;
    class function OpsItem: TResourceTypeForTagging; static;
    class function OpsMetadata: TResourceTypeForTagging; static;
    class function Parameter: TResourceTypeForTagging; static;
    class function PatchBaseline: TResourceTypeForTagging; static;
    class operator Equal(a: TResourceTypeForTagging; b: TResourceTypeForTagging): Boolean;
    class operator NotEqual(a: TResourceTypeForTagging; b: TResourceTypeForTagging): Boolean;
    class operator Implicit(a: string): TResourceTypeForTagging;
    property Value: string read FValue;
  end;
  
  TReviewStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function APPROVED: TReviewStatus; static;
    class function NOT_REVIEWED: TReviewStatus; static;
    class function PENDING: TReviewStatus; static;
    class function REJECTED: TReviewStatus; static;
    class operator Equal(a: TReviewStatus; b: TReviewStatus): Boolean;
    class operator NotEqual(a: TReviewStatus; b: TReviewStatus): Boolean;
    class operator Implicit(a: string): TReviewStatus;
    property Value: string read FValue;
  end;
  
  TSessionFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function InvokedAfter: TSessionFilterKey; static;
    class function InvokedBefore: TSessionFilterKey; static;
    class function Owner: TSessionFilterKey; static;
    class function SessionId: TSessionFilterKey; static;
    class function Status: TSessionFilterKey; static;
    class function Target: TSessionFilterKey; static;
    class operator Equal(a: TSessionFilterKey; b: TSessionFilterKey): Boolean;
    class operator NotEqual(a: TSessionFilterKey; b: TSessionFilterKey): Boolean;
    class operator Implicit(a: string): TSessionFilterKey;
    property Value: string read FValue;
  end;
  
  TSessionState = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Active: TSessionState; static;
    class function History: TSessionState; static;
    class operator Equal(a: TSessionState; b: TSessionState): Boolean;
    class operator NotEqual(a: TSessionState; b: TSessionState): Boolean;
    class operator Implicit(a: string): TSessionState;
    property Value: string read FValue;
  end;
  
  TSessionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Connected: TSessionStatus; static;
    class function Connecting: TSessionStatus; static;
    class function Disconnected: TSessionStatus; static;
    class function Failed: TSessionStatus; static;
    class function Terminated: TSessionStatus; static;
    class function Terminating: TSessionStatus; static;
    class operator Equal(a: TSessionStatus; b: TSessionStatus): Boolean;
    class operator NotEqual(a: TSessionStatus; b: TSessionStatus): Boolean;
    class operator Implicit(a: string): TSessionStatus;
    property Value: string read FValue;
  end;
  
  TSignalType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Approve: TSignalType; static;
    class function Reject: TSignalType; static;
    class function Resume: TSignalType; static;
    class function StartStep: TSignalType; static;
    class function StopStep: TSignalType; static;
    class operator Equal(a: TSignalType; b: TSignalType): Boolean;
    class operator NotEqual(a: TSignalType; b: TSignalType): Boolean;
    class operator Implicit(a: string): TSignalType;
    property Value: string read FValue;
  end;
  
  TSourceType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AWSEC2Instance: TSourceType; static;
    class function AWSIoTThing: TSourceType; static;
    class function AWSSSMManagedInstance: TSourceType; static;
    class operator Equal(a: TSourceType; b: TSourceType): Boolean;
    class operator NotEqual(a: TSourceType; b: TSourceType): Boolean;
    class operator Implicit(a: string): TSourceType;
    property Value: string read FValue;
  end;
  
  TStepExecutionFilterKey = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Action: TStepExecutionFilterKey; static;
    class function StartTimeAfter: TStepExecutionFilterKey; static;
    class function StartTimeBefore: TStepExecutionFilterKey; static;
    class function StepExecutionId: TStepExecutionFilterKey; static;
    class function StepExecutionStatus: TStepExecutionFilterKey; static;
    class function StepName: TStepExecutionFilterKey; static;
    class operator Equal(a: TStepExecutionFilterKey; b: TStepExecutionFilterKey): Boolean;
    class operator NotEqual(a: TStepExecutionFilterKey; b: TStepExecutionFilterKey): Boolean;
    class operator Implicit(a: string): TStepExecutionFilterKey;
    property Value: string read FValue;
  end;
  
  TStopType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Cancel: TStopType; static;
    class function Complete: TStopType; static;
    class operator Equal(a: TStopType; b: TStopType): Boolean;
    class operator NotEqual(a: TStopType; b: TStopType): Boolean;
    class operator Implicit(a: string): TStopType;
    property Value: string read FValue;
  end;
  
implementation

{ TAssociationComplianceSeverity }

constructor TAssociationComplianceSeverity.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationComplianceSeverity.CRITICAL: TAssociationComplianceSeverity;
begin
  Result := TAssociationComplianceSeverity.Create('CRITICAL');
end;

class function TAssociationComplianceSeverity.HIGH: TAssociationComplianceSeverity;
begin
  Result := TAssociationComplianceSeverity.Create('HIGH');
end;

class function TAssociationComplianceSeverity.LOW: TAssociationComplianceSeverity;
begin
  Result := TAssociationComplianceSeverity.Create('LOW');
end;

class function TAssociationComplianceSeverity.MEDIUM: TAssociationComplianceSeverity;
begin
  Result := TAssociationComplianceSeverity.Create('MEDIUM');
end;

class function TAssociationComplianceSeverity.UNSPECIFIED: TAssociationComplianceSeverity;
begin
  Result := TAssociationComplianceSeverity.Create('UNSPECIFIED');
end;

class operator TAssociationComplianceSeverity.Equal(a: TAssociationComplianceSeverity; b: TAssociationComplianceSeverity): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationComplianceSeverity.NotEqual(a: TAssociationComplianceSeverity; b: TAssociationComplianceSeverity): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationComplianceSeverity.Implicit(a: string): TAssociationComplianceSeverity;
begin
  Result.FValue := a;;
end;

{ TAssociationExecutionFilterKey }

constructor TAssociationExecutionFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationExecutionFilterKey.CreatedTime: TAssociationExecutionFilterKey;
begin
  Result := TAssociationExecutionFilterKey.Create('CreatedTime');
end;

class function TAssociationExecutionFilterKey.ExecutionId: TAssociationExecutionFilterKey;
begin
  Result := TAssociationExecutionFilterKey.Create('ExecutionId');
end;

class function TAssociationExecutionFilterKey.Status: TAssociationExecutionFilterKey;
begin
  Result := TAssociationExecutionFilterKey.Create('Status');
end;

class operator TAssociationExecutionFilterKey.Equal(a: TAssociationExecutionFilterKey; b: TAssociationExecutionFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationExecutionFilterKey.NotEqual(a: TAssociationExecutionFilterKey; b: TAssociationExecutionFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationExecutionFilterKey.Implicit(a: string): TAssociationExecutionFilterKey;
begin
  Result.FValue := a;;
end;

{ TAssociationExecutionTargetsFilterKey }

constructor TAssociationExecutionTargetsFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationExecutionTargetsFilterKey.ResourceId: TAssociationExecutionTargetsFilterKey;
begin
  Result := TAssociationExecutionTargetsFilterKey.Create('ResourceId');
end;

class function TAssociationExecutionTargetsFilterKey.ResourceType: TAssociationExecutionTargetsFilterKey;
begin
  Result := TAssociationExecutionTargetsFilterKey.Create('ResourceType');
end;

class function TAssociationExecutionTargetsFilterKey.Status: TAssociationExecutionTargetsFilterKey;
begin
  Result := TAssociationExecutionTargetsFilterKey.Create('Status');
end;

class operator TAssociationExecutionTargetsFilterKey.Equal(a: TAssociationExecutionTargetsFilterKey; b: TAssociationExecutionTargetsFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationExecutionTargetsFilterKey.NotEqual(a: TAssociationExecutionTargetsFilterKey; b: TAssociationExecutionTargetsFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationExecutionTargetsFilterKey.Implicit(a: string): TAssociationExecutionTargetsFilterKey;
begin
  Result.FValue := a;;
end;

{ TAssociationFilterKey }

constructor TAssociationFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationFilterKey.AssociationId: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('AssociationId');
end;

class function TAssociationFilterKey.AssociationName: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('AssociationName');
end;

class function TAssociationFilterKey.AssociationStatusName: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('AssociationStatusName');
end;

class function TAssociationFilterKey.InstanceId: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('InstanceId');
end;

class function TAssociationFilterKey.LastExecutedAfter: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('LastExecutedAfter');
end;

class function TAssociationFilterKey.LastExecutedBefore: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('LastExecutedBefore');
end;

class function TAssociationFilterKey.Name: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('Name');
end;

class function TAssociationFilterKey.ResourceGroupName: TAssociationFilterKey;
begin
  Result := TAssociationFilterKey.Create('ResourceGroupName');
end;

class operator TAssociationFilterKey.Equal(a: TAssociationFilterKey; b: TAssociationFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationFilterKey.NotEqual(a: TAssociationFilterKey; b: TAssociationFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationFilterKey.Implicit(a: string): TAssociationFilterKey;
begin
  Result.FValue := a;;
end;

{ TAssociationFilterOperatorType }

constructor TAssociationFilterOperatorType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationFilterOperatorType.EQUAL: TAssociationFilterOperatorType;
begin
  Result := TAssociationFilterOperatorType.Create('EQUAL');
end;

class function TAssociationFilterOperatorType.GREATER_THAN: TAssociationFilterOperatorType;
begin
  Result := TAssociationFilterOperatorType.Create('GREATER_THAN');
end;

class function TAssociationFilterOperatorType.LESS_THAN: TAssociationFilterOperatorType;
begin
  Result := TAssociationFilterOperatorType.Create('LESS_THAN');
end;

class operator TAssociationFilterOperatorType.Equal(a: TAssociationFilterOperatorType; b: TAssociationFilterOperatorType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationFilterOperatorType.NotEqual(a: TAssociationFilterOperatorType; b: TAssociationFilterOperatorType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationFilterOperatorType.Implicit(a: string): TAssociationFilterOperatorType;
begin
  Result.FValue := a;;
end;

{ TAssociationStatusName }

constructor TAssociationStatusName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationStatusName.Failed: TAssociationStatusName;
begin
  Result := TAssociationStatusName.Create('Failed');
end;

class function TAssociationStatusName.Pending: TAssociationStatusName;
begin
  Result := TAssociationStatusName.Create('Pending');
end;

class function TAssociationStatusName.Success: TAssociationStatusName;
begin
  Result := TAssociationStatusName.Create('Success');
end;

class operator TAssociationStatusName.Equal(a: TAssociationStatusName; b: TAssociationStatusName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationStatusName.NotEqual(a: TAssociationStatusName; b: TAssociationStatusName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationStatusName.Implicit(a: string): TAssociationStatusName;
begin
  Result.FValue := a;;
end;

{ TAssociationSyncCompliance }

constructor TAssociationSyncCompliance.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAssociationSyncCompliance.AUTO: TAssociationSyncCompliance;
begin
  Result := TAssociationSyncCompliance.Create('AUTO');
end;

class function TAssociationSyncCompliance.MANUAL: TAssociationSyncCompliance;
begin
  Result := TAssociationSyncCompliance.Create('MANUAL');
end;

class operator TAssociationSyncCompliance.Equal(a: TAssociationSyncCompliance; b: TAssociationSyncCompliance): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAssociationSyncCompliance.NotEqual(a: TAssociationSyncCompliance; b: TAssociationSyncCompliance): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAssociationSyncCompliance.Implicit(a: string): TAssociationSyncCompliance;
begin
  Result.FValue := a;;
end;

{ TAttachmentHashType }

constructor TAttachmentHashType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAttachmentHashType.Sha256: TAttachmentHashType;
begin
  Result := TAttachmentHashType.Create('Sha256');
end;

class operator TAttachmentHashType.Equal(a: TAttachmentHashType; b: TAttachmentHashType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAttachmentHashType.NotEqual(a: TAttachmentHashType; b: TAttachmentHashType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAttachmentHashType.Implicit(a: string): TAttachmentHashType;
begin
  Result.FValue := a;;
end;

{ TAttachmentsSourceKey }

constructor TAttachmentsSourceKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAttachmentsSourceKey.AttachmentReference: TAttachmentsSourceKey;
begin
  Result := TAttachmentsSourceKey.Create('AttachmentReference');
end;

class function TAttachmentsSourceKey.S3FileUrl: TAttachmentsSourceKey;
begin
  Result := TAttachmentsSourceKey.Create('S3FileUrl');
end;

class function TAttachmentsSourceKey.SourceUrl: TAttachmentsSourceKey;
begin
  Result := TAttachmentsSourceKey.Create('SourceUrl');
end;

class operator TAttachmentsSourceKey.Equal(a: TAttachmentsSourceKey; b: TAttachmentsSourceKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAttachmentsSourceKey.NotEqual(a: TAttachmentsSourceKey; b: TAttachmentsSourceKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAttachmentsSourceKey.Implicit(a: string): TAttachmentsSourceKey;
begin
  Result.FValue := a;;
end;

{ TAutomationExecutionFilterKey }

constructor TAutomationExecutionFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAutomationExecutionFilterKey.AutomationSubtype: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('AutomationSubtype');
end;

class function TAutomationExecutionFilterKey.AutomationType: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('AutomationType');
end;

class function TAutomationExecutionFilterKey.CurrentAction: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('CurrentAction');
end;

class function TAutomationExecutionFilterKey.DocumentNamePrefix: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('DocumentNamePrefix');
end;

class function TAutomationExecutionFilterKey.ExecutionId: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('ExecutionId');
end;

class function TAutomationExecutionFilterKey.ExecutionStatus: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('ExecutionStatus');
end;

class function TAutomationExecutionFilterKey.OpsItemId: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('OpsItemId');
end;

class function TAutomationExecutionFilterKey.ParentExecutionId: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('ParentExecutionId');
end;

class function TAutomationExecutionFilterKey.StartTimeAfter: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('StartTimeAfter');
end;

class function TAutomationExecutionFilterKey.StartTimeBefore: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('StartTimeBefore');
end;

class function TAutomationExecutionFilterKey.TagKey: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('TagKey');
end;

class function TAutomationExecutionFilterKey.TargetResourceGroup: TAutomationExecutionFilterKey;
begin
  Result := TAutomationExecutionFilterKey.Create('TargetResourceGroup');
end;

class operator TAutomationExecutionFilterKey.Equal(a: TAutomationExecutionFilterKey; b: TAutomationExecutionFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAutomationExecutionFilterKey.NotEqual(a: TAutomationExecutionFilterKey; b: TAutomationExecutionFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAutomationExecutionFilterKey.Implicit(a: string): TAutomationExecutionFilterKey;
begin
  Result.FValue := a;;
end;

{ TAutomationExecutionStatus }

constructor TAutomationExecutionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAutomationExecutionStatus.Approved: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Approved');
end;

class function TAutomationExecutionStatus.Cancelled: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Cancelled');
end;

class function TAutomationExecutionStatus.Cancelling: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Cancelling');
end;

class function TAutomationExecutionStatus.ChangeCalendarOverrideApproved: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('ChangeCalendarOverrideApproved');
end;

class function TAutomationExecutionStatus.ChangeCalendarOverrideRejected: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('ChangeCalendarOverrideRejected');
end;

class function TAutomationExecutionStatus.CompletedWithFailure: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('CompletedWithFailure');
end;

class function TAutomationExecutionStatus.CompletedWithSuccess: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('CompletedWithSuccess');
end;

class function TAutomationExecutionStatus.Failed: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Failed');
end;

class function TAutomationExecutionStatus.InProgress: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('InProgress');
end;

class function TAutomationExecutionStatus.Pending: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Pending');
end;

class function TAutomationExecutionStatus.PendingApproval: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('PendingApproval');
end;

class function TAutomationExecutionStatus.PendingChangeCalendarOverride: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('PendingChangeCalendarOverride');
end;

class function TAutomationExecutionStatus.Rejected: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Rejected');
end;

class function TAutomationExecutionStatus.RunbookInProgress: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('RunbookInProgress');
end;

class function TAutomationExecutionStatus.Scheduled: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Scheduled');
end;

class function TAutomationExecutionStatus.Success: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Success');
end;

class function TAutomationExecutionStatus.TimedOut: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('TimedOut');
end;

class function TAutomationExecutionStatus.Waiting: TAutomationExecutionStatus;
begin
  Result := TAutomationExecutionStatus.Create('Waiting');
end;

class operator TAutomationExecutionStatus.Equal(a: TAutomationExecutionStatus; b: TAutomationExecutionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAutomationExecutionStatus.NotEqual(a: TAutomationExecutionStatus; b: TAutomationExecutionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAutomationExecutionStatus.Implicit(a: string): TAutomationExecutionStatus;
begin
  Result.FValue := a;;
end;

{ TAutomationSubtype }

constructor TAutomationSubtype.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAutomationSubtype.ChangeRequest: TAutomationSubtype;
begin
  Result := TAutomationSubtype.Create('ChangeRequest');
end;

class operator TAutomationSubtype.Equal(a: TAutomationSubtype; b: TAutomationSubtype): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAutomationSubtype.NotEqual(a: TAutomationSubtype; b: TAutomationSubtype): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAutomationSubtype.Implicit(a: string): TAutomationSubtype;
begin
  Result.FValue := a;;
end;

{ TAutomationType }

constructor TAutomationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAutomationType.CrossAccount: TAutomationType;
begin
  Result := TAutomationType.Create('CrossAccount');
end;

class function TAutomationType.Local: TAutomationType;
begin
  Result := TAutomationType.Create('Local');
end;

class operator TAutomationType.Equal(a: TAutomationType; b: TAutomationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAutomationType.NotEqual(a: TAutomationType; b: TAutomationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAutomationType.Implicit(a: string): TAutomationType;
begin
  Result.FValue := a;;
end;

{ TCalendarState }

constructor TCalendarState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCalendarState.CLOSED: TCalendarState;
begin
  Result := TCalendarState.Create('CLOSED');
end;

class function TCalendarState.OPEN: TCalendarState;
begin
  Result := TCalendarState.Create('OPEN');
end;

class operator TCalendarState.Equal(a: TCalendarState; b: TCalendarState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCalendarState.NotEqual(a: TCalendarState; b: TCalendarState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCalendarState.Implicit(a: string): TCalendarState;
begin
  Result.FValue := a;;
end;

{ TCommandFilterKey }

constructor TCommandFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCommandFilterKey.DocumentName: TCommandFilterKey;
begin
  Result := TCommandFilterKey.Create('DocumentName');
end;

class function TCommandFilterKey.ExecutionStage: TCommandFilterKey;
begin
  Result := TCommandFilterKey.Create('ExecutionStage');
end;

class function TCommandFilterKey.InvokedAfter: TCommandFilterKey;
begin
  Result := TCommandFilterKey.Create('InvokedAfter');
end;

class function TCommandFilterKey.InvokedBefore: TCommandFilterKey;
begin
  Result := TCommandFilterKey.Create('InvokedBefore');
end;

class function TCommandFilterKey.Status: TCommandFilterKey;
begin
  Result := TCommandFilterKey.Create('Status');
end;

class operator TCommandFilterKey.Equal(a: TCommandFilterKey; b: TCommandFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCommandFilterKey.NotEqual(a: TCommandFilterKey; b: TCommandFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCommandFilterKey.Implicit(a: string): TCommandFilterKey;
begin
  Result.FValue := a;;
end;

{ TCommandInvocationStatus }

constructor TCommandInvocationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCommandInvocationStatus.Cancelled: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Cancelled');
end;

class function TCommandInvocationStatus.Cancelling: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Cancelling');
end;

class function TCommandInvocationStatus.Delayed: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Delayed');
end;

class function TCommandInvocationStatus.Failed: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Failed');
end;

class function TCommandInvocationStatus.InProgress: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('InProgress');
end;

class function TCommandInvocationStatus.Pending: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Pending');
end;

class function TCommandInvocationStatus.Success: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('Success');
end;

class function TCommandInvocationStatus.TimedOut: TCommandInvocationStatus;
begin
  Result := TCommandInvocationStatus.Create('TimedOut');
end;

class operator TCommandInvocationStatus.Equal(a: TCommandInvocationStatus; b: TCommandInvocationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCommandInvocationStatus.NotEqual(a: TCommandInvocationStatus; b: TCommandInvocationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCommandInvocationStatus.Implicit(a: string): TCommandInvocationStatus;
begin
  Result.FValue := a;;
end;

{ TCommandPluginStatus }

constructor TCommandPluginStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCommandPluginStatus.Cancelled: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('Cancelled');
end;

class function TCommandPluginStatus.Failed: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('Failed');
end;

class function TCommandPluginStatus.InProgress: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('InProgress');
end;

class function TCommandPluginStatus.Pending: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('Pending');
end;

class function TCommandPluginStatus.Success: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('Success');
end;

class function TCommandPluginStatus.TimedOut: TCommandPluginStatus;
begin
  Result := TCommandPluginStatus.Create('TimedOut');
end;

class operator TCommandPluginStatus.Equal(a: TCommandPluginStatus; b: TCommandPluginStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCommandPluginStatus.NotEqual(a: TCommandPluginStatus; b: TCommandPluginStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCommandPluginStatus.Implicit(a: string): TCommandPluginStatus;
begin
  Result.FValue := a;;
end;

{ TCommandStatus }

constructor TCommandStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCommandStatus.Cancelled: TCommandStatus;
begin
  Result := TCommandStatus.Create('Cancelled');
end;

class function TCommandStatus.Cancelling: TCommandStatus;
begin
  Result := TCommandStatus.Create('Cancelling');
end;

class function TCommandStatus.Failed: TCommandStatus;
begin
  Result := TCommandStatus.Create('Failed');
end;

class function TCommandStatus.InProgress: TCommandStatus;
begin
  Result := TCommandStatus.Create('InProgress');
end;

class function TCommandStatus.Pending: TCommandStatus;
begin
  Result := TCommandStatus.Create('Pending');
end;

class function TCommandStatus.Success: TCommandStatus;
begin
  Result := TCommandStatus.Create('Success');
end;

class function TCommandStatus.TimedOut: TCommandStatus;
begin
  Result := TCommandStatus.Create('TimedOut');
end;

class operator TCommandStatus.Equal(a: TCommandStatus; b: TCommandStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCommandStatus.NotEqual(a: TCommandStatus; b: TCommandStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCommandStatus.Implicit(a: string): TCommandStatus;
begin
  Result.FValue := a;;
end;

{ TComplianceQueryOperatorType }

constructor TComplianceQueryOperatorType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TComplianceQueryOperatorType.BEGIN_WITH: TComplianceQueryOperatorType;
begin
  Result := TComplianceQueryOperatorType.Create('BEGIN_WITH');
end;

class function TComplianceQueryOperatorType.EQUAL: TComplianceQueryOperatorType;
begin
  Result := TComplianceQueryOperatorType.Create('EQUAL');
end;

class function TComplianceQueryOperatorType.GREATER_THAN: TComplianceQueryOperatorType;
begin
  Result := TComplianceQueryOperatorType.Create('GREATER_THAN');
end;

class function TComplianceQueryOperatorType.LESS_THAN: TComplianceQueryOperatorType;
begin
  Result := TComplianceQueryOperatorType.Create('LESS_THAN');
end;

class function TComplianceQueryOperatorType.NOT_EQUAL: TComplianceQueryOperatorType;
begin
  Result := TComplianceQueryOperatorType.Create('NOT_EQUAL');
end;

class operator TComplianceQueryOperatorType.Equal(a: TComplianceQueryOperatorType; b: TComplianceQueryOperatorType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TComplianceQueryOperatorType.NotEqual(a: TComplianceQueryOperatorType; b: TComplianceQueryOperatorType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TComplianceQueryOperatorType.Implicit(a: string): TComplianceQueryOperatorType;
begin
  Result.FValue := a;;
end;

{ TComplianceSeverity }

constructor TComplianceSeverity.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TComplianceSeverity.CRITICAL: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('CRITICAL');
end;

class function TComplianceSeverity.HIGH: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('HIGH');
end;

class function TComplianceSeverity.INFORMATIONAL: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('INFORMATIONAL');
end;

class function TComplianceSeverity.LOW: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('LOW');
end;

class function TComplianceSeverity.MEDIUM: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('MEDIUM');
end;

class function TComplianceSeverity.UNSPECIFIED: TComplianceSeverity;
begin
  Result := TComplianceSeverity.Create('UNSPECIFIED');
end;

class operator TComplianceSeverity.Equal(a: TComplianceSeverity; b: TComplianceSeverity): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TComplianceSeverity.NotEqual(a: TComplianceSeverity; b: TComplianceSeverity): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TComplianceSeverity.Implicit(a: string): TComplianceSeverity;
begin
  Result.FValue := a;;
end;

{ TComplianceStatus }

constructor TComplianceStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TComplianceStatus.COMPLIANT: TComplianceStatus;
begin
  Result := TComplianceStatus.Create('COMPLIANT');
end;

class function TComplianceStatus.NON_COMPLIANT: TComplianceStatus;
begin
  Result := TComplianceStatus.Create('NON_COMPLIANT');
end;

class operator TComplianceStatus.Equal(a: TComplianceStatus; b: TComplianceStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TComplianceStatus.NotEqual(a: TComplianceStatus; b: TComplianceStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TComplianceStatus.Implicit(a: string): TComplianceStatus;
begin
  Result.FValue := a;;
end;

{ TComplianceUploadType }

constructor TComplianceUploadType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TComplianceUploadType.COMPLETE: TComplianceUploadType;
begin
  Result := TComplianceUploadType.Create('COMPLETE');
end;

class function TComplianceUploadType.PARTIAL: TComplianceUploadType;
begin
  Result := TComplianceUploadType.Create('PARTIAL');
end;

class operator TComplianceUploadType.Equal(a: TComplianceUploadType; b: TComplianceUploadType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TComplianceUploadType.NotEqual(a: TComplianceUploadType; b: TComplianceUploadType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TComplianceUploadType.Implicit(a: string): TComplianceUploadType;
begin
  Result.FValue := a;;
end;

{ TConnectionStatus }

constructor TConnectionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TConnectionStatus.Connected: TConnectionStatus;
begin
  Result := TConnectionStatus.Create('Connected');
end;

class function TConnectionStatus.NotConnected: TConnectionStatus;
begin
  Result := TConnectionStatus.Create('NotConnected');
end;

class operator TConnectionStatus.Equal(a: TConnectionStatus; b: TConnectionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TConnectionStatus.NotEqual(a: TConnectionStatus; b: TConnectionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TConnectionStatus.Implicit(a: string): TConnectionStatus;
begin
  Result.FValue := a;;
end;

{ TDescribeActivationsFilterKeys }

constructor TDescribeActivationsFilterKeys.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDescribeActivationsFilterKeys.ActivationIds: TDescribeActivationsFilterKeys;
begin
  Result := TDescribeActivationsFilterKeys.Create('ActivationIds');
end;

class function TDescribeActivationsFilterKeys.DefaultInstanceName: TDescribeActivationsFilterKeys;
begin
  Result := TDescribeActivationsFilterKeys.Create('DefaultInstanceName');
end;

class function TDescribeActivationsFilterKeys.IamRole: TDescribeActivationsFilterKeys;
begin
  Result := TDescribeActivationsFilterKeys.Create('IamRole');
end;

class operator TDescribeActivationsFilterKeys.Equal(a: TDescribeActivationsFilterKeys; b: TDescribeActivationsFilterKeys): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDescribeActivationsFilterKeys.NotEqual(a: TDescribeActivationsFilterKeys; b: TDescribeActivationsFilterKeys): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDescribeActivationsFilterKeys.Implicit(a: string): TDescribeActivationsFilterKeys;
begin
  Result.FValue := a;;
end;

{ TDocumentFilterKey }

constructor TDocumentFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentFilterKey.DocumentType: TDocumentFilterKey;
begin
  Result := TDocumentFilterKey.Create('DocumentType');
end;

class function TDocumentFilterKey.Name: TDocumentFilterKey;
begin
  Result := TDocumentFilterKey.Create('Name');
end;

class function TDocumentFilterKey.Owner: TDocumentFilterKey;
begin
  Result := TDocumentFilterKey.Create('Owner');
end;

class function TDocumentFilterKey.PlatformTypes: TDocumentFilterKey;
begin
  Result := TDocumentFilterKey.Create('PlatformTypes');
end;

class operator TDocumentFilterKey.Equal(a: TDocumentFilterKey; b: TDocumentFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentFilterKey.NotEqual(a: TDocumentFilterKey; b: TDocumentFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentFilterKey.Implicit(a: string): TDocumentFilterKey;
begin
  Result.FValue := a;;
end;

{ TDocumentFormat }

constructor TDocumentFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentFormat.JSON: TDocumentFormat;
begin
  Result := TDocumentFormat.Create('JSON');
end;

class function TDocumentFormat.TEXT: TDocumentFormat;
begin
  Result := TDocumentFormat.Create('TEXT');
end;

class function TDocumentFormat.YAML: TDocumentFormat;
begin
  Result := TDocumentFormat.Create('YAML');
end;

class operator TDocumentFormat.Equal(a: TDocumentFormat; b: TDocumentFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentFormat.NotEqual(a: TDocumentFormat; b: TDocumentFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentFormat.Implicit(a: string): TDocumentFormat;
begin
  Result.FValue := a;;
end;

{ TDocumentHashType }

constructor TDocumentHashType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentHashType.Sha1: TDocumentHashType;
begin
  Result := TDocumentHashType.Create('Sha1');
end;

class function TDocumentHashType.Sha256: TDocumentHashType;
begin
  Result := TDocumentHashType.Create('Sha256');
end;

class operator TDocumentHashType.Equal(a: TDocumentHashType; b: TDocumentHashType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentHashType.NotEqual(a: TDocumentHashType; b: TDocumentHashType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentHashType.Implicit(a: string): TDocumentHashType;
begin
  Result.FValue := a;;
end;

{ TDocumentMetadataEnum }

constructor TDocumentMetadataEnum.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentMetadataEnum.DocumentReviews: TDocumentMetadataEnum;
begin
  Result := TDocumentMetadataEnum.Create('DocumentReviews');
end;

class operator TDocumentMetadataEnum.Equal(a: TDocumentMetadataEnum; b: TDocumentMetadataEnum): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentMetadataEnum.NotEqual(a: TDocumentMetadataEnum; b: TDocumentMetadataEnum): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentMetadataEnum.Implicit(a: string): TDocumentMetadataEnum;
begin
  Result.FValue := a;;
end;

{ TDocumentParameterType }

constructor TDocumentParameterType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentParameterType.&String: TDocumentParameterType;
begin
  Result := TDocumentParameterType.Create('String');
end;

class function TDocumentParameterType.StringList: TDocumentParameterType;
begin
  Result := TDocumentParameterType.Create('StringList');
end;

class operator TDocumentParameterType.Equal(a: TDocumentParameterType; b: TDocumentParameterType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentParameterType.NotEqual(a: TDocumentParameterType; b: TDocumentParameterType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentParameterType.Implicit(a: string): TDocumentParameterType;
begin
  Result.FValue := a;;
end;

{ TDocumentPermissionType }

constructor TDocumentPermissionType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentPermissionType.Share: TDocumentPermissionType;
begin
  Result := TDocumentPermissionType.Create('Share');
end;

class operator TDocumentPermissionType.Equal(a: TDocumentPermissionType; b: TDocumentPermissionType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentPermissionType.NotEqual(a: TDocumentPermissionType; b: TDocumentPermissionType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentPermissionType.Implicit(a: string): TDocumentPermissionType;
begin
  Result.FValue := a;;
end;

{ TDocumentReviewAction }

constructor TDocumentReviewAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentReviewAction.Approve: TDocumentReviewAction;
begin
  Result := TDocumentReviewAction.Create('Approve');
end;

class function TDocumentReviewAction.Reject: TDocumentReviewAction;
begin
  Result := TDocumentReviewAction.Create('Reject');
end;

class function TDocumentReviewAction.SendForReview: TDocumentReviewAction;
begin
  Result := TDocumentReviewAction.Create('SendForReview');
end;

class function TDocumentReviewAction.UpdateReview: TDocumentReviewAction;
begin
  Result := TDocumentReviewAction.Create('UpdateReview');
end;

class operator TDocumentReviewAction.Equal(a: TDocumentReviewAction; b: TDocumentReviewAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentReviewAction.NotEqual(a: TDocumentReviewAction; b: TDocumentReviewAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentReviewAction.Implicit(a: string): TDocumentReviewAction;
begin
  Result.FValue := a;;
end;

{ TDocumentReviewCommentType }

constructor TDocumentReviewCommentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentReviewCommentType.Comment: TDocumentReviewCommentType;
begin
  Result := TDocumentReviewCommentType.Create('Comment');
end;

class operator TDocumentReviewCommentType.Equal(a: TDocumentReviewCommentType; b: TDocumentReviewCommentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentReviewCommentType.NotEqual(a: TDocumentReviewCommentType; b: TDocumentReviewCommentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentReviewCommentType.Implicit(a: string): TDocumentReviewCommentType;
begin
  Result.FValue := a;;
end;

{ TDocumentStatus }

constructor TDocumentStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentStatus.Active: TDocumentStatus;
begin
  Result := TDocumentStatus.Create('Active');
end;

class function TDocumentStatus.Creating: TDocumentStatus;
begin
  Result := TDocumentStatus.Create('Creating');
end;

class function TDocumentStatus.Deleting: TDocumentStatus;
begin
  Result := TDocumentStatus.Create('Deleting');
end;

class function TDocumentStatus.Failed: TDocumentStatus;
begin
  Result := TDocumentStatus.Create('Failed');
end;

class function TDocumentStatus.Updating: TDocumentStatus;
begin
  Result := TDocumentStatus.Create('Updating');
end;

class operator TDocumentStatus.Equal(a: TDocumentStatus; b: TDocumentStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentStatus.NotEqual(a: TDocumentStatus; b: TDocumentStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentStatus.Implicit(a: string): TDocumentStatus;
begin
  Result.FValue := a;;
end;

{ TDocumentType }

constructor TDocumentType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDocumentType.ApplicationConfiguration: TDocumentType;
begin
  Result := TDocumentType.Create('ApplicationConfiguration');
end;

class function TDocumentType.ApplicationConfigurationSchema: TDocumentType;
begin
  Result := TDocumentType.Create('ApplicationConfigurationSchema');
end;

class function TDocumentType.Automation: TDocumentType;
begin
  Result := TDocumentType.Create('Automation');
end;

class function TDocumentType.AutomationChangeTemplate: TDocumentType;
begin
  Result := TDocumentType.Create('Automation.ChangeTemplate');
end;

class function TDocumentType.ChangeCalendar: TDocumentType;
begin
  Result := TDocumentType.Create('ChangeCalendar');
end;

class function TDocumentType.Command: TDocumentType;
begin
  Result := TDocumentType.Create('Command');
end;

class function TDocumentType.DeploymentStrategy: TDocumentType;
begin
  Result := TDocumentType.Create('DeploymentStrategy');
end;

class function TDocumentType.Package: TDocumentType;
begin
  Result := TDocumentType.Create('Package');
end;

class function TDocumentType.Policy: TDocumentType;
begin
  Result := TDocumentType.Create('Policy');
end;

class function TDocumentType.ProblemAnalysis: TDocumentType;
begin
  Result := TDocumentType.Create('ProblemAnalysis');
end;

class function TDocumentType.ProblemAnalysisTemplate: TDocumentType;
begin
  Result := TDocumentType.Create('ProblemAnalysisTemplate');
end;

class function TDocumentType.Session: TDocumentType;
begin
  Result := TDocumentType.Create('Session');
end;

class operator TDocumentType.Equal(a: TDocumentType; b: TDocumentType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDocumentType.NotEqual(a: TDocumentType; b: TDocumentType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDocumentType.Implicit(a: string): TDocumentType;
begin
  Result.FValue := a;;
end;

{ TExecutionMode }

constructor TExecutionMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TExecutionMode.Auto: TExecutionMode;
begin
  Result := TExecutionMode.Create('Auto');
end;

class function TExecutionMode.Interactive: TExecutionMode;
begin
  Result := TExecutionMode.Create('Interactive');
end;

class operator TExecutionMode.Equal(a: TExecutionMode; b: TExecutionMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TExecutionMode.NotEqual(a: TExecutionMode; b: TExecutionMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TExecutionMode.Implicit(a: string): TExecutionMode;
begin
  Result.FValue := a;;
end;

{ TFault }

constructor TFault.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFault.Client: TFault;
begin
  Result := TFault.Create('Client');
end;

class function TFault.Server: TFault;
begin
  Result := TFault.Create('Server');
end;

class function TFault.Unknown: TFault;
begin
  Result := TFault.Create('Unknown');
end;

class operator TFault.Equal(a: TFault; b: TFault): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFault.NotEqual(a: TFault; b: TFault): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFault.Implicit(a: string): TFault;
begin
  Result.FValue := a;;
end;

{ TInstanceInformationFilterKey }

constructor TInstanceInformationFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInstanceInformationFilterKey.ActivationIds: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('ActivationIds');
end;

class function TInstanceInformationFilterKey.AgentVersion: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('AgentVersion');
end;

class function TInstanceInformationFilterKey.AssociationStatus: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('AssociationStatus');
end;

class function TInstanceInformationFilterKey.IamRole: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('IamRole');
end;

class function TInstanceInformationFilterKey.InstanceIds: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('InstanceIds');
end;

class function TInstanceInformationFilterKey.PingStatus: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('PingStatus');
end;

class function TInstanceInformationFilterKey.PlatformTypes: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('PlatformTypes');
end;

class function TInstanceInformationFilterKey.ResourceType: TInstanceInformationFilterKey;
begin
  Result := TInstanceInformationFilterKey.Create('ResourceType');
end;

class operator TInstanceInformationFilterKey.Equal(a: TInstanceInformationFilterKey; b: TInstanceInformationFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInstanceInformationFilterKey.NotEqual(a: TInstanceInformationFilterKey; b: TInstanceInformationFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInstanceInformationFilterKey.Implicit(a: string): TInstanceInformationFilterKey;
begin
  Result.FValue := a;;
end;

{ TInstancePatchStateOperatorType }

constructor TInstancePatchStateOperatorType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInstancePatchStateOperatorType.Equal: TInstancePatchStateOperatorType;
begin
  Result := TInstancePatchStateOperatorType.Create('Equal');
end;

class function TInstancePatchStateOperatorType.GreaterThan: TInstancePatchStateOperatorType;
begin
  Result := TInstancePatchStateOperatorType.Create('GreaterThan');
end;

class function TInstancePatchStateOperatorType.LessThan: TInstancePatchStateOperatorType;
begin
  Result := TInstancePatchStateOperatorType.Create('LessThan');
end;

class function TInstancePatchStateOperatorType.NotEqual: TInstancePatchStateOperatorType;
begin
  Result := TInstancePatchStateOperatorType.Create('NotEqual');
end;

class operator TInstancePatchStateOperatorType.Equal(a: TInstancePatchStateOperatorType; b: TInstancePatchStateOperatorType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInstancePatchStateOperatorType.NotEqual(a: TInstancePatchStateOperatorType; b: TInstancePatchStateOperatorType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInstancePatchStateOperatorType.Implicit(a: string): TInstancePatchStateOperatorType;
begin
  Result.FValue := a;;
end;

{ TInventoryAttributeDataType }

constructor TInventoryAttributeDataType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryAttributeDataType.Number: TInventoryAttributeDataType;
begin
  Result := TInventoryAttributeDataType.Create('number');
end;

class function TInventoryAttributeDataType.&String: TInventoryAttributeDataType;
begin
  Result := TInventoryAttributeDataType.Create('string');
end;

class operator TInventoryAttributeDataType.Equal(a: TInventoryAttributeDataType; b: TInventoryAttributeDataType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryAttributeDataType.NotEqual(a: TInventoryAttributeDataType; b: TInventoryAttributeDataType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryAttributeDataType.Implicit(a: string): TInventoryAttributeDataType;
begin
  Result.FValue := a;;
end;

{ TInventoryDeletionStatus }

constructor TInventoryDeletionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryDeletionStatus.Complete: TInventoryDeletionStatus;
begin
  Result := TInventoryDeletionStatus.Create('Complete');
end;

class function TInventoryDeletionStatus.InProgress: TInventoryDeletionStatus;
begin
  Result := TInventoryDeletionStatus.Create('InProgress');
end;

class operator TInventoryDeletionStatus.Equal(a: TInventoryDeletionStatus; b: TInventoryDeletionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryDeletionStatus.NotEqual(a: TInventoryDeletionStatus; b: TInventoryDeletionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryDeletionStatus.Implicit(a: string): TInventoryDeletionStatus;
begin
  Result.FValue := a;;
end;

{ TInventoryQueryOperatorType }

constructor TInventoryQueryOperatorType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryQueryOperatorType.BeginWith: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('BeginWith');
end;

class function TInventoryQueryOperatorType.Equal: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('Equal');
end;

class function TInventoryQueryOperatorType.Exists: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('Exists');
end;

class function TInventoryQueryOperatorType.GreaterThan: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('GreaterThan');
end;

class function TInventoryQueryOperatorType.LessThan: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('LessThan');
end;

class function TInventoryQueryOperatorType.NotEqual: TInventoryQueryOperatorType;
begin
  Result := TInventoryQueryOperatorType.Create('NotEqual');
end;

class operator TInventoryQueryOperatorType.Equal(a: TInventoryQueryOperatorType; b: TInventoryQueryOperatorType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryQueryOperatorType.NotEqual(a: TInventoryQueryOperatorType; b: TInventoryQueryOperatorType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryQueryOperatorType.Implicit(a: string): TInventoryQueryOperatorType;
begin
  Result.FValue := a;;
end;

{ TInventorySchemaDeleteOption }

constructor TInventorySchemaDeleteOption.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventorySchemaDeleteOption.DeleteSchema: TInventorySchemaDeleteOption;
begin
  Result := TInventorySchemaDeleteOption.Create('DeleteSchema');
end;

class function TInventorySchemaDeleteOption.DisableSchema: TInventorySchemaDeleteOption;
begin
  Result := TInventorySchemaDeleteOption.Create('DisableSchema');
end;

class operator TInventorySchemaDeleteOption.Equal(a: TInventorySchemaDeleteOption; b: TInventorySchemaDeleteOption): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventorySchemaDeleteOption.NotEqual(a: TInventorySchemaDeleteOption; b: TInventorySchemaDeleteOption): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventorySchemaDeleteOption.Implicit(a: string): TInventorySchemaDeleteOption;
begin
  Result.FValue := a;;
end;

{ TLastResourceDataSyncStatus }

constructor TLastResourceDataSyncStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TLastResourceDataSyncStatus.Failed: TLastResourceDataSyncStatus;
begin
  Result := TLastResourceDataSyncStatus.Create('Failed');
end;

class function TLastResourceDataSyncStatus.InProgress: TLastResourceDataSyncStatus;
begin
  Result := TLastResourceDataSyncStatus.Create('InProgress');
end;

class function TLastResourceDataSyncStatus.Successful: TLastResourceDataSyncStatus;
begin
  Result := TLastResourceDataSyncStatus.Create('Successful');
end;

class operator TLastResourceDataSyncStatus.Equal(a: TLastResourceDataSyncStatus; b: TLastResourceDataSyncStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TLastResourceDataSyncStatus.NotEqual(a: TLastResourceDataSyncStatus; b: TLastResourceDataSyncStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TLastResourceDataSyncStatus.Implicit(a: string): TLastResourceDataSyncStatus;
begin
  Result.FValue := a;;
end;

{ TMaintenanceWindowExecutionStatus }

constructor TMaintenanceWindowExecutionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMaintenanceWindowExecutionStatus.CANCELLED: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('CANCELLED');
end;

class function TMaintenanceWindowExecutionStatus.CANCELLING: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('CANCELLING');
end;

class function TMaintenanceWindowExecutionStatus.FAILED: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('FAILED');
end;

class function TMaintenanceWindowExecutionStatus.IN_PROGRESS: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('IN_PROGRESS');
end;

class function TMaintenanceWindowExecutionStatus.PENDING: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('PENDING');
end;

class function TMaintenanceWindowExecutionStatus.SKIPPED_OVERLAPPING: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('SKIPPED_OVERLAPPING');
end;

class function TMaintenanceWindowExecutionStatus.SUCCESS: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('SUCCESS');
end;

class function TMaintenanceWindowExecutionStatus.TIMED_OUT: TMaintenanceWindowExecutionStatus;
begin
  Result := TMaintenanceWindowExecutionStatus.Create('TIMED_OUT');
end;

class operator TMaintenanceWindowExecutionStatus.Equal(a: TMaintenanceWindowExecutionStatus; b: TMaintenanceWindowExecutionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMaintenanceWindowExecutionStatus.NotEqual(a: TMaintenanceWindowExecutionStatus; b: TMaintenanceWindowExecutionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMaintenanceWindowExecutionStatus.Implicit(a: string): TMaintenanceWindowExecutionStatus;
begin
  Result.FValue := a;;
end;

{ TMaintenanceWindowResourceType }

constructor TMaintenanceWindowResourceType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMaintenanceWindowResourceType.INSTANCE: TMaintenanceWindowResourceType;
begin
  Result := TMaintenanceWindowResourceType.Create('INSTANCE');
end;

class function TMaintenanceWindowResourceType.RESOURCE_GROUP: TMaintenanceWindowResourceType;
begin
  Result := TMaintenanceWindowResourceType.Create('RESOURCE_GROUP');
end;

class operator TMaintenanceWindowResourceType.Equal(a: TMaintenanceWindowResourceType; b: TMaintenanceWindowResourceType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMaintenanceWindowResourceType.NotEqual(a: TMaintenanceWindowResourceType; b: TMaintenanceWindowResourceType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMaintenanceWindowResourceType.Implicit(a: string): TMaintenanceWindowResourceType;
begin
  Result.FValue := a;;
end;

{ TMaintenanceWindowTaskCutoffBehavior }

constructor TMaintenanceWindowTaskCutoffBehavior.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMaintenanceWindowTaskCutoffBehavior.CANCEL_TASK: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := TMaintenanceWindowTaskCutoffBehavior.Create('CANCEL_TASK');
end;

class function TMaintenanceWindowTaskCutoffBehavior.CONTINUE_TASK: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := TMaintenanceWindowTaskCutoffBehavior.Create('CONTINUE_TASK');
end;

class operator TMaintenanceWindowTaskCutoffBehavior.Equal(a: TMaintenanceWindowTaskCutoffBehavior; b: TMaintenanceWindowTaskCutoffBehavior): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMaintenanceWindowTaskCutoffBehavior.NotEqual(a: TMaintenanceWindowTaskCutoffBehavior; b: TMaintenanceWindowTaskCutoffBehavior): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMaintenanceWindowTaskCutoffBehavior.Implicit(a: string): TMaintenanceWindowTaskCutoffBehavior;
begin
  Result.FValue := a;;
end;

{ TMaintenanceWindowTaskType }

constructor TMaintenanceWindowTaskType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMaintenanceWindowTaskType.AUTOMATION: TMaintenanceWindowTaskType;
begin
  Result := TMaintenanceWindowTaskType.Create('AUTOMATION');
end;

class function TMaintenanceWindowTaskType.LAMBDA: TMaintenanceWindowTaskType;
begin
  Result := TMaintenanceWindowTaskType.Create('LAMBDA');
end;

class function TMaintenanceWindowTaskType.RUN_COMMAND: TMaintenanceWindowTaskType;
begin
  Result := TMaintenanceWindowTaskType.Create('RUN_COMMAND');
end;

class function TMaintenanceWindowTaskType.STEP_FUNCTIONS: TMaintenanceWindowTaskType;
begin
  Result := TMaintenanceWindowTaskType.Create('STEP_FUNCTIONS');
end;

class operator TMaintenanceWindowTaskType.Equal(a: TMaintenanceWindowTaskType; b: TMaintenanceWindowTaskType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMaintenanceWindowTaskType.NotEqual(a: TMaintenanceWindowTaskType; b: TMaintenanceWindowTaskType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMaintenanceWindowTaskType.Implicit(a: string): TMaintenanceWindowTaskType;
begin
  Result.FValue := a;;
end;

{ TNotificationEvent }

constructor TNotificationEvent.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TNotificationEvent.All: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('All');
end;

class function TNotificationEvent.Cancelled: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('Cancelled');
end;

class function TNotificationEvent.Failed: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('Failed');
end;

class function TNotificationEvent.InProgress: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('InProgress');
end;

class function TNotificationEvent.Success: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('Success');
end;

class function TNotificationEvent.TimedOut: TNotificationEvent;
begin
  Result := TNotificationEvent.Create('TimedOut');
end;

class operator TNotificationEvent.Equal(a: TNotificationEvent; b: TNotificationEvent): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TNotificationEvent.NotEqual(a: TNotificationEvent; b: TNotificationEvent): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TNotificationEvent.Implicit(a: string): TNotificationEvent;
begin
  Result.FValue := a;;
end;

{ TNotificationType }

constructor TNotificationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TNotificationType.Command: TNotificationType;
begin
  Result := TNotificationType.Create('Command');
end;

class function TNotificationType.Invocation: TNotificationType;
begin
  Result := TNotificationType.Create('Invocation');
end;

class operator TNotificationType.Equal(a: TNotificationType; b: TNotificationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TNotificationType.NotEqual(a: TNotificationType; b: TNotificationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TNotificationType.Implicit(a: string): TNotificationType;
begin
  Result.FValue := a;;
end;

{ TOperatingSystem }

constructor TOperatingSystem.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOperatingSystem.AMAZON_LINUX: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('AMAZON_LINUX');
end;

class function TOperatingSystem.AMAZON_LINUX_2: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('AMAZON_LINUX_2');
end;

class function TOperatingSystem.CENTOS: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('CENTOS');
end;

class function TOperatingSystem.DEBIAN: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('DEBIAN');
end;

class function TOperatingSystem.MACOS: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('MACOS');
end;

class function TOperatingSystem.ORACLE_LINUX: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('ORACLE_LINUX');
end;

class function TOperatingSystem.RASPBIAN: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('RASPBIAN');
end;

class function TOperatingSystem.REDHAT_ENTERPRISE_LINUX: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('REDHAT_ENTERPRISE_LINUX');
end;

class function TOperatingSystem.ROCKY_LINUX: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('ROCKY_LINUX');
end;

class function TOperatingSystem.SUSE: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('SUSE');
end;

class function TOperatingSystem.UBUNTU: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('UBUNTU');
end;

class function TOperatingSystem.WINDOWS: TOperatingSystem;
begin
  Result := TOperatingSystem.Create('WINDOWS');
end;

class operator TOperatingSystem.Equal(a: TOperatingSystem; b: TOperatingSystem): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOperatingSystem.NotEqual(a: TOperatingSystem; b: TOperatingSystem): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOperatingSystem.Implicit(a: string): TOperatingSystem;
begin
  Result.FValue := a;;
end;

{ TOpsFilterOperatorType }

constructor TOpsFilterOperatorType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsFilterOperatorType.BeginWith: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('BeginWith');
end;

class function TOpsFilterOperatorType.Equal: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('Equal');
end;

class function TOpsFilterOperatorType.Exists: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('Exists');
end;

class function TOpsFilterOperatorType.GreaterThan: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('GreaterThan');
end;

class function TOpsFilterOperatorType.LessThan: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('LessThan');
end;

class function TOpsFilterOperatorType.NotEqual: TOpsFilterOperatorType;
begin
  Result := TOpsFilterOperatorType.Create('NotEqual');
end;

class operator TOpsFilterOperatorType.Equal(a: TOpsFilterOperatorType; b: TOpsFilterOperatorType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsFilterOperatorType.NotEqual(a: TOpsFilterOperatorType; b: TOpsFilterOperatorType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsFilterOperatorType.Implicit(a: string): TOpsFilterOperatorType;
begin
  Result.FValue := a;;
end;

{ TOpsItemDataType }

constructor TOpsItemDataType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemDataType.SearchableString: TOpsItemDataType;
begin
  Result := TOpsItemDataType.Create('SearchableString');
end;

class function TOpsItemDataType.&String: TOpsItemDataType;
begin
  Result := TOpsItemDataType.Create('String');
end;

class operator TOpsItemDataType.Equal(a: TOpsItemDataType; b: TOpsItemDataType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemDataType.NotEqual(a: TOpsItemDataType; b: TOpsItemDataType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemDataType.Implicit(a: string): TOpsItemDataType;
begin
  Result.FValue := a;;
end;

{ TOpsItemEventFilterKey }

constructor TOpsItemEventFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemEventFilterKey.OpsItemId: TOpsItemEventFilterKey;
begin
  Result := TOpsItemEventFilterKey.Create('OpsItemId');
end;

class operator TOpsItemEventFilterKey.Equal(a: TOpsItemEventFilterKey; b: TOpsItemEventFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemEventFilterKey.NotEqual(a: TOpsItemEventFilterKey; b: TOpsItemEventFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemEventFilterKey.Implicit(a: string): TOpsItemEventFilterKey;
begin
  Result.FValue := a;;
end;

{ TOpsItemEventFilterOperator }

constructor TOpsItemEventFilterOperator.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemEventFilterOperator.Equal: TOpsItemEventFilterOperator;
begin
  Result := TOpsItemEventFilterOperator.Create('Equal');
end;

class operator TOpsItemEventFilterOperator.Equal(a: TOpsItemEventFilterOperator; b: TOpsItemEventFilterOperator): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemEventFilterOperator.NotEqual(a: TOpsItemEventFilterOperator; b: TOpsItemEventFilterOperator): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemEventFilterOperator.Implicit(a: string): TOpsItemEventFilterOperator;
begin
  Result.FValue := a;;
end;

{ TOpsItemFilterKey }

constructor TOpsItemFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemFilterKey.ActualEndTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ActualEndTime');
end;

class function TOpsItemFilterKey.ActualStartTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ActualStartTime');
end;

class function TOpsItemFilterKey.AutomationId: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('AutomationId');
end;

class function TOpsItemFilterKey.Category: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Category');
end;

class function TOpsItemFilterKey.ChangeRequestByApproverArn: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByApproverArn');
end;

class function TOpsItemFilterKey.ChangeRequestByApproverName: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByApproverName');
end;

class function TOpsItemFilterKey.ChangeRequestByRequesterArn: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByRequesterArn');
end;

class function TOpsItemFilterKey.ChangeRequestByRequesterName: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByRequesterName');
end;

class function TOpsItemFilterKey.ChangeRequestByTargetsResourceGroup: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByTargetsResourceGroup');
end;

class function TOpsItemFilterKey.ChangeRequestByTemplate: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ChangeRequestByTemplate');
end;

class function TOpsItemFilterKey.CreatedBy: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('CreatedBy');
end;

class function TOpsItemFilterKey.CreatedTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('CreatedTime');
end;

class function TOpsItemFilterKey.InsightByType: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('InsightByType');
end;

class function TOpsItemFilterKey.LastModifiedTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('LastModifiedTime');
end;

class function TOpsItemFilterKey.OperationalData: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('OperationalData');
end;

class function TOpsItemFilterKey.OperationalDataKey: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('OperationalDataKey');
end;

class function TOpsItemFilterKey.OperationalDataValue: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('OperationalDataValue');
end;

class function TOpsItemFilterKey.OpsItemId: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('OpsItemId');
end;

class function TOpsItemFilterKey.OpsItemType: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('OpsItemType');
end;

class function TOpsItemFilterKey.PlannedEndTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('PlannedEndTime');
end;

class function TOpsItemFilterKey.PlannedStartTime: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('PlannedStartTime');
end;

class function TOpsItemFilterKey.Priority: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Priority');
end;

class function TOpsItemFilterKey.ResourceId: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('ResourceId');
end;

class function TOpsItemFilterKey.Severity: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Severity');
end;

class function TOpsItemFilterKey.Source: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Source');
end;

class function TOpsItemFilterKey.Status: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Status');
end;

class function TOpsItemFilterKey.Title: TOpsItemFilterKey;
begin
  Result := TOpsItemFilterKey.Create('Title');
end;

class operator TOpsItemFilterKey.Equal(a: TOpsItemFilterKey; b: TOpsItemFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemFilterKey.NotEqual(a: TOpsItemFilterKey; b: TOpsItemFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemFilterKey.Implicit(a: string): TOpsItemFilterKey;
begin
  Result.FValue := a;;
end;

{ TOpsItemFilterOperator }

constructor TOpsItemFilterOperator.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemFilterOperator.Contains: TOpsItemFilterOperator;
begin
  Result := TOpsItemFilterOperator.Create('Contains');
end;

class function TOpsItemFilterOperator.Equal: TOpsItemFilterOperator;
begin
  Result := TOpsItemFilterOperator.Create('Equal');
end;

class function TOpsItemFilterOperator.GreaterThan: TOpsItemFilterOperator;
begin
  Result := TOpsItemFilterOperator.Create('GreaterThan');
end;

class function TOpsItemFilterOperator.LessThan: TOpsItemFilterOperator;
begin
  Result := TOpsItemFilterOperator.Create('LessThan');
end;

class operator TOpsItemFilterOperator.Equal(a: TOpsItemFilterOperator; b: TOpsItemFilterOperator): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemFilterOperator.NotEqual(a: TOpsItemFilterOperator; b: TOpsItemFilterOperator): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemFilterOperator.Implicit(a: string): TOpsItemFilterOperator;
begin
  Result.FValue := a;;
end;

{ TOpsItemRelatedItemsFilterKey }

constructor TOpsItemRelatedItemsFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemRelatedItemsFilterKey.AssociationId: TOpsItemRelatedItemsFilterKey;
begin
  Result := TOpsItemRelatedItemsFilterKey.Create('AssociationId');
end;

class function TOpsItemRelatedItemsFilterKey.ResourceType: TOpsItemRelatedItemsFilterKey;
begin
  Result := TOpsItemRelatedItemsFilterKey.Create('ResourceType');
end;

class function TOpsItemRelatedItemsFilterKey.ResourceUri: TOpsItemRelatedItemsFilterKey;
begin
  Result := TOpsItemRelatedItemsFilterKey.Create('ResourceUri');
end;

class operator TOpsItemRelatedItemsFilterKey.Equal(a: TOpsItemRelatedItemsFilterKey; b: TOpsItemRelatedItemsFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemRelatedItemsFilterKey.NotEqual(a: TOpsItemRelatedItemsFilterKey; b: TOpsItemRelatedItemsFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemRelatedItemsFilterKey.Implicit(a: string): TOpsItemRelatedItemsFilterKey;
begin
  Result.FValue := a;;
end;

{ TOpsItemRelatedItemsFilterOperator }

constructor TOpsItemRelatedItemsFilterOperator.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemRelatedItemsFilterOperator.Equal: TOpsItemRelatedItemsFilterOperator;
begin
  Result := TOpsItemRelatedItemsFilterOperator.Create('Equal');
end;

class operator TOpsItemRelatedItemsFilterOperator.Equal(a: TOpsItemRelatedItemsFilterOperator; b: TOpsItemRelatedItemsFilterOperator): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemRelatedItemsFilterOperator.NotEqual(a: TOpsItemRelatedItemsFilterOperator; b: TOpsItemRelatedItemsFilterOperator): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemRelatedItemsFilterOperator.Implicit(a: string): TOpsItemRelatedItemsFilterOperator;
begin
  Result.FValue := a;;
end;

{ TOpsItemStatus }

constructor TOpsItemStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOpsItemStatus.Approved: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Approved');
end;

class function TOpsItemStatus.Cancelled: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Cancelled');
end;

class function TOpsItemStatus.Cancelling: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Cancelling');
end;

class function TOpsItemStatus.ChangeCalendarOverrideApproved: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('ChangeCalendarOverrideApproved');
end;

class function TOpsItemStatus.ChangeCalendarOverrideRejected: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('ChangeCalendarOverrideRejected');
end;

class function TOpsItemStatus.Closed: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Closed');
end;

class function TOpsItemStatus.CompletedWithFailure: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('CompletedWithFailure');
end;

class function TOpsItemStatus.CompletedWithSuccess: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('CompletedWithSuccess');
end;

class function TOpsItemStatus.Failed: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Failed');
end;

class function TOpsItemStatus.InProgress: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('InProgress');
end;

class function TOpsItemStatus.Open: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Open');
end;

class function TOpsItemStatus.Pending: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Pending');
end;

class function TOpsItemStatus.PendingApproval: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('PendingApproval');
end;

class function TOpsItemStatus.PendingChangeCalendarOverride: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('PendingChangeCalendarOverride');
end;

class function TOpsItemStatus.Rejected: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Rejected');
end;

class function TOpsItemStatus.Resolved: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Resolved');
end;

class function TOpsItemStatus.RunbookInProgress: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('RunbookInProgress');
end;

class function TOpsItemStatus.Scheduled: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('Scheduled');
end;

class function TOpsItemStatus.TimedOut: TOpsItemStatus;
begin
  Result := TOpsItemStatus.Create('TimedOut');
end;

class operator TOpsItemStatus.Equal(a: TOpsItemStatus; b: TOpsItemStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOpsItemStatus.NotEqual(a: TOpsItemStatus; b: TOpsItemStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOpsItemStatus.Implicit(a: string): TOpsItemStatus;
begin
  Result.FValue := a;;
end;

{ TParameterTier }

constructor TParameterTier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParameterTier.Advanced: TParameterTier;
begin
  Result := TParameterTier.Create('Advanced');
end;

class function TParameterTier.IntelligentTiering: TParameterTier;
begin
  Result := TParameterTier.Create('Intelligent-Tiering');
end;

class function TParameterTier.Standard: TParameterTier;
begin
  Result := TParameterTier.Create('Standard');
end;

class operator TParameterTier.Equal(a: TParameterTier; b: TParameterTier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParameterTier.NotEqual(a: TParameterTier; b: TParameterTier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParameterTier.Implicit(a: string): TParameterTier;
begin
  Result.FValue := a;;
end;

{ TParameterType }

constructor TParameterType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParameterType.SecureString: TParameterType;
begin
  Result := TParameterType.Create('SecureString');
end;

class function TParameterType.&String: TParameterType;
begin
  Result := TParameterType.Create('String');
end;

class function TParameterType.StringList: TParameterType;
begin
  Result := TParameterType.Create('StringList');
end;

class operator TParameterType.Equal(a: TParameterType; b: TParameterType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParameterType.NotEqual(a: TParameterType; b: TParameterType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParameterType.Implicit(a: string): TParameterType;
begin
  Result.FValue := a;;
end;

{ TParametersFilterKey }

constructor TParametersFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TParametersFilterKey.KeyId: TParametersFilterKey;
begin
  Result := TParametersFilterKey.Create('KeyId');
end;

class function TParametersFilterKey.Name: TParametersFilterKey;
begin
  Result := TParametersFilterKey.Create('Name');
end;

class function TParametersFilterKey.&Type: TParametersFilterKey;
begin
  Result := TParametersFilterKey.Create('Type');
end;

class operator TParametersFilterKey.Equal(a: TParametersFilterKey; b: TParametersFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TParametersFilterKey.NotEqual(a: TParametersFilterKey; b: TParametersFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TParametersFilterKey.Implicit(a: string): TParametersFilterKey;
begin
  Result.FValue := a;;
end;

{ TPatchAction }

constructor TPatchAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchAction.ALLOW_AS_DEPENDENCY: TPatchAction;
begin
  Result := TPatchAction.Create('ALLOW_AS_DEPENDENCY');
end;

class function TPatchAction.BLOCK: TPatchAction;
begin
  Result := TPatchAction.Create('BLOCK');
end;

class operator TPatchAction.Equal(a: TPatchAction; b: TPatchAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchAction.NotEqual(a: TPatchAction; b: TPatchAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchAction.Implicit(a: string): TPatchAction;
begin
  Result.FValue := a;;
end;

{ TPatchComplianceDataState }

constructor TPatchComplianceDataState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchComplianceDataState.FAILED: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('FAILED');
end;

class function TPatchComplianceDataState.INSTALLED: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('INSTALLED');
end;

class function TPatchComplianceDataState.INSTALLED_OTHER: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('INSTALLED_OTHER');
end;

class function TPatchComplianceDataState.INSTALLED_PENDING_REBOOT: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('INSTALLED_PENDING_REBOOT');
end;

class function TPatchComplianceDataState.INSTALLED_REJECTED: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('INSTALLED_REJECTED');
end;

class function TPatchComplianceDataState.MISSING: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('MISSING');
end;

class function TPatchComplianceDataState.NOT_APPLICABLE: TPatchComplianceDataState;
begin
  Result := TPatchComplianceDataState.Create('NOT_APPLICABLE');
end;

class operator TPatchComplianceDataState.Equal(a: TPatchComplianceDataState; b: TPatchComplianceDataState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchComplianceDataState.NotEqual(a: TPatchComplianceDataState; b: TPatchComplianceDataState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchComplianceDataState.Implicit(a: string): TPatchComplianceDataState;
begin
  Result.FValue := a;;
end;

{ TPatchComplianceLevel }

constructor TPatchComplianceLevel.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchComplianceLevel.CRITICAL: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('CRITICAL');
end;

class function TPatchComplianceLevel.HIGH: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('HIGH');
end;

class function TPatchComplianceLevel.INFORMATIONAL: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('INFORMATIONAL');
end;

class function TPatchComplianceLevel.LOW: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('LOW');
end;

class function TPatchComplianceLevel.MEDIUM: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('MEDIUM');
end;

class function TPatchComplianceLevel.UNSPECIFIED: TPatchComplianceLevel;
begin
  Result := TPatchComplianceLevel.Create('UNSPECIFIED');
end;

class operator TPatchComplianceLevel.Equal(a: TPatchComplianceLevel; b: TPatchComplianceLevel): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchComplianceLevel.NotEqual(a: TPatchComplianceLevel; b: TPatchComplianceLevel): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchComplianceLevel.Implicit(a: string): TPatchComplianceLevel;
begin
  Result.FValue := a;;
end;

{ TPatchDeploymentStatus }

constructor TPatchDeploymentStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchDeploymentStatus.APPROVED: TPatchDeploymentStatus;
begin
  Result := TPatchDeploymentStatus.Create('APPROVED');
end;

class function TPatchDeploymentStatus.EXPLICIT_APPROVED: TPatchDeploymentStatus;
begin
  Result := TPatchDeploymentStatus.Create('EXPLICIT_APPROVED');
end;

class function TPatchDeploymentStatus.EXPLICIT_REJECTED: TPatchDeploymentStatus;
begin
  Result := TPatchDeploymentStatus.Create('EXPLICIT_REJECTED');
end;

class function TPatchDeploymentStatus.PENDING_APPROVAL: TPatchDeploymentStatus;
begin
  Result := TPatchDeploymentStatus.Create('PENDING_APPROVAL');
end;

class operator TPatchDeploymentStatus.Equal(a: TPatchDeploymentStatus; b: TPatchDeploymentStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchDeploymentStatus.NotEqual(a: TPatchDeploymentStatus; b: TPatchDeploymentStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchDeploymentStatus.Implicit(a: string): TPatchDeploymentStatus;
begin
  Result.FValue := a;;
end;

{ TPatchFilterKey }

constructor TPatchFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchFilterKey.ADVISORY_ID: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('ADVISORY_ID');
end;

class function TPatchFilterKey.ARCH: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('ARCH');
end;

class function TPatchFilterKey.BUGZILLA_ID: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('BUGZILLA_ID');
end;

class function TPatchFilterKey.CLASSIFICATION: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('CLASSIFICATION');
end;

class function TPatchFilterKey.CVE_ID: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('CVE_ID');
end;

class function TPatchFilterKey.EPOCH: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('EPOCH');
end;

class function TPatchFilterKey.MSRC_SEVERITY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('MSRC_SEVERITY');
end;

class function TPatchFilterKey.NAME: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('NAME');
end;

class function TPatchFilterKey.PATCH_ID: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('PATCH_ID');
end;

class function TPatchFilterKey.PATCH_SET: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('PATCH_SET');
end;

class function TPatchFilterKey.PRIORITY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('PRIORITY');
end;

class function TPatchFilterKey.PRODUCT: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('PRODUCT');
end;

class function TPatchFilterKey.PRODUCT_FAMILY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('PRODUCT_FAMILY');
end;

class function TPatchFilterKey.RELEASE: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('RELEASE');
end;

class function TPatchFilterKey.REPOSITORY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('REPOSITORY');
end;

class function TPatchFilterKey.SECTION: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('SECTION');
end;

class function TPatchFilterKey.SECURITY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('SECURITY');
end;

class function TPatchFilterKey.SEVERITY: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('SEVERITY');
end;

class function TPatchFilterKey.VERSION: TPatchFilterKey;
begin
  Result := TPatchFilterKey.Create('VERSION');
end;

class operator TPatchFilterKey.Equal(a: TPatchFilterKey; b: TPatchFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchFilterKey.NotEqual(a: TPatchFilterKey; b: TPatchFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchFilterKey.Implicit(a: string): TPatchFilterKey;
begin
  Result.FValue := a;;
end;

{ TPatchOperationType }

constructor TPatchOperationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchOperationType.Install: TPatchOperationType;
begin
  Result := TPatchOperationType.Create('Install');
end;

class function TPatchOperationType.Scan: TPatchOperationType;
begin
  Result := TPatchOperationType.Create('Scan');
end;

class operator TPatchOperationType.Equal(a: TPatchOperationType; b: TPatchOperationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchOperationType.NotEqual(a: TPatchOperationType; b: TPatchOperationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchOperationType.Implicit(a: string): TPatchOperationType;
begin
  Result.FValue := a;;
end;

{ TPatchProperty }

constructor TPatchProperty.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchProperty.CLASSIFICATION: TPatchProperty;
begin
  Result := TPatchProperty.Create('CLASSIFICATION');
end;

class function TPatchProperty.MSRC_SEVERITY: TPatchProperty;
begin
  Result := TPatchProperty.Create('MSRC_SEVERITY');
end;

class function TPatchProperty.PRIORITY: TPatchProperty;
begin
  Result := TPatchProperty.Create('PRIORITY');
end;

class function TPatchProperty.PRODUCT: TPatchProperty;
begin
  Result := TPatchProperty.Create('PRODUCT');
end;

class function TPatchProperty.PRODUCT_FAMILY: TPatchProperty;
begin
  Result := TPatchProperty.Create('PRODUCT_FAMILY');
end;

class function TPatchProperty.SEVERITY: TPatchProperty;
begin
  Result := TPatchProperty.Create('SEVERITY');
end;

class operator TPatchProperty.Equal(a: TPatchProperty; b: TPatchProperty): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchProperty.NotEqual(a: TPatchProperty; b: TPatchProperty): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchProperty.Implicit(a: string): TPatchProperty;
begin
  Result.FValue := a;;
end;

{ TPatchSet }

constructor TPatchSet.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPatchSet.APPLICATION: TPatchSet;
begin
  Result := TPatchSet.Create('APPLICATION');
end;

class function TPatchSet.OS: TPatchSet;
begin
  Result := TPatchSet.Create('OS');
end;

class operator TPatchSet.Equal(a: TPatchSet; b: TPatchSet): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPatchSet.NotEqual(a: TPatchSet; b: TPatchSet): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPatchSet.Implicit(a: string): TPatchSet;
begin
  Result.FValue := a;;
end;

{ TPingStatus }

constructor TPingStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPingStatus.ConnectionLost: TPingStatus;
begin
  Result := TPingStatus.Create('ConnectionLost');
end;

class function TPingStatus.Inactive: TPingStatus;
begin
  Result := TPingStatus.Create('Inactive');
end;

class function TPingStatus.Online: TPingStatus;
begin
  Result := TPingStatus.Create('Online');
end;

class operator TPingStatus.Equal(a: TPingStatus; b: TPingStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPingStatus.NotEqual(a: TPingStatus; b: TPingStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPingStatus.Implicit(a: string): TPingStatus;
begin
  Result.FValue := a;;
end;

{ TPlatformType }

constructor TPlatformType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPlatformType.Linux: TPlatformType;
begin
  Result := TPlatformType.Create('Linux');
end;

class function TPlatformType.MacOS: TPlatformType;
begin
  Result := TPlatformType.Create('MacOS');
end;

class function TPlatformType.Windows: TPlatformType;
begin
  Result := TPlatformType.Create('Windows');
end;

class operator TPlatformType.Equal(a: TPlatformType; b: TPlatformType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPlatformType.NotEqual(a: TPlatformType; b: TPlatformType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPlatformType.Implicit(a: string): TPlatformType;
begin
  Result.FValue := a;;
end;

{ TRebootOption }

constructor TRebootOption.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRebootOption.NoReboot: TRebootOption;
begin
  Result := TRebootOption.Create('NoReboot');
end;

class function TRebootOption.RebootIfNeeded: TRebootOption;
begin
  Result := TRebootOption.Create('RebootIfNeeded');
end;

class operator TRebootOption.Equal(a: TRebootOption; b: TRebootOption): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRebootOption.NotEqual(a: TRebootOption; b: TRebootOption): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRebootOption.Implicit(a: string): TRebootOption;
begin
  Result.FValue := a;;
end;

{ TResourceDataSyncS3Format }

constructor TResourceDataSyncS3Format.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TResourceDataSyncS3Format.JsonSerDe: TResourceDataSyncS3Format;
begin
  Result := TResourceDataSyncS3Format.Create('JsonSerDe');
end;

class operator TResourceDataSyncS3Format.Equal(a: TResourceDataSyncS3Format; b: TResourceDataSyncS3Format): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TResourceDataSyncS3Format.NotEqual(a: TResourceDataSyncS3Format; b: TResourceDataSyncS3Format): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TResourceDataSyncS3Format.Implicit(a: string): TResourceDataSyncS3Format;
begin
  Result.FValue := a;;
end;

{ TResourceType }

constructor TResourceType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TResourceType.Document: TResourceType;
begin
  Result := TResourceType.Create('Document');
end;

class function TResourceType.EC2Instance: TResourceType;
begin
  Result := TResourceType.Create('EC2Instance');
end;

class function TResourceType.ManagedInstance: TResourceType;
begin
  Result := TResourceType.Create('ManagedInstance');
end;

class operator TResourceType.Equal(a: TResourceType; b: TResourceType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TResourceType.NotEqual(a: TResourceType; b: TResourceType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TResourceType.Implicit(a: string): TResourceType;
begin
  Result.FValue := a;;
end;

{ TResourceTypeForTagging }

constructor TResourceTypeForTagging.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TResourceTypeForTagging.Automation: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('Automation');
end;

class function TResourceTypeForTagging.Document: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('Document');
end;

class function TResourceTypeForTagging.MaintenanceWindow: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('MaintenanceWindow');
end;

class function TResourceTypeForTagging.ManagedInstance: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('ManagedInstance');
end;

class function TResourceTypeForTagging.OpsItem: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('OpsItem');
end;

class function TResourceTypeForTagging.OpsMetadata: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('OpsMetadata');
end;

class function TResourceTypeForTagging.Parameter: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('Parameter');
end;

class function TResourceTypeForTagging.PatchBaseline: TResourceTypeForTagging;
begin
  Result := TResourceTypeForTagging.Create('PatchBaseline');
end;

class operator TResourceTypeForTagging.Equal(a: TResourceTypeForTagging; b: TResourceTypeForTagging): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TResourceTypeForTagging.NotEqual(a: TResourceTypeForTagging; b: TResourceTypeForTagging): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TResourceTypeForTagging.Implicit(a: string): TResourceTypeForTagging;
begin
  Result.FValue := a;;
end;

{ TReviewStatus }

constructor TReviewStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReviewStatus.APPROVED: TReviewStatus;
begin
  Result := TReviewStatus.Create('APPROVED');
end;

class function TReviewStatus.NOT_REVIEWED: TReviewStatus;
begin
  Result := TReviewStatus.Create('NOT_REVIEWED');
end;

class function TReviewStatus.PENDING: TReviewStatus;
begin
  Result := TReviewStatus.Create('PENDING');
end;

class function TReviewStatus.REJECTED: TReviewStatus;
begin
  Result := TReviewStatus.Create('REJECTED');
end;

class operator TReviewStatus.Equal(a: TReviewStatus; b: TReviewStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReviewStatus.NotEqual(a: TReviewStatus; b: TReviewStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReviewStatus.Implicit(a: string): TReviewStatus;
begin
  Result.FValue := a;;
end;

{ TSessionFilterKey }

constructor TSessionFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSessionFilterKey.InvokedAfter: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('InvokedAfter');
end;

class function TSessionFilterKey.InvokedBefore: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('InvokedBefore');
end;

class function TSessionFilterKey.Owner: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('Owner');
end;

class function TSessionFilterKey.SessionId: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('SessionId');
end;

class function TSessionFilterKey.Status: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('Status');
end;

class function TSessionFilterKey.Target: TSessionFilterKey;
begin
  Result := TSessionFilterKey.Create('Target');
end;

class operator TSessionFilterKey.Equal(a: TSessionFilterKey; b: TSessionFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSessionFilterKey.NotEqual(a: TSessionFilterKey; b: TSessionFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSessionFilterKey.Implicit(a: string): TSessionFilterKey;
begin
  Result.FValue := a;;
end;

{ TSessionState }

constructor TSessionState.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSessionState.Active: TSessionState;
begin
  Result := TSessionState.Create('Active');
end;

class function TSessionState.History: TSessionState;
begin
  Result := TSessionState.Create('History');
end;

class operator TSessionState.Equal(a: TSessionState; b: TSessionState): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSessionState.NotEqual(a: TSessionState; b: TSessionState): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSessionState.Implicit(a: string): TSessionState;
begin
  Result.FValue := a;;
end;

{ TSessionStatus }

constructor TSessionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSessionStatus.Connected: TSessionStatus;
begin
  Result := TSessionStatus.Create('Connected');
end;

class function TSessionStatus.Connecting: TSessionStatus;
begin
  Result := TSessionStatus.Create('Connecting');
end;

class function TSessionStatus.Disconnected: TSessionStatus;
begin
  Result := TSessionStatus.Create('Disconnected');
end;

class function TSessionStatus.Failed: TSessionStatus;
begin
  Result := TSessionStatus.Create('Failed');
end;

class function TSessionStatus.Terminated: TSessionStatus;
begin
  Result := TSessionStatus.Create('Terminated');
end;

class function TSessionStatus.Terminating: TSessionStatus;
begin
  Result := TSessionStatus.Create('Terminating');
end;

class operator TSessionStatus.Equal(a: TSessionStatus; b: TSessionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSessionStatus.NotEqual(a: TSessionStatus; b: TSessionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSessionStatus.Implicit(a: string): TSessionStatus;
begin
  Result.FValue := a;;
end;

{ TSignalType }

constructor TSignalType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSignalType.Approve: TSignalType;
begin
  Result := TSignalType.Create('Approve');
end;

class function TSignalType.Reject: TSignalType;
begin
  Result := TSignalType.Create('Reject');
end;

class function TSignalType.Resume: TSignalType;
begin
  Result := TSignalType.Create('Resume');
end;

class function TSignalType.StartStep: TSignalType;
begin
  Result := TSignalType.Create('StartStep');
end;

class function TSignalType.StopStep: TSignalType;
begin
  Result := TSignalType.Create('StopStep');
end;

class operator TSignalType.Equal(a: TSignalType; b: TSignalType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSignalType.NotEqual(a: TSignalType; b: TSignalType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSignalType.Implicit(a: string): TSignalType;
begin
  Result.FValue := a;;
end;

{ TSourceType }

constructor TSourceType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSourceType.AWSEC2Instance: TSourceType;
begin
  Result := TSourceType.Create('AWS::EC2::Instance');
end;

class function TSourceType.AWSIoTThing: TSourceType;
begin
  Result := TSourceType.Create('AWS::IoT::Thing');
end;

class function TSourceType.AWSSSMManagedInstance: TSourceType;
begin
  Result := TSourceType.Create('AWS::SSM::ManagedInstance');
end;

class operator TSourceType.Equal(a: TSourceType; b: TSourceType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSourceType.NotEqual(a: TSourceType; b: TSourceType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSourceType.Implicit(a: string): TSourceType;
begin
  Result.FValue := a;;
end;

{ TStepExecutionFilterKey }

constructor TStepExecutionFilterKey.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStepExecutionFilterKey.Action: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('Action');
end;

class function TStepExecutionFilterKey.StartTimeAfter: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('StartTimeAfter');
end;

class function TStepExecutionFilterKey.StartTimeBefore: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('StartTimeBefore');
end;

class function TStepExecutionFilterKey.StepExecutionId: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('StepExecutionId');
end;

class function TStepExecutionFilterKey.StepExecutionStatus: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('StepExecutionStatus');
end;

class function TStepExecutionFilterKey.StepName: TStepExecutionFilterKey;
begin
  Result := TStepExecutionFilterKey.Create('StepName');
end;

class operator TStepExecutionFilterKey.Equal(a: TStepExecutionFilterKey; b: TStepExecutionFilterKey): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStepExecutionFilterKey.NotEqual(a: TStepExecutionFilterKey; b: TStepExecutionFilterKey): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStepExecutionFilterKey.Implicit(a: string): TStepExecutionFilterKey;
begin
  Result.FValue := a;;
end;

{ TStopType }

constructor TStopType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStopType.Cancel: TStopType;
begin
  Result := TStopType.Create('Cancel');
end;

class function TStopType.Complete: TStopType;
begin
  Result := TStopType.Create('Complete');
end;

class operator TStopType.Equal(a: TStopType; b: TStopType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStopType.NotEqual(a: TStopType; b: TStopType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStopType.Implicit(a: string): TStopType;
begin
  Result.FValue := a;;
end;

end.
