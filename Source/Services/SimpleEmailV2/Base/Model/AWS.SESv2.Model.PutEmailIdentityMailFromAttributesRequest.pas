unit AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Enums;

type
  TPutEmailIdentityMailFromAttributesRequest = class;
  
  IPutEmailIdentityMailFromAttributesRequest = interface
    function GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
    procedure SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function Obj: TPutEmailIdentityMailFromAttributesRequest;
    function IsSetBehaviorOnMxFailure: Boolean;
    function IsSetEmailIdentity: Boolean;
    function IsSetMailFromDomain: Boolean;
    property BehaviorOnMxFailure: TBehaviorOnMxFailure read GetBehaviorOnMxFailure write SetBehaviorOnMxFailure;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
  end;
  
  TPutEmailIdentityMailFromAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutEmailIdentityMailFromAttributesRequest)
  strict private
    FBehaviorOnMxFailure: Nullable<TBehaviorOnMxFailure>;
    FEmailIdentity: Nullable<string>;
    FMailFromDomain: Nullable<string>;
    function GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
    procedure SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
  strict protected
    function Obj: TPutEmailIdentityMailFromAttributesRequest;
  public
    function IsSetBehaviorOnMxFailure: Boolean;
    function IsSetEmailIdentity: Boolean;
    function IsSetMailFromDomain: Boolean;
    property BehaviorOnMxFailure: TBehaviorOnMxFailure read GetBehaviorOnMxFailure write SetBehaviorOnMxFailure;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
  end;
  
implementation

{ TPutEmailIdentityMailFromAttributesRequest }

function TPutEmailIdentityMailFromAttributesRequest.Obj: TPutEmailIdentityMailFromAttributesRequest;
begin
  Result := Self;
end;

function TPutEmailIdentityMailFromAttributesRequest.GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
begin
  Result := FBehaviorOnMxFailure.ValueOrDefault;
end;

procedure TPutEmailIdentityMailFromAttributesRequest.SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
begin
  FBehaviorOnMxFailure := Value;
end;

function TPutEmailIdentityMailFromAttributesRequest.IsSetBehaviorOnMxFailure: Boolean;
begin
  Result := FBehaviorOnMxFailure.HasValue;
end;

function TPutEmailIdentityMailFromAttributesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TPutEmailIdentityMailFromAttributesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TPutEmailIdentityMailFromAttributesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TPutEmailIdentityMailFromAttributesRequest.GetMailFromDomain: string;
begin
  Result := FMailFromDomain.ValueOrDefault;
end;

procedure TPutEmailIdentityMailFromAttributesRequest.SetMailFromDomain(const Value: string);
begin
  FMailFromDomain := Value;
end;

function TPutEmailIdentityMailFromAttributesRequest.IsSetMailFromDomain: Boolean;
begin
  Result := FMailFromDomain.HasValue;
end;

end.
