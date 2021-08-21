unit AWS.SES.Model.GetIdentityVerificationAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request;

type
  TGetIdentityVerificationAttributesRequest = class;
  
  IGetIdentityVerificationAttributesRequest = interface
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
    function Obj: TGetIdentityVerificationAttributesRequest;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
  TGetIdentityVerificationAttributesRequest = class(TAmazonSimpleEmailServiceRequest, IGetIdentityVerificationAttributesRequest)
  strict private
    FIdentities: TList<string>;
    FKeepIdentities: Boolean;
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityVerificationAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
implementation

{ TGetIdentityVerificationAttributesRequest }

constructor TGetIdentityVerificationAttributesRequest.Create;
begin
  inherited;
  FIdentities := TList<string>.Create;
end;

destructor TGetIdentityVerificationAttributesRequest.Destroy;
begin
  Identities := nil;
  inherited;
end;

function TGetIdentityVerificationAttributesRequest.Obj: TGetIdentityVerificationAttributesRequest;
begin
  Result := Self;
end;

function TGetIdentityVerificationAttributesRequest.GetIdentities: TList<string>;
begin
  Result := FIdentities;
end;

procedure TGetIdentityVerificationAttributesRequest.SetIdentities(const Value: TList<string>);
begin
  if FIdentities <> Value then
  begin
    if not KeepIdentities then
      FIdentities.Free;
    FIdentities := Value;
  end;
end;

function TGetIdentityVerificationAttributesRequest.GetKeepIdentities: Boolean;
begin
  Result := FKeepIdentities;
end;

procedure TGetIdentityVerificationAttributesRequest.SetKeepIdentities(const Value: Boolean);
begin
  FKeepIdentities := Value;
end;

function TGetIdentityVerificationAttributesRequest.IsSetIdentities: Boolean;
begin
  Result := (FIdentities <> nil) and (FIdentities.Count > 0);
end;

end.
