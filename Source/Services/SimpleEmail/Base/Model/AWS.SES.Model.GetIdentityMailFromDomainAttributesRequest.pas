unit AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request;

type
  TGetIdentityMailFromDomainAttributesRequest = class;
  
  IGetIdentityMailFromDomainAttributesRequest = interface
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
    function Obj: TGetIdentityMailFromDomainAttributesRequest;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
  TGetIdentityMailFromDomainAttributesRequest = class(TAmazonSimpleEmailServiceRequest, IGetIdentityMailFromDomainAttributesRequest)
  strict private
    FIdentities: TList<string>;
    FKeepIdentities: Boolean;
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityMailFromDomainAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
implementation

{ TGetIdentityMailFromDomainAttributesRequest }

constructor TGetIdentityMailFromDomainAttributesRequest.Create;
begin
  inherited;
  FIdentities := TList<string>.Create;
end;

destructor TGetIdentityMailFromDomainAttributesRequest.Destroy;
begin
  Identities := nil;
  inherited;
end;

function TGetIdentityMailFromDomainAttributesRequest.Obj: TGetIdentityMailFromDomainAttributesRequest;
begin
  Result := Self;
end;

function TGetIdentityMailFromDomainAttributesRequest.GetIdentities: TList<string>;
begin
  Result := FIdentities;
end;

procedure TGetIdentityMailFromDomainAttributesRequest.SetIdentities(const Value: TList<string>);
begin
  if FIdentities <> Value then
  begin
    if not KeepIdentities then
      FIdentities.Free;
    FIdentities := Value;
  end;
end;

function TGetIdentityMailFromDomainAttributesRequest.GetKeepIdentities: Boolean;
begin
  Result := FKeepIdentities;
end;

procedure TGetIdentityMailFromDomainAttributesRequest.SetKeepIdentities(const Value: Boolean);
begin
  FKeepIdentities := Value;
end;

function TGetIdentityMailFromDomainAttributesRequest.IsSetIdentities: Boolean;
begin
  Result := (FIdentities <> nil) and (FIdentities.Count > 0);
end;

end.
