unit AWS.SES.Model.GetIdentityDkimAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.IdentityDkimAttributes;

type
  TGetIdentityDkimAttributesResponse = class;
  
  IGetIdentityDkimAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetDkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes>;
    procedure SetDkimAttributes(const Value: TObjectDictionary<string, TIdentityDkimAttributes>);
    function Obj: TGetIdentityDkimAttributesResponse;
    function IsSetDkimAttributes: Boolean;
    property DkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes> read GetDkimAttributes write SetDkimAttributes;
  end;
  
  TGetIdentityDkimAttributesResponse = class(TAmazonWebServiceResponse, IGetIdentityDkimAttributesResponse)
  strict private
    FDkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes>;
    function GetDkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes>;
    procedure SetDkimAttributes(const Value: TObjectDictionary<string, TIdentityDkimAttributes>);
  strict protected
    function Obj: TGetIdentityDkimAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDkimAttributes: Boolean;
    property DkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes> read GetDkimAttributes write SetDkimAttributes;
  end;
  
implementation

{ TGetIdentityDkimAttributesResponse }

constructor TGetIdentityDkimAttributesResponse.Create;
begin
  inherited;
  FDkimAttributes := TObjectDictionary<string, TIdentityDkimAttributes>.Create([doOwnsValues]);
end;

destructor TGetIdentityDkimAttributesResponse.Destroy;
begin
  DkimAttributes := nil;
  inherited;
end;

function TGetIdentityDkimAttributesResponse.Obj: TGetIdentityDkimAttributesResponse;
begin
  Result := Self;
end;

function TGetIdentityDkimAttributesResponse.GetDkimAttributes: TObjectDictionary<string, TIdentityDkimAttributes>;
begin
  Result := FDkimAttributes;
end;

procedure TGetIdentityDkimAttributesResponse.SetDkimAttributes(const Value: TObjectDictionary<string, TIdentityDkimAttributes>);
begin
  if FDkimAttributes <> Value then
  begin
    FDkimAttributes.Free;
    FDkimAttributes := Value;
  end;
end;

function TGetIdentityDkimAttributesResponse.IsSetDkimAttributes: Boolean;
begin
  Result := (FDkimAttributes <> nil) and (FDkimAttributes.Count > 0);
end;

end.
