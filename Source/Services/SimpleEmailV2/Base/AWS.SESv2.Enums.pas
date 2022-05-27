unit AWS.SESv2.Enums;

interface

type
  TBehaviorOnMxFailure = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function REJECT_MESSAGE: TBehaviorOnMxFailure; static;
    class function USE_DEFAULT_VALUE: TBehaviorOnMxFailure; static;
    class operator Equal(a: TBehaviorOnMxFailure; b: TBehaviorOnMxFailure): Boolean;
    class operator NotEqual(a: TBehaviorOnMxFailure; b: TBehaviorOnMxFailure): Boolean;
    class operator Implicit(a: string): TBehaviorOnMxFailure;
    property Value: string read FValue;
  end;
  
  TBulkEmailStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ACCOUNT_DAILY_QUOTA_EXCEEDED: TBulkEmailStatus; static;
    class function ACCOUNT_SENDING_PAUSED: TBulkEmailStatus; static;
    class function ACCOUNT_SUSPENDED: TBulkEmailStatus; static;
    class function ACCOUNT_THROTTLED: TBulkEmailStatus; static;
    class function CONFIGURATION_SET_NOT_FOUND: TBulkEmailStatus; static;
    class function CONFIGURATION_SET_SENDING_PAUSED: TBulkEmailStatus; static;
    class function FAILED: TBulkEmailStatus; static;
    class function INVALID_PARAMETER: TBulkEmailStatus; static;
    class function INVALID_SENDING_POOL_NAME: TBulkEmailStatus; static;
    class function MAIL_FROM_DOMAIN_NOT_VERIFIED: TBulkEmailStatus; static;
    class function MESSAGE_REJECTED: TBulkEmailStatus; static;
    class function SUCCESS: TBulkEmailStatus; static;
    class function TEMPLATE_NOT_FOUND: TBulkEmailStatus; static;
    class function TRANSIENT_FAILURE: TBulkEmailStatus; static;
    class operator Equal(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
    class operator NotEqual(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
    class operator Implicit(a: string): TBulkEmailStatus;
    property Value: string read FValue;
  end;
  
  TContactLanguage = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EN: TContactLanguage; static;
    class function JA: TContactLanguage; static;
    class operator Equal(a: TContactLanguage; b: TContactLanguage): Boolean;
    class operator NotEqual(a: TContactLanguage; b: TContactLanguage): Boolean;
    class operator Implicit(a: string): TContactLanguage;
    property Value: string read FValue;
  end;
  
  TContactListImportAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DELETE: TContactListImportAction; static;
    class function PUT: TContactListImportAction; static;
    class operator Equal(a: TContactListImportAction; b: TContactListImportAction): Boolean;
    class operator NotEqual(a: TContactListImportAction; b: TContactListImportAction): Boolean;
    class operator Implicit(a: string): TContactListImportAction;
    property Value: string read FValue;
  end;
  
  TDataFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TDataFormat; static;
    class function JSON: TDataFormat; static;
    class operator Equal(a: TDataFormat; b: TDataFormat): Boolean;
    class operator NotEqual(a: TDataFormat; b: TDataFormat): Boolean;
    class operator Implicit(a: string): TDataFormat;
    property Value: string read FValue;
  end;
  
  TDeliverabilityDashboardAccountStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ACTIVE: TDeliverabilityDashboardAccountStatus; static;
    class function DISABLED: TDeliverabilityDashboardAccountStatus; static;
    class function PENDING_EXPIRATION: TDeliverabilityDashboardAccountStatus; static;
    class operator Equal(a: TDeliverabilityDashboardAccountStatus; b: TDeliverabilityDashboardAccountStatus): Boolean;
    class operator NotEqual(a: TDeliverabilityDashboardAccountStatus; b: TDeliverabilityDashboardAccountStatus): Boolean;
    class operator Implicit(a: string): TDeliverabilityDashboardAccountStatus;
    property Value: string read FValue;
  end;
  
  TDeliverabilityTestStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TDeliverabilityTestStatus; static;
    class function IN_PROGRESS: TDeliverabilityTestStatus; static;
    class operator Equal(a: TDeliverabilityTestStatus; b: TDeliverabilityTestStatus): Boolean;
    class operator NotEqual(a: TDeliverabilityTestStatus; b: TDeliverabilityTestStatus): Boolean;
    class operator Implicit(a: string): TDeliverabilityTestStatus;
    property Value: string read FValue;
  end;
  
  TDimensionValueSource = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EMAIL_HEADER: TDimensionValueSource; static;
    class function LINK_TAG: TDimensionValueSource; static;
    class function MESSAGE_TAG: TDimensionValueSource; static;
    class operator Equal(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
    class operator NotEqual(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
    class operator Implicit(a: string): TDimensionValueSource;
    property Value: string read FValue;
  end;
  
  TDkimSigningAttributesOrigin = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AWS_SES: TDkimSigningAttributesOrigin; static;
    class function EXTERNAL: TDkimSigningAttributesOrigin; static;
    class operator Equal(a: TDkimSigningAttributesOrigin; b: TDkimSigningAttributesOrigin): Boolean;
    class operator NotEqual(a: TDkimSigningAttributesOrigin; b: TDkimSigningAttributesOrigin): Boolean;
    class operator Implicit(a: string): TDkimSigningAttributesOrigin;
    property Value: string read FValue;
  end;
  
  TDkimSigningKeyLength = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function RSA_1024_BIT: TDkimSigningKeyLength; static;
    class function RSA_2048_BIT: TDkimSigningKeyLength; static;
    class operator Equal(a: TDkimSigningKeyLength; b: TDkimSigningKeyLength): Boolean;
    class operator NotEqual(a: TDkimSigningKeyLength; b: TDkimSigningKeyLength): Boolean;
    class operator Implicit(a: string): TDkimSigningKeyLength;
    property Value: string read FValue;
  end;
  
  TDkimStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TDkimStatus; static;
    class function NOT_STARTED: TDkimStatus; static;
    class function PENDING: TDkimStatus; static;
    class function SUCCESS: TDkimStatus; static;
    class function TEMPORARY_FAILURE: TDkimStatus; static;
    class operator Equal(a: TDkimStatus; b: TDkimStatus): Boolean;
    class operator NotEqual(a: TDkimStatus; b: TDkimStatus): Boolean;
    class operator Implicit(a: string): TDkimStatus;
    property Value: string read FValue;
  end;
  
  TEventType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BOUNCE: TEventType; static;
    class function CLICK: TEventType; static;
    class function COMPLAINT: TEventType; static;
    class function DELIVERY: TEventType; static;
    class function DELIVERY_DELAY: TEventType; static;
    class function OPEN: TEventType; static;
    class function REJECT: TEventType; static;
    class function RENDERING_FAILURE: TEventType; static;
    class function SEND: TEventType; static;
    class function SUBSCRIPTION: TEventType; static;
    class operator Equal(a: TEventType; b: TEventType): Boolean;
    class operator NotEqual(a: TEventType; b: TEventType): Boolean;
    class operator Implicit(a: string): TEventType;
    property Value: string read FValue;
  end;
  
  TIdentityType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DOMAIN: TIdentityType; static;
    class function EMAIL_ADDRESS: TIdentityType; static;
    class function MANAGED_DOMAIN: TIdentityType; static;
    class operator Equal(a: TIdentityType; b: TIdentityType): Boolean;
    class operator NotEqual(a: TIdentityType; b: TIdentityType): Boolean;
    class operator Implicit(a: string): TIdentityType;
    property Value: string read FValue;
  end;
  
  TImportDestinationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CONTACT_LIST: TImportDestinationType; static;
    class function SUPPRESSION_LIST: TImportDestinationType; static;
    class operator Equal(a: TImportDestinationType; b: TImportDestinationType): Boolean;
    class operator NotEqual(a: TImportDestinationType; b: TImportDestinationType): Boolean;
    class operator Implicit(a: string): TImportDestinationType;
    property Value: string read FValue;
  end;
  
  TJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETED: TJobStatus; static;
    class function CREATED: TJobStatus; static;
    class function FAILED: TJobStatus; static;
    class function PROCESSING: TJobStatus; static;
    class operator Equal(a: TJobStatus; b: TJobStatus): Boolean;
    class operator NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
    class operator Implicit(a: string): TJobStatus;
    property Value: string read FValue;
  end;
  
  TMailFromDomainStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FAILED: TMailFromDomainStatus; static;
    class function PENDING: TMailFromDomainStatus; static;
    class function SUCCESS: TMailFromDomainStatus; static;
    class function TEMPORARY_FAILURE: TMailFromDomainStatus; static;
    class operator Equal(a: TMailFromDomainStatus; b: TMailFromDomainStatus): Boolean;
    class operator NotEqual(a: TMailFromDomainStatus; b: TMailFromDomainStatus): Boolean;
    class operator Implicit(a: string): TMailFromDomainStatus;
    property Value: string read FValue;
  end;
  
  TMailType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function MARKETING: TMailType; static;
    class function TRANSACTIONAL: TMailType; static;
    class operator Equal(a: TMailType; b: TMailType): Boolean;
    class operator NotEqual(a: TMailType; b: TMailType): Boolean;
    class operator Implicit(a: string): TMailType;
    property Value: string read FValue;
  end;
  
  TReviewStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DENIED: TReviewStatus; static;
    class function FAILED: TReviewStatus; static;
    class function GRANTED: TReviewStatus; static;
    class function PENDING: TReviewStatus; static;
    class operator Equal(a: TReviewStatus; b: TReviewStatus): Boolean;
    class operator NotEqual(a: TReviewStatus; b: TReviewStatus): Boolean;
    class operator Implicit(a: string): TReviewStatus;
    property Value: string read FValue;
  end;
  
  TSubscriptionStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OPT_IN: TSubscriptionStatus; static;
    class function OPT_OUT: TSubscriptionStatus; static;
    class operator Equal(a: TSubscriptionStatus; b: TSubscriptionStatus): Boolean;
    class operator NotEqual(a: TSubscriptionStatus; b: TSubscriptionStatus): Boolean;
    class operator Implicit(a: string): TSubscriptionStatus;
    property Value: string read FValue;
  end;
  
  TSuppressionListImportAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DELETE: TSuppressionListImportAction; static;
    class function PUT: TSuppressionListImportAction; static;
    class operator Equal(a: TSuppressionListImportAction; b: TSuppressionListImportAction): Boolean;
    class operator NotEqual(a: TSuppressionListImportAction; b: TSuppressionListImportAction): Boolean;
    class operator Implicit(a: string): TSuppressionListImportAction;
    property Value: string read FValue;
  end;
  
  TSuppressionListReason = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BOUNCE: TSuppressionListReason; static;
    class function COMPLAINT: TSuppressionListReason; static;
    class operator Equal(a: TSuppressionListReason; b: TSuppressionListReason): Boolean;
    class operator NotEqual(a: TSuppressionListReason; b: TSuppressionListReason): Boolean;
    class operator Implicit(a: string): TSuppressionListReason;
    property Value: string read FValue;
  end;
  
  TTlsPolicy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OPTIONAL: TTlsPolicy; static;
    class function REQUIRE: TTlsPolicy; static;
    class operator Equal(a: TTlsPolicy; b: TTlsPolicy): Boolean;
    class operator NotEqual(a: TTlsPolicy; b: TTlsPolicy): Boolean;
    class operator Implicit(a: string): TTlsPolicy;
    property Value: string read FValue;
  end;
  
  TWarmupStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DONE: TWarmupStatus; static;
    class function IN_PROGRESS: TWarmupStatus; static;
    class operator Equal(a: TWarmupStatus; b: TWarmupStatus): Boolean;
    class operator NotEqual(a: TWarmupStatus; b: TWarmupStatus): Boolean;
    class operator Implicit(a: string): TWarmupStatus;
    property Value: string read FValue;
  end;
  
implementation

{ TBehaviorOnMxFailure }

constructor TBehaviorOnMxFailure.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBehaviorOnMxFailure.REJECT_MESSAGE: TBehaviorOnMxFailure;
begin
  Result := TBehaviorOnMxFailure.Create('REJECT_MESSAGE');
end;

class function TBehaviorOnMxFailure.USE_DEFAULT_VALUE: TBehaviorOnMxFailure;
begin
  Result := TBehaviorOnMxFailure.Create('USE_DEFAULT_VALUE');
end;

class operator TBehaviorOnMxFailure.Equal(a: TBehaviorOnMxFailure; b: TBehaviorOnMxFailure): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBehaviorOnMxFailure.NotEqual(a: TBehaviorOnMxFailure; b: TBehaviorOnMxFailure): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBehaviorOnMxFailure.Implicit(a: string): TBehaviorOnMxFailure;
begin
  Result.FValue := a;;
end;

{ TBulkEmailStatus }

constructor TBulkEmailStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBulkEmailStatus.ACCOUNT_DAILY_QUOTA_EXCEEDED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ACCOUNT_DAILY_QUOTA_EXCEEDED');
end;

class function TBulkEmailStatus.ACCOUNT_SENDING_PAUSED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ACCOUNT_SENDING_PAUSED');
end;

class function TBulkEmailStatus.ACCOUNT_SUSPENDED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ACCOUNT_SUSPENDED');
end;

class function TBulkEmailStatus.ACCOUNT_THROTTLED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ACCOUNT_THROTTLED');
end;

class function TBulkEmailStatus.CONFIGURATION_SET_NOT_FOUND: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('CONFIGURATION_SET_NOT_FOUND');
end;

class function TBulkEmailStatus.CONFIGURATION_SET_SENDING_PAUSED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('CONFIGURATION_SET_SENDING_PAUSED');
end;

class function TBulkEmailStatus.FAILED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('FAILED');
end;

class function TBulkEmailStatus.INVALID_PARAMETER: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('INVALID_PARAMETER');
end;

class function TBulkEmailStatus.INVALID_SENDING_POOL_NAME: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('INVALID_SENDING_POOL_NAME');
end;

class function TBulkEmailStatus.MAIL_FROM_DOMAIN_NOT_VERIFIED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('MAIL_FROM_DOMAIN_NOT_VERIFIED');
end;

class function TBulkEmailStatus.MESSAGE_REJECTED: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('MESSAGE_REJECTED');
end;

class function TBulkEmailStatus.SUCCESS: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('SUCCESS');
end;

class function TBulkEmailStatus.TEMPLATE_NOT_FOUND: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('TEMPLATE_NOT_FOUND');
end;

class function TBulkEmailStatus.TRANSIENT_FAILURE: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('TRANSIENT_FAILURE');
end;

class operator TBulkEmailStatus.Equal(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBulkEmailStatus.NotEqual(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBulkEmailStatus.Implicit(a: string): TBulkEmailStatus;
begin
  Result.FValue := a;;
end;

{ TContactLanguage }

constructor TContactLanguage.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TContactLanguage.EN: TContactLanguage;
begin
  Result := TContactLanguage.Create('EN');
end;

class function TContactLanguage.JA: TContactLanguage;
begin
  Result := TContactLanguage.Create('JA');
end;

class operator TContactLanguage.Equal(a: TContactLanguage; b: TContactLanguage): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TContactLanguage.NotEqual(a: TContactLanguage; b: TContactLanguage): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TContactLanguage.Implicit(a: string): TContactLanguage;
begin
  Result.FValue := a;;
end;

{ TContactListImportAction }

constructor TContactListImportAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TContactListImportAction.DELETE: TContactListImportAction;
begin
  Result := TContactListImportAction.Create('DELETE');
end;

class function TContactListImportAction.PUT: TContactListImportAction;
begin
  Result := TContactListImportAction.Create('PUT');
end;

class operator TContactListImportAction.Equal(a: TContactListImportAction; b: TContactListImportAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TContactListImportAction.NotEqual(a: TContactListImportAction; b: TContactListImportAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TContactListImportAction.Implicit(a: string): TContactListImportAction;
begin
  Result.FValue := a;;
end;

{ TDataFormat }

constructor TDataFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDataFormat.CSV: TDataFormat;
begin
  Result := TDataFormat.Create('CSV');
end;

class function TDataFormat.JSON: TDataFormat;
begin
  Result := TDataFormat.Create('JSON');
end;

class operator TDataFormat.Equal(a: TDataFormat; b: TDataFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDataFormat.NotEqual(a: TDataFormat; b: TDataFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDataFormat.Implicit(a: string): TDataFormat;
begin
  Result.FValue := a;;
end;

{ TDeliverabilityDashboardAccountStatus }

constructor TDeliverabilityDashboardAccountStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDeliverabilityDashboardAccountStatus.ACTIVE: TDeliverabilityDashboardAccountStatus;
begin
  Result := TDeliverabilityDashboardAccountStatus.Create('ACTIVE');
end;

class function TDeliverabilityDashboardAccountStatus.DISABLED: TDeliverabilityDashboardAccountStatus;
begin
  Result := TDeliverabilityDashboardAccountStatus.Create('DISABLED');
end;

class function TDeliverabilityDashboardAccountStatus.PENDING_EXPIRATION: TDeliverabilityDashboardAccountStatus;
begin
  Result := TDeliverabilityDashboardAccountStatus.Create('PENDING_EXPIRATION');
end;

class operator TDeliverabilityDashboardAccountStatus.Equal(a: TDeliverabilityDashboardAccountStatus; b: TDeliverabilityDashboardAccountStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDeliverabilityDashboardAccountStatus.NotEqual(a: TDeliverabilityDashboardAccountStatus; b: TDeliverabilityDashboardAccountStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDeliverabilityDashboardAccountStatus.Implicit(a: string): TDeliverabilityDashboardAccountStatus;
begin
  Result.FValue := a;;
end;

{ TDeliverabilityTestStatus }

constructor TDeliverabilityTestStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDeliverabilityTestStatus.COMPLETED: TDeliverabilityTestStatus;
begin
  Result := TDeliverabilityTestStatus.Create('COMPLETED');
end;

class function TDeliverabilityTestStatus.IN_PROGRESS: TDeliverabilityTestStatus;
begin
  Result := TDeliverabilityTestStatus.Create('IN_PROGRESS');
end;

class operator TDeliverabilityTestStatus.Equal(a: TDeliverabilityTestStatus; b: TDeliverabilityTestStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDeliverabilityTestStatus.NotEqual(a: TDeliverabilityTestStatus; b: TDeliverabilityTestStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDeliverabilityTestStatus.Implicit(a: string): TDeliverabilityTestStatus;
begin
  Result.FValue := a;;
end;

{ TDimensionValueSource }

constructor TDimensionValueSource.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDimensionValueSource.EMAIL_HEADER: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('EMAIL_HEADER');
end;

class function TDimensionValueSource.LINK_TAG: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('LINK_TAG');
end;

class function TDimensionValueSource.MESSAGE_TAG: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('MESSAGE_TAG');
end;

class operator TDimensionValueSource.Equal(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDimensionValueSource.NotEqual(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDimensionValueSource.Implicit(a: string): TDimensionValueSource;
begin
  Result.FValue := a;;
end;

{ TDkimSigningAttributesOrigin }

constructor TDkimSigningAttributesOrigin.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDkimSigningAttributesOrigin.AWS_SES: TDkimSigningAttributesOrigin;
begin
  Result := TDkimSigningAttributesOrigin.Create('AWS_SES');
end;

class function TDkimSigningAttributesOrigin.EXTERNAL: TDkimSigningAttributesOrigin;
begin
  Result := TDkimSigningAttributesOrigin.Create('EXTERNAL');
end;

class operator TDkimSigningAttributesOrigin.Equal(a: TDkimSigningAttributesOrigin; b: TDkimSigningAttributesOrigin): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDkimSigningAttributesOrigin.NotEqual(a: TDkimSigningAttributesOrigin; b: TDkimSigningAttributesOrigin): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDkimSigningAttributesOrigin.Implicit(a: string): TDkimSigningAttributesOrigin;
begin
  Result.FValue := a;;
end;

{ TDkimSigningKeyLength }

constructor TDkimSigningKeyLength.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDkimSigningKeyLength.RSA_1024_BIT: TDkimSigningKeyLength;
begin
  Result := TDkimSigningKeyLength.Create('RSA_1024_BIT');
end;

class function TDkimSigningKeyLength.RSA_2048_BIT: TDkimSigningKeyLength;
begin
  Result := TDkimSigningKeyLength.Create('RSA_2048_BIT');
end;

class operator TDkimSigningKeyLength.Equal(a: TDkimSigningKeyLength; b: TDkimSigningKeyLength): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDkimSigningKeyLength.NotEqual(a: TDkimSigningKeyLength; b: TDkimSigningKeyLength): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDkimSigningKeyLength.Implicit(a: string): TDkimSigningKeyLength;
begin
  Result.FValue := a;;
end;

{ TDkimStatus }

constructor TDkimStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDkimStatus.FAILED: TDkimStatus;
begin
  Result := TDkimStatus.Create('FAILED');
end;

class function TDkimStatus.NOT_STARTED: TDkimStatus;
begin
  Result := TDkimStatus.Create('NOT_STARTED');
end;

class function TDkimStatus.PENDING: TDkimStatus;
begin
  Result := TDkimStatus.Create('PENDING');
end;

class function TDkimStatus.SUCCESS: TDkimStatus;
begin
  Result := TDkimStatus.Create('SUCCESS');
end;

class function TDkimStatus.TEMPORARY_FAILURE: TDkimStatus;
begin
  Result := TDkimStatus.Create('TEMPORARY_FAILURE');
end;

class operator TDkimStatus.Equal(a: TDkimStatus; b: TDkimStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDkimStatus.NotEqual(a: TDkimStatus; b: TDkimStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDkimStatus.Implicit(a: string): TDkimStatus;
begin
  Result.FValue := a;;
end;

{ TEventType }

constructor TEventType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEventType.BOUNCE: TEventType;
begin
  Result := TEventType.Create('BOUNCE');
end;

class function TEventType.CLICK: TEventType;
begin
  Result := TEventType.Create('CLICK');
end;

class function TEventType.COMPLAINT: TEventType;
begin
  Result := TEventType.Create('COMPLAINT');
end;

class function TEventType.DELIVERY: TEventType;
begin
  Result := TEventType.Create('DELIVERY');
end;

class function TEventType.DELIVERY_DELAY: TEventType;
begin
  Result := TEventType.Create('DELIVERY_DELAY');
end;

class function TEventType.OPEN: TEventType;
begin
  Result := TEventType.Create('OPEN');
end;

class function TEventType.REJECT: TEventType;
begin
  Result := TEventType.Create('REJECT');
end;

class function TEventType.RENDERING_FAILURE: TEventType;
begin
  Result := TEventType.Create('RENDERING_FAILURE');
end;

class function TEventType.SEND: TEventType;
begin
  Result := TEventType.Create('SEND');
end;

class function TEventType.SUBSCRIPTION: TEventType;
begin
  Result := TEventType.Create('SUBSCRIPTION');
end;

class operator TEventType.Equal(a: TEventType; b: TEventType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEventType.NotEqual(a: TEventType; b: TEventType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEventType.Implicit(a: string): TEventType;
begin
  Result.FValue := a;;
end;

{ TIdentityType }

constructor TIdentityType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TIdentityType.DOMAIN: TIdentityType;
begin
  Result := TIdentityType.Create('DOMAIN');
end;

class function TIdentityType.EMAIL_ADDRESS: TIdentityType;
begin
  Result := TIdentityType.Create('EMAIL_ADDRESS');
end;

class function TIdentityType.MANAGED_DOMAIN: TIdentityType;
begin
  Result := TIdentityType.Create('MANAGED_DOMAIN');
end;

class operator TIdentityType.Equal(a: TIdentityType; b: TIdentityType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TIdentityType.NotEqual(a: TIdentityType; b: TIdentityType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TIdentityType.Implicit(a: string): TIdentityType;
begin
  Result.FValue := a;;
end;

{ TImportDestinationType }

constructor TImportDestinationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TImportDestinationType.CONTACT_LIST: TImportDestinationType;
begin
  Result := TImportDestinationType.Create('CONTACT_LIST');
end;

class function TImportDestinationType.SUPPRESSION_LIST: TImportDestinationType;
begin
  Result := TImportDestinationType.Create('SUPPRESSION_LIST');
end;

class operator TImportDestinationType.Equal(a: TImportDestinationType; b: TImportDestinationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TImportDestinationType.NotEqual(a: TImportDestinationType; b: TImportDestinationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TImportDestinationType.Implicit(a: string): TImportDestinationType;
begin
  Result.FValue := a;;
end;

{ TJobStatus }

constructor TJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobStatus.COMPLETED: TJobStatus;
begin
  Result := TJobStatus.Create('COMPLETED');
end;

class function TJobStatus.CREATED: TJobStatus;
begin
  Result := TJobStatus.Create('CREATED');
end;

class function TJobStatus.FAILED: TJobStatus;
begin
  Result := TJobStatus.Create('FAILED');
end;

class function TJobStatus.PROCESSING: TJobStatus;
begin
  Result := TJobStatus.Create('PROCESSING');
end;

class operator TJobStatus.Equal(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobStatus.NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobStatus.Implicit(a: string): TJobStatus;
begin
  Result.FValue := a;;
end;

{ TMailFromDomainStatus }

constructor TMailFromDomainStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMailFromDomainStatus.FAILED: TMailFromDomainStatus;
begin
  Result := TMailFromDomainStatus.Create('FAILED');
end;

class function TMailFromDomainStatus.PENDING: TMailFromDomainStatus;
begin
  Result := TMailFromDomainStatus.Create('PENDING');
end;

class function TMailFromDomainStatus.SUCCESS: TMailFromDomainStatus;
begin
  Result := TMailFromDomainStatus.Create('SUCCESS');
end;

class function TMailFromDomainStatus.TEMPORARY_FAILURE: TMailFromDomainStatus;
begin
  Result := TMailFromDomainStatus.Create('TEMPORARY_FAILURE');
end;

class operator TMailFromDomainStatus.Equal(a: TMailFromDomainStatus; b: TMailFromDomainStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMailFromDomainStatus.NotEqual(a: TMailFromDomainStatus; b: TMailFromDomainStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMailFromDomainStatus.Implicit(a: string): TMailFromDomainStatus;
begin
  Result.FValue := a;;
end;

{ TMailType }

constructor TMailType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMailType.MARKETING: TMailType;
begin
  Result := TMailType.Create('MARKETING');
end;

class function TMailType.TRANSACTIONAL: TMailType;
begin
  Result := TMailType.Create('TRANSACTIONAL');
end;

class operator TMailType.Equal(a: TMailType; b: TMailType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMailType.NotEqual(a: TMailType; b: TMailType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMailType.Implicit(a: string): TMailType;
begin
  Result.FValue := a;;
end;

{ TReviewStatus }

constructor TReviewStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReviewStatus.DENIED: TReviewStatus;
begin
  Result := TReviewStatus.Create('DENIED');
end;

class function TReviewStatus.FAILED: TReviewStatus;
begin
  Result := TReviewStatus.Create('FAILED');
end;

class function TReviewStatus.GRANTED: TReviewStatus;
begin
  Result := TReviewStatus.Create('GRANTED');
end;

class function TReviewStatus.PENDING: TReviewStatus;
begin
  Result := TReviewStatus.Create('PENDING');
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

{ TSubscriptionStatus }

constructor TSubscriptionStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSubscriptionStatus.OPT_IN: TSubscriptionStatus;
begin
  Result := TSubscriptionStatus.Create('OPT_IN');
end;

class function TSubscriptionStatus.OPT_OUT: TSubscriptionStatus;
begin
  Result := TSubscriptionStatus.Create('OPT_OUT');
end;

class operator TSubscriptionStatus.Equal(a: TSubscriptionStatus; b: TSubscriptionStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSubscriptionStatus.NotEqual(a: TSubscriptionStatus; b: TSubscriptionStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSubscriptionStatus.Implicit(a: string): TSubscriptionStatus;
begin
  Result.FValue := a;;
end;

{ TSuppressionListImportAction }

constructor TSuppressionListImportAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSuppressionListImportAction.DELETE: TSuppressionListImportAction;
begin
  Result := TSuppressionListImportAction.Create('DELETE');
end;

class function TSuppressionListImportAction.PUT: TSuppressionListImportAction;
begin
  Result := TSuppressionListImportAction.Create('PUT');
end;

class operator TSuppressionListImportAction.Equal(a: TSuppressionListImportAction; b: TSuppressionListImportAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSuppressionListImportAction.NotEqual(a: TSuppressionListImportAction; b: TSuppressionListImportAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSuppressionListImportAction.Implicit(a: string): TSuppressionListImportAction;
begin
  Result.FValue := a;;
end;

{ TSuppressionListReason }

constructor TSuppressionListReason.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSuppressionListReason.BOUNCE: TSuppressionListReason;
begin
  Result := TSuppressionListReason.Create('BOUNCE');
end;

class function TSuppressionListReason.COMPLAINT: TSuppressionListReason;
begin
  Result := TSuppressionListReason.Create('COMPLAINT');
end;

class operator TSuppressionListReason.Equal(a: TSuppressionListReason; b: TSuppressionListReason): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSuppressionListReason.NotEqual(a: TSuppressionListReason; b: TSuppressionListReason): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSuppressionListReason.Implicit(a: string): TSuppressionListReason;
begin
  Result.FValue := a;;
end;

{ TTlsPolicy }

constructor TTlsPolicy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTlsPolicy.OPTIONAL: TTlsPolicy;
begin
  Result := TTlsPolicy.Create('OPTIONAL');
end;

class function TTlsPolicy.REQUIRE: TTlsPolicy;
begin
  Result := TTlsPolicy.Create('REQUIRE');
end;

class operator TTlsPolicy.Equal(a: TTlsPolicy; b: TTlsPolicy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTlsPolicy.NotEqual(a: TTlsPolicy; b: TTlsPolicy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTlsPolicy.Implicit(a: string): TTlsPolicy;
begin
  Result.FValue := a;;
end;

{ TWarmupStatus }

constructor TWarmupStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TWarmupStatus.DONE: TWarmupStatus;
begin
  Result := TWarmupStatus.Create('DONE');
end;

class function TWarmupStatus.IN_PROGRESS: TWarmupStatus;
begin
  Result := TWarmupStatus.Create('IN_PROGRESS');
end;

class operator TWarmupStatus.Equal(a: TWarmupStatus; b: TWarmupStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TWarmupStatus.NotEqual(a: TWarmupStatus; b: TWarmupStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TWarmupStatus.Implicit(a: string): TWarmupStatus;
begin
  Result.FValue := a;;
end;

end.
