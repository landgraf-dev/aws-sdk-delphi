unit AWS.SES.Model.GetIdentityVerificationAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.IdentityVerificationAttributes;

type
  TGetIdentityVerificationAttributesResponse = class;
  
  IGetIdentityVerificationAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
    procedure SetVerificationAttributes(const Value: TObjectDictionary<string, TIdentityVerificationAttributes>);
    function GetKeepVerificationAttributes: Boolean;
    procedure SetKeepVerificationAttributes(const Value: Boolean);
    function Obj: TGetIdentityVerificationAttributesResponse;
    function IsSetVerificationAttributes: Boolean;
    property VerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes> read GetVerificationAttributes write SetVerificationAttributes;
    property KeepVerificationAttributes: Boolean read GetKeepVerificationAttributes write SetKeepVerificationAttributes;
  end;
  
  TGetIdentityVerificationAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityVerificationAttributesResponse)
  strict private
    FVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
    FKeepVerificationAttributes: Boolean;
    function GetVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
    procedure SetVerificationAttributes(const Value: TObjectDictionary<string, TIdentityVerificationAttributes>);
    function GetKeepVerificationAttributes: Boolean;
    procedure SetKeepVerificationAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityVerificationAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetVerificationAttributes: Boolean;
    property VerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes> read GetVerificationAttributes write SetVerificationAttributes;
    property KeepVerificationAttributes: Boolean read GetKeepVerificationAttributes write SetKeepVerificationAttributes;
  end;
  
implementation

{ TGetIdentityVerificationAttributesResponse }

constructor TGetIdentityVerificationAttributesResponse.Create;
begin
  inherited;
  FVerificationAttributes := TObjectDictionary<string, TIdentityVerificationAttributes>.Create([doOwnsValues]);
end;

destructor TGetIdentityVerificationAttributesResponse.Destroy;
begin
  VerificationAttributes := nil;
  inherited;
end;

function TGetIdentityVerificationAttributesResponse.Obj: TGetIdentityVerificationAttributesResponse;
begin
  Result := Self;
end;

function TGetIdentityVerificationAttributesResponse.GetVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
begin
  Result := FVerificationAttributes;
end;

procedure TGetIdentityVerificationAttributesResponse.SetVerificationAttributes(const Value: TObjectDictionary<string, TIdentityVerificationAttributes>);
begin
  if FVerificationAttributes <> Value then
  begin
    if not KeepVerificationAttributes then
      FVerificationAttributes.Free;
    FVerificationAttributes := Value;
  end;
end;

function TGetIdentityVerificationAttributesResponse.GetKeepVerificationAttributes: Boolean;
begin
  Result := FKeepVerificationAttributes;
end;

procedure TGetIdentityVerificationAttributesResponse.SetKeepVerificationAttributes(const Value: Boolean);
begin
  FKeepVerificationAttributes := Value;
end;

function TGetIdentityVerificationAttributesResponse.IsSetVerificationAttributes: Boolean;
begin
  Result := (FVerificationAttributes <> nil) and (FVerificationAttributes.Count > 0);
end;

end.
