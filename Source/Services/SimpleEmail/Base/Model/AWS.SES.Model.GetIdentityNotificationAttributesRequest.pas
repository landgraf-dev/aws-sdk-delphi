unit AWS.SES.Model.GetIdentityNotificationAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request;

type
  TGetIdentityNotificationAttributesRequest = class;
  
  IGetIdentityNotificationAttributesRequest = interface
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
    function Obj: TGetIdentityNotificationAttributesRequest;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
  TGetIdentityNotificationAttributesRequest = class(TAmazonSimpleEmailServiceRequest, IGetIdentityNotificationAttributesRequest)
  strict private
    FIdentities: TList<string>;
    FKeepIdentities: Boolean;
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function GetKeepIdentities: Boolean;
    procedure SetKeepIdentities(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityNotificationAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
    property KeepIdentities: Boolean read GetKeepIdentities write SetKeepIdentities;
  end;
  
implementation

{ TGetIdentityNotificationAttributesRequest }

constructor TGetIdentityNotificationAttributesRequest.Create;
begin
  inherited;
  FIdentities := TList<string>.Create;
end;

destructor TGetIdentityNotificationAttributesRequest.Destroy;
begin
  Identities := nil;
  inherited;
end;

function TGetIdentityNotificationAttributesRequest.Obj: TGetIdentityNotificationAttributesRequest;
begin
  Result := Self;
end;

function TGetIdentityNotificationAttributesRequest.GetIdentities: TList<string>;
begin
  Result := FIdentities;
end;

procedure TGetIdentityNotificationAttributesRequest.SetIdentities(const Value: TList<string>);
begin
  if FIdentities <> Value then
  begin
    if not KeepIdentities then
      FIdentities.Free;
    FIdentities := Value;
  end;
end;

function TGetIdentityNotificationAttributesRequest.GetKeepIdentities: Boolean;
begin
  Result := FKeepIdentities;
end;

procedure TGetIdentityNotificationAttributesRequest.SetKeepIdentities(const Value: Boolean);
begin
  FKeepIdentities := Value;
end;

function TGetIdentityNotificationAttributesRequest.IsSetIdentities: Boolean;
begin
  Result := (FIdentities <> nil) and (FIdentities.Count > 0);
end;

end.
