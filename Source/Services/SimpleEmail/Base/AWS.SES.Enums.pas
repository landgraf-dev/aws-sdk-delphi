unit AWS.SES.Enums;

{$SCOPEDENUMS ON}

interface

type
  TBehaviorOnMXFailure = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function RejectMessage: TBehaviorOnMXFailure; static;
    class function UseDefaultValue: TBehaviorOnMXFailure; static;
    class operator Equal(a: TBehaviorOnMXFailure; b: TBehaviorOnMXFailure): Boolean;
    class operator NotEqual(a: TBehaviorOnMXFailure; b: TBehaviorOnMXFailure): Boolean;
    class operator Implicit(a: string): TBehaviorOnMXFailure;
    property Value: string read FValue;
  end;
  
  TBounceType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ContentRejected: TBounceType; static;
    class function DoesNotExist: TBounceType; static;
    class function ExceededQuota: TBounceType; static;
    class function MessageTooLarge: TBounceType; static;
    class function TemporaryFailure: TBounceType; static;
    class function Undefined: TBounceType; static;
    class operator Equal(a: TBounceType; b: TBounceType): Boolean;
    class operator NotEqual(a: TBounceType; b: TBounceType): Boolean;
    class operator Implicit(a: string): TBounceType;
    property Value: string read FValue;
  end;
  
  TBulkEmailStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AccountDailyQuotaExceeded: TBulkEmailStatus; static;
    class function AccountSendingPaused: TBulkEmailStatus; static;
    class function AccountSuspended: TBulkEmailStatus; static;
    class function AccountThrottled: TBulkEmailStatus; static;
    class function ConfigurationSetDoesNotExist: TBulkEmailStatus; static;
    class function ConfigurationSetSendingPaused: TBulkEmailStatus; static;
    class function Failed: TBulkEmailStatus; static;
    class function InvalidParameterValue: TBulkEmailStatus; static;
    class function InvalidSendingPoolName: TBulkEmailStatus; static;
    class function MailFromDomainNotVerified: TBulkEmailStatus; static;
    class function MessageRejected: TBulkEmailStatus; static;
    class function Success: TBulkEmailStatus; static;
    class function TemplateDoesNotExist: TBulkEmailStatus; static;
    class function TransientFailure: TBulkEmailStatus; static;
    class operator Equal(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
    class operator NotEqual(a: TBulkEmailStatus; b: TBulkEmailStatus): Boolean;
    class operator Implicit(a: string): TBulkEmailStatus;
    property Value: string read FValue;
  end;
  
  TConfigurationSetAttribute = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DeliveryOptions: TConfigurationSetAttribute; static;
    class function EventDestinations: TConfigurationSetAttribute; static;
    class function ReputationOptions: TConfigurationSetAttribute; static;
    class function TrackingOptions: TConfigurationSetAttribute; static;
    class operator Equal(a: TConfigurationSetAttribute; b: TConfigurationSetAttribute): Boolean;
    class operator NotEqual(a: TConfigurationSetAttribute; b: TConfigurationSetAttribute): Boolean;
    class operator Implicit(a: string): TConfigurationSetAttribute;
    property Value: string read FValue;
  end;
  
  TCustomMailFromStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TCustomMailFromStatus; static;
    class function Pending: TCustomMailFromStatus; static;
    class function Success: TCustomMailFromStatus; static;
    class function TemporaryFailure: TCustomMailFromStatus; static;
    class operator Equal(a: TCustomMailFromStatus; b: TCustomMailFromStatus): Boolean;
    class operator NotEqual(a: TCustomMailFromStatus; b: TCustomMailFromStatus): Boolean;
    class operator Implicit(a: string): TCustomMailFromStatus;
    property Value: string read FValue;
  end;
  
  TDimensionValueSource = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EmailHeader: TDimensionValueSource; static;
    class function LinkTag: TDimensionValueSource; static;
    class function MessageTag: TDimensionValueSource; static;
    class operator Equal(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
    class operator NotEqual(a: TDimensionValueSource; b: TDimensionValueSource): Boolean;
    class operator Implicit(a: string): TDimensionValueSource;
    property Value: string read FValue;
  end;
  
  TDsnAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Delayed: TDsnAction; static;
    class function Delivered: TDsnAction; static;
    class function Expanded: TDsnAction; static;
    class function Failed: TDsnAction; static;
    class function Relayed: TDsnAction; static;
    class operator Equal(a: TDsnAction; b: TDsnAction): Boolean;
    class operator NotEqual(a: TDsnAction; b: TDsnAction): Boolean;
    class operator Implicit(a: string): TDsnAction;
    property Value: string read FValue;
  end;
  
  TEventType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Bounce: TEventType; static;
    class function Click: TEventType; static;
    class function Complaint: TEventType; static;
    class function Delivery: TEventType; static;
    class function Open: TEventType; static;
    class function Reject: TEventType; static;
    class function RenderingFailure: TEventType; static;
    class function Send: TEventType; static;
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
    class function Domain: TIdentityType; static;
    class function EmailAddress: TIdentityType; static;
    class operator Equal(a: TIdentityType; b: TIdentityType): Boolean;
    class operator NotEqual(a: TIdentityType; b: TIdentityType): Boolean;
    class operator Implicit(a: string): TIdentityType;
    property Value: string read FValue;
  end;
  
  TInvocationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Event: TInvocationType; static;
    class function RequestResponse: TInvocationType; static;
    class operator Equal(a: TInvocationType; b: TInvocationType): Boolean;
    class operator NotEqual(a: TInvocationType; b: TInvocationType): Boolean;
    class operator Implicit(a: string): TInvocationType;
    property Value: string read FValue;
  end;
  
  TNotificationType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Bounce: TNotificationType; static;
    class function Complaint: TNotificationType; static;
    class function Delivery: TNotificationType; static;
    class operator Equal(a: TNotificationType; b: TNotificationType): Boolean;
    class operator NotEqual(a: TNotificationType; b: TNotificationType): Boolean;
    class operator Implicit(a: string): TNotificationType;
    property Value: string read FValue;
  end;
  
  TReceiptFilterPolicy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Allow: TReceiptFilterPolicy; static;
    class function Block: TReceiptFilterPolicy; static;
    class operator Equal(a: TReceiptFilterPolicy; b: TReceiptFilterPolicy): Boolean;
    class operator NotEqual(a: TReceiptFilterPolicy; b: TReceiptFilterPolicy): Boolean;
    class operator Implicit(a: string): TReceiptFilterPolicy;
    property Value: string read FValue;
  end;
  
  TSNSActionEncoding = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Base64: TSNSActionEncoding; static;
    class function UTF8: TSNSActionEncoding; static;
    class operator Equal(a: TSNSActionEncoding; b: TSNSActionEncoding): Boolean;
    class operator NotEqual(a: TSNSActionEncoding; b: TSNSActionEncoding): Boolean;
    class operator Implicit(a: string): TSNSActionEncoding;
    property Value: string read FValue;
  end;
  
  TStopScope = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function RuleSet: TStopScope; static;
    class operator Equal(a: TStopScope; b: TStopScope): Boolean;
    class operator NotEqual(a: TStopScope; b: TStopScope): Boolean;
    class operator Implicit(a: string): TStopScope;
    property Value: string read FValue;
  end;
  
  TTlsPolicy = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Optional: TTlsPolicy; static;
    class function Require: TTlsPolicy; static;
    class operator Equal(a: TTlsPolicy; b: TTlsPolicy): Boolean;
    class operator NotEqual(a: TTlsPolicy; b: TTlsPolicy): Boolean;
    class operator Implicit(a: string): TTlsPolicy;
    property Value: string read FValue;
  end;
  
  TVerificationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Failed: TVerificationStatus; static;
    class function NotStarted: TVerificationStatus; static;
    class function Pending: TVerificationStatus; static;
    class function Success: TVerificationStatus; static;
    class function TemporaryFailure: TVerificationStatus; static;
    class operator Equal(a: TVerificationStatus; b: TVerificationStatus): Boolean;
    class operator NotEqual(a: TVerificationStatus; b: TVerificationStatus): Boolean;
    class operator Implicit(a: string): TVerificationStatus;
    property Value: string read FValue;
  end;
  
implementation

{ TBehaviorOnMXFailure }

constructor TBehaviorOnMXFailure.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBehaviorOnMXFailure.RejectMessage: TBehaviorOnMXFailure;
begin
  Result := TBehaviorOnMXFailure.Create('RejectMessage');
end;

class function TBehaviorOnMXFailure.UseDefaultValue: TBehaviorOnMXFailure;
begin
  Result := TBehaviorOnMXFailure.Create('UseDefaultValue');
end;

class operator TBehaviorOnMXFailure.Equal(a: TBehaviorOnMXFailure; b: TBehaviorOnMXFailure): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBehaviorOnMXFailure.NotEqual(a: TBehaviorOnMXFailure; b: TBehaviorOnMXFailure): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBehaviorOnMXFailure.Implicit(a: string): TBehaviorOnMXFailure;
begin
  Result.FValue := a;;
end;

{ TBounceType }

constructor TBounceType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBounceType.ContentRejected: TBounceType;
begin
  Result := TBounceType.Create('ContentRejected');
end;

class function TBounceType.DoesNotExist: TBounceType;
begin
  Result := TBounceType.Create('DoesNotExist');
end;

class function TBounceType.ExceededQuota: TBounceType;
begin
  Result := TBounceType.Create('ExceededQuota');
end;

class function TBounceType.MessageTooLarge: TBounceType;
begin
  Result := TBounceType.Create('MessageTooLarge');
end;

class function TBounceType.TemporaryFailure: TBounceType;
begin
  Result := TBounceType.Create('TemporaryFailure');
end;

class function TBounceType.Undefined: TBounceType;
begin
  Result := TBounceType.Create('Undefined');
end;

class operator TBounceType.Equal(a: TBounceType; b: TBounceType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBounceType.NotEqual(a: TBounceType; b: TBounceType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBounceType.Implicit(a: string): TBounceType;
begin
  Result.FValue := a;;
end;

{ TBulkEmailStatus }

constructor TBulkEmailStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBulkEmailStatus.AccountDailyQuotaExceeded: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('AccountDailyQuotaExceeded');
end;

class function TBulkEmailStatus.AccountSendingPaused: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('AccountSendingPaused');
end;

class function TBulkEmailStatus.AccountSuspended: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('AccountSuspended');
end;

class function TBulkEmailStatus.AccountThrottled: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('AccountThrottled');
end;

class function TBulkEmailStatus.ConfigurationSetDoesNotExist: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ConfigurationSetDoesNotExist');
end;

class function TBulkEmailStatus.ConfigurationSetSendingPaused: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('ConfigurationSetSendingPaused');
end;

class function TBulkEmailStatus.Failed: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('Failed');
end;

class function TBulkEmailStatus.InvalidParameterValue: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('InvalidParameterValue');
end;

class function TBulkEmailStatus.InvalidSendingPoolName: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('InvalidSendingPoolName');
end;

class function TBulkEmailStatus.MailFromDomainNotVerified: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('MailFromDomainNotVerified');
end;

class function TBulkEmailStatus.MessageRejected: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('MessageRejected');
end;

class function TBulkEmailStatus.Success: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('Success');
end;

class function TBulkEmailStatus.TemplateDoesNotExist: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('TemplateDoesNotExist');
end;

class function TBulkEmailStatus.TransientFailure: TBulkEmailStatus;
begin
  Result := TBulkEmailStatus.Create('TransientFailure');
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

{ TConfigurationSetAttribute }

constructor TConfigurationSetAttribute.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TConfigurationSetAttribute.DeliveryOptions: TConfigurationSetAttribute;
begin
  Result := TConfigurationSetAttribute.Create('deliveryOptions');
end;

class function TConfigurationSetAttribute.EventDestinations: TConfigurationSetAttribute;
begin
  Result := TConfigurationSetAttribute.Create('eventDestinations');
end;

class function TConfigurationSetAttribute.ReputationOptions: TConfigurationSetAttribute;
begin
  Result := TConfigurationSetAttribute.Create('reputationOptions');
end;

class function TConfigurationSetAttribute.TrackingOptions: TConfigurationSetAttribute;
begin
  Result := TConfigurationSetAttribute.Create('trackingOptions');
end;

class operator TConfigurationSetAttribute.Equal(a: TConfigurationSetAttribute; b: TConfigurationSetAttribute): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TConfigurationSetAttribute.NotEqual(a: TConfigurationSetAttribute; b: TConfigurationSetAttribute): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TConfigurationSetAttribute.Implicit(a: string): TConfigurationSetAttribute;
begin
  Result.FValue := a;;
end;

{ TCustomMailFromStatus }

constructor TCustomMailFromStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCustomMailFromStatus.Failed: TCustomMailFromStatus;
begin
  Result := TCustomMailFromStatus.Create('Failed');
end;

class function TCustomMailFromStatus.Pending: TCustomMailFromStatus;
begin
  Result := TCustomMailFromStatus.Create('Pending');
end;

class function TCustomMailFromStatus.Success: TCustomMailFromStatus;
begin
  Result := TCustomMailFromStatus.Create('Success');
end;

class function TCustomMailFromStatus.TemporaryFailure: TCustomMailFromStatus;
begin
  Result := TCustomMailFromStatus.Create('TemporaryFailure');
end;

class operator TCustomMailFromStatus.Equal(a: TCustomMailFromStatus; b: TCustomMailFromStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCustomMailFromStatus.NotEqual(a: TCustomMailFromStatus; b: TCustomMailFromStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCustomMailFromStatus.Implicit(a: string): TCustomMailFromStatus;
begin
  Result.FValue := a;;
end;

{ TDimensionValueSource }

constructor TDimensionValueSource.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDimensionValueSource.EmailHeader: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('emailHeader');
end;

class function TDimensionValueSource.LinkTag: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('linkTag');
end;

class function TDimensionValueSource.MessageTag: TDimensionValueSource;
begin
  Result := TDimensionValueSource.Create('messageTag');
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

{ TDsnAction }

constructor TDsnAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDsnAction.Delayed: TDsnAction;
begin
  Result := TDsnAction.Create('delayed');
end;

class function TDsnAction.Delivered: TDsnAction;
begin
  Result := TDsnAction.Create('delivered');
end;

class function TDsnAction.Expanded: TDsnAction;
begin
  Result := TDsnAction.Create('expanded');
end;

class function TDsnAction.Failed: TDsnAction;
begin
  Result := TDsnAction.Create('failed');
end;

class function TDsnAction.Relayed: TDsnAction;
begin
  Result := TDsnAction.Create('relayed');
end;

class operator TDsnAction.Equal(a: TDsnAction; b: TDsnAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDsnAction.NotEqual(a: TDsnAction; b: TDsnAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDsnAction.Implicit(a: string): TDsnAction;
begin
  Result.FValue := a;;
end;

{ TEventType }

constructor TEventType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEventType.Bounce: TEventType;
begin
  Result := TEventType.Create('bounce');
end;

class function TEventType.Click: TEventType;
begin
  Result := TEventType.Create('click');
end;

class function TEventType.Complaint: TEventType;
begin
  Result := TEventType.Create('complaint');
end;

class function TEventType.Delivery: TEventType;
begin
  Result := TEventType.Create('delivery');
end;

class function TEventType.Open: TEventType;
begin
  Result := TEventType.Create('open');
end;

class function TEventType.Reject: TEventType;
begin
  Result := TEventType.Create('reject');
end;

class function TEventType.RenderingFailure: TEventType;
begin
  Result := TEventType.Create('renderingFailure');
end;

class function TEventType.Send: TEventType;
begin
  Result := TEventType.Create('send');
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

class function TIdentityType.Domain: TIdentityType;
begin
  Result := TIdentityType.Create('Domain');
end;

class function TIdentityType.EmailAddress: TIdentityType;
begin
  Result := TIdentityType.Create('EmailAddress');
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

{ TInvocationType }

constructor TInvocationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInvocationType.Event: TInvocationType;
begin
  Result := TInvocationType.Create('Event');
end;

class function TInvocationType.RequestResponse: TInvocationType;
begin
  Result := TInvocationType.Create('RequestResponse');
end;

class operator TInvocationType.Equal(a: TInvocationType; b: TInvocationType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInvocationType.NotEqual(a: TInvocationType; b: TInvocationType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInvocationType.Implicit(a: string): TInvocationType;
begin
  Result.FValue := a;;
end;

{ TNotificationType }

constructor TNotificationType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TNotificationType.Bounce: TNotificationType;
begin
  Result := TNotificationType.Create('Bounce');
end;

class function TNotificationType.Complaint: TNotificationType;
begin
  Result := TNotificationType.Create('Complaint');
end;

class function TNotificationType.Delivery: TNotificationType;
begin
  Result := TNotificationType.Create('Delivery');
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

{ TReceiptFilterPolicy }

constructor TReceiptFilterPolicy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReceiptFilterPolicy.Allow: TReceiptFilterPolicy;
begin
  Result := TReceiptFilterPolicy.Create('Allow');
end;

class function TReceiptFilterPolicy.Block: TReceiptFilterPolicy;
begin
  Result := TReceiptFilterPolicy.Create('Block');
end;

class operator TReceiptFilterPolicy.Equal(a: TReceiptFilterPolicy; b: TReceiptFilterPolicy): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReceiptFilterPolicy.NotEqual(a: TReceiptFilterPolicy; b: TReceiptFilterPolicy): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReceiptFilterPolicy.Implicit(a: string): TReceiptFilterPolicy;
begin
  Result.FValue := a;;
end;

{ TSNSActionEncoding }

constructor TSNSActionEncoding.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSNSActionEncoding.Base64: TSNSActionEncoding;
begin
  Result := TSNSActionEncoding.Create('Base64');
end;

class function TSNSActionEncoding.UTF8: TSNSActionEncoding;
begin
  Result := TSNSActionEncoding.Create('UTF-8');
end;

class operator TSNSActionEncoding.Equal(a: TSNSActionEncoding; b: TSNSActionEncoding): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSNSActionEncoding.NotEqual(a: TSNSActionEncoding; b: TSNSActionEncoding): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSNSActionEncoding.Implicit(a: string): TSNSActionEncoding;
begin
  Result.FValue := a;;
end;

{ TStopScope }

constructor TStopScope.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStopScope.RuleSet: TStopScope;
begin
  Result := TStopScope.Create('RuleSet');
end;

class operator TStopScope.Equal(a: TStopScope; b: TStopScope): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStopScope.NotEqual(a: TStopScope; b: TStopScope): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStopScope.Implicit(a: string): TStopScope;
begin
  Result.FValue := a;;
end;

{ TTlsPolicy }

constructor TTlsPolicy.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTlsPolicy.Optional: TTlsPolicy;
begin
  Result := TTlsPolicy.Create('Optional');
end;

class function TTlsPolicy.Require: TTlsPolicy;
begin
  Result := TTlsPolicy.Create('Require');
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

{ TVerificationStatus }

constructor TVerificationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TVerificationStatus.Failed: TVerificationStatus;
begin
  Result := TVerificationStatus.Create('Failed');
end;

class function TVerificationStatus.NotStarted: TVerificationStatus;
begin
  Result := TVerificationStatus.Create('NotStarted');
end;

class function TVerificationStatus.Pending: TVerificationStatus;
begin
  Result := TVerificationStatus.Create('Pending');
end;

class function TVerificationStatus.Success: TVerificationStatus;
begin
  Result := TVerificationStatus.Create('Success');
end;

class function TVerificationStatus.TemporaryFailure: TVerificationStatus;
begin
  Result := TVerificationStatus.Create('TemporaryFailure');
end;

class operator TVerificationStatus.Equal(a: TVerificationStatus; b: TVerificationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TVerificationStatus.NotEqual(a: TVerificationStatus; b: TVerificationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TVerificationStatus.Implicit(a: string): TVerificationStatus;
begin
  Result.FValue := a;;
end;

end.
