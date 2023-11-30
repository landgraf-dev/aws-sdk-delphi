unit AWS.SES.Model.IdentityMailFromDomainAttributes;

interface

uses
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TIdentityMailFromDomainAttributes = class;
  
  IIdentityMailFromDomainAttributes = interface
    function GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
    procedure SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function GetMailFromDomainStatus: TCustomMailFromStatus;
    procedure SetMailFromDomainStatus(const Value: TCustomMailFromStatus);
    function Obj: TIdentityMailFromDomainAttributes;
    function IsSetBehaviorOnMXFailure: Boolean;
    function IsSetMailFromDomain: Boolean;
    function IsSetMailFromDomainStatus: Boolean;
    property BehaviorOnMXFailure: TBehaviorOnMXFailure read GetBehaviorOnMXFailure write SetBehaviorOnMXFailure;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
    property MailFromDomainStatus: TCustomMailFromStatus read GetMailFromDomainStatus write SetMailFromDomainStatus;
  end;
  
  TIdentityMailFromDomainAttributes = class
  strict private
    FBehaviorOnMXFailure: Nullable<TBehaviorOnMXFailure>;
    FMailFromDomain: Nullable<string>;
    FMailFromDomainStatus: Nullable<TCustomMailFromStatus>;
    function GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
    procedure SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function GetMailFromDomainStatus: TCustomMailFromStatus;
    procedure SetMailFromDomainStatus(const Value: TCustomMailFromStatus);
  strict protected
    function Obj: TIdentityMailFromDomainAttributes;
  public
    function IsSetBehaviorOnMXFailure: Boolean;
    function IsSetMailFromDomain: Boolean;
    function IsSetMailFromDomainStatus: Boolean;
    property BehaviorOnMXFailure: TBehaviorOnMXFailure read GetBehaviorOnMXFailure write SetBehaviorOnMXFailure;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
    property MailFromDomainStatus: TCustomMailFromStatus read GetMailFromDomainStatus write SetMailFromDomainStatus;
  end;
  
implementation

{ TIdentityMailFromDomainAttributes }

function TIdentityMailFromDomainAttributes.Obj: TIdentityMailFromDomainAttributes;
begin
  Result := Self;
end;

function TIdentityMailFromDomainAttributes.GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
begin
  Result := FBehaviorOnMXFailure.ValueOrDefault;
end;

procedure TIdentityMailFromDomainAttributes.SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
begin
  FBehaviorOnMXFailure := Value;
end;

function TIdentityMailFromDomainAttributes.IsSetBehaviorOnMXFailure: Boolean;
begin
  Result := FBehaviorOnMXFailure.HasValue;
end;

function TIdentityMailFromDomainAttributes.GetMailFromDomain: string;
begin
  Result := FMailFromDomain.ValueOrDefault;
end;

procedure TIdentityMailFromDomainAttributes.SetMailFromDomain(const Value: string);
begin
  FMailFromDomain := Value;
end;

function TIdentityMailFromDomainAttributes.IsSetMailFromDomain: Boolean;
begin
  Result := FMailFromDomain.HasValue;
end;

function TIdentityMailFromDomainAttributes.GetMailFromDomainStatus: TCustomMailFromStatus;
begin
  Result := FMailFromDomainStatus.ValueOrDefault;
end;

procedure TIdentityMailFromDomainAttributes.SetMailFromDomainStatus(const Value: TCustomMailFromStatus);
begin
  FMailFromDomainStatus := Value;
end;

function TIdentityMailFromDomainAttributes.IsSetMailFromDomainStatus: Boolean;
begin
  Result := FMailFromDomainStatus.HasValue;
end;

end.
