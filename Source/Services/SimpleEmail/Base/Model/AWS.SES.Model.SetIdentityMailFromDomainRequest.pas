unit AWS.SES.Model.SetIdentityMailFromDomainRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TSetIdentityMailFromDomainRequest = class;
  
  ISetIdentityMailFromDomainRequest = interface
    function GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
    procedure SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function Obj: TSetIdentityMailFromDomainRequest;
    function IsSetBehaviorOnMXFailure: Boolean;
    function IsSetIdentity: Boolean;
    function IsSetMailFromDomain: Boolean;
    property BehaviorOnMXFailure: TBehaviorOnMXFailure read GetBehaviorOnMXFailure write SetBehaviorOnMXFailure;
    property Identity: string read GetIdentity write SetIdentity;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
  end;
  
  TSetIdentityMailFromDomainRequest = class(TAmazonSimpleEmailServiceRequest, ISetIdentityMailFromDomainRequest)
  strict private
    FBehaviorOnMXFailure: Nullable<TBehaviorOnMXFailure>;
    FIdentity: Nullable<string>;
    FMailFromDomain: Nullable<string>;
    function GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
    procedure SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
  strict protected
    function Obj: TSetIdentityMailFromDomainRequest;
  public
    function IsSetBehaviorOnMXFailure: Boolean;
    function IsSetIdentity: Boolean;
    function IsSetMailFromDomain: Boolean;
    property BehaviorOnMXFailure: TBehaviorOnMXFailure read GetBehaviorOnMXFailure write SetBehaviorOnMXFailure;
    property Identity: string read GetIdentity write SetIdentity;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
  end;
  
implementation

{ TSetIdentityMailFromDomainRequest }

function TSetIdentityMailFromDomainRequest.Obj: TSetIdentityMailFromDomainRequest;
begin
  Result := Self;
end;

function TSetIdentityMailFromDomainRequest.GetBehaviorOnMXFailure: TBehaviorOnMXFailure;
begin
  Result := FBehaviorOnMXFailure.ValueOrDefault;
end;

procedure TSetIdentityMailFromDomainRequest.SetBehaviorOnMXFailure(const Value: TBehaviorOnMXFailure);
begin
  FBehaviorOnMXFailure := Value;
end;

function TSetIdentityMailFromDomainRequest.IsSetBehaviorOnMXFailure: Boolean;
begin
  Result := FBehaviorOnMXFailure.HasValue;
end;

function TSetIdentityMailFromDomainRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TSetIdentityMailFromDomainRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TSetIdentityMailFromDomainRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TSetIdentityMailFromDomainRequest.GetMailFromDomain: string;
begin
  Result := FMailFromDomain.ValueOrDefault;
end;

procedure TSetIdentityMailFromDomainRequest.SetMailFromDomain(const Value: string);
begin
  FMailFromDomain := Value;
end;

function TSetIdentityMailFromDomainRequest.IsSetMailFromDomain: Boolean;
begin
  Result := FMailFromDomain.HasValue;
end;

end.
