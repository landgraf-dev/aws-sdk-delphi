unit AWS.SES.Model.GetIdentityDkimAttributesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request;

type
  TGetIdentityDkimAttributesRequest = class;
  
  IGetIdentityDkimAttributesRequest = interface
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
    function Obj: TGetIdentityDkimAttributesRequest;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
  end;
  
  TGetIdentityDkimAttributesRequest = class(TAmazonSimpleEmailServiceRequest, IGetIdentityDkimAttributesRequest)
  strict private
    FIdentities: TList<string>;
    function GetIdentities: TList<string>;
    procedure SetIdentities(const Value: TList<string>);
  strict protected
    function Obj: TGetIdentityDkimAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentities: Boolean;
    property Identities: TList<string> read GetIdentities write SetIdentities;
  end;
  
implementation

{ TGetIdentityDkimAttributesRequest }

constructor TGetIdentityDkimAttributesRequest.Create;
begin
  inherited;
  FIdentities := TList<string>.Create;
end;

destructor TGetIdentityDkimAttributesRequest.Destroy;
begin
  FIdentities.Free;
  inherited;
end;

function TGetIdentityDkimAttributesRequest.Obj: TGetIdentityDkimAttributesRequest;
begin
  Result := Self;
end;

function TGetIdentityDkimAttributesRequest.GetIdentities: TList<string>;
begin
  Result := FIdentities;
end;

procedure TGetIdentityDkimAttributesRequest.SetIdentities(const Value: TList<string>);
begin
  if FIdentities <> Value then
  begin
    FIdentities.Free;
    FIdentities := Value;
  end;
end;

function TGetIdentityDkimAttributesRequest.IsSetIdentities: Boolean;
begin
  Result := (FIdentities <> nil) and (FIdentities.Count > 0);
end;

end.
