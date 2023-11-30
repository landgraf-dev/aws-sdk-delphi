unit AWS.SESv2.Model.MailFromAttributes;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TMailFromAttributes = class;
  
  IMailFromAttributes = interface
    function GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
    procedure SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function GetMailFromDomainStatus: TMailFromDomainStatus;
    procedure SetMailFromDomainStatus(const Value: TMailFromDomainStatus);
    function Obj: TMailFromAttributes;
    function IsSetBehaviorOnMxFailure: Boolean;
    function IsSetMailFromDomain: Boolean;
    function IsSetMailFromDomainStatus: Boolean;
    property BehaviorOnMxFailure: TBehaviorOnMxFailure read GetBehaviorOnMxFailure write SetBehaviorOnMxFailure;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
    property MailFromDomainStatus: TMailFromDomainStatus read GetMailFromDomainStatus write SetMailFromDomainStatus;
  end;
  
  TMailFromAttributes = class
  strict private
    FBehaviorOnMxFailure: Nullable<TBehaviorOnMxFailure>;
    FMailFromDomain: Nullable<string>;
    FMailFromDomainStatus: Nullable<TMailFromDomainStatus>;
    function GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
    procedure SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
    function GetMailFromDomain: string;
    procedure SetMailFromDomain(const Value: string);
    function GetMailFromDomainStatus: TMailFromDomainStatus;
    procedure SetMailFromDomainStatus(const Value: TMailFromDomainStatus);
  strict protected
    function Obj: TMailFromAttributes;
  public
    function IsSetBehaviorOnMxFailure: Boolean;
    function IsSetMailFromDomain: Boolean;
    function IsSetMailFromDomainStatus: Boolean;
    property BehaviorOnMxFailure: TBehaviorOnMxFailure read GetBehaviorOnMxFailure write SetBehaviorOnMxFailure;
    property MailFromDomain: string read GetMailFromDomain write SetMailFromDomain;
    property MailFromDomainStatus: TMailFromDomainStatus read GetMailFromDomainStatus write SetMailFromDomainStatus;
  end;
  
implementation

{ TMailFromAttributes }

function TMailFromAttributes.Obj: TMailFromAttributes;
begin
  Result := Self;
end;

function TMailFromAttributes.GetBehaviorOnMxFailure: TBehaviorOnMxFailure;
begin
  Result := FBehaviorOnMxFailure.ValueOrDefault;
end;

procedure TMailFromAttributes.SetBehaviorOnMxFailure(const Value: TBehaviorOnMxFailure);
begin
  FBehaviorOnMxFailure := Value;
end;

function TMailFromAttributes.IsSetBehaviorOnMxFailure: Boolean;
begin
  Result := FBehaviorOnMxFailure.HasValue;
end;

function TMailFromAttributes.GetMailFromDomain: string;
begin
  Result := FMailFromDomain.ValueOrDefault;
end;

procedure TMailFromAttributes.SetMailFromDomain(const Value: string);
begin
  FMailFromDomain := Value;
end;

function TMailFromAttributes.IsSetMailFromDomain: Boolean;
begin
  Result := FMailFromDomain.HasValue;
end;

function TMailFromAttributes.GetMailFromDomainStatus: TMailFromDomainStatus;
begin
  Result := FMailFromDomainStatus.ValueOrDefault;
end;

procedure TMailFromAttributes.SetMailFromDomainStatus(const Value: TMailFromDomainStatus);
begin
  FMailFromDomainStatus := Value;
end;

function TMailFromAttributes.IsSetMailFromDomainStatus: Boolean;
begin
  Result := FMailFromDomainStatus.HasValue;
end;

end.
