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
    function Obj: TGetIdentityVerificationAttributesResponse;
    function IsSetVerificationAttributes: Boolean;
    property VerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes> read GetVerificationAttributes write SetVerificationAttributes;
  end;
  
  TGetIdentityVerificationAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityVerificationAttributesResponse)
  strict private
    FVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
    function GetVerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
    procedure SetVerificationAttributes(const Value: TObjectDictionary<string, TIdentityVerificationAttributes>);
  strict protected
    function Obj: TGetIdentityVerificationAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetVerificationAttributes: Boolean;
    property VerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes> read GetVerificationAttributes write SetVerificationAttributes;
  end;
  
implementation

{ TGetIdentityVerificationAttributesResponse }

constructor TGetIdentityVerificationAttributesResponse.Create;
begin
  inherited;
  FVerificationAttributes := TObjectDictionary<string, TIdentityVerificationAttributes>.Create;
end;

destructor TGetIdentityVerificationAttributesResponse.Destroy;
begin
  FVerificationAttributes.Free;
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
    FVerificationAttributes.Free;
    FVerificationAttributes := Value;
  end;
end;

function TGetIdentityVerificationAttributesResponse.IsSetVerificationAttributes: Boolean;
begin
  Result := (FVerificationAttributes <> nil) and (FVerificationAttributes.Count > 0);
end;

end.
