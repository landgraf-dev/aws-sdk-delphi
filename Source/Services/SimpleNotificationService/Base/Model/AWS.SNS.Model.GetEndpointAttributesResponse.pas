unit AWS.SNS.Model.GetEndpointAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetEndpointAttributesResponse = class;
  
  IGetEndpointAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function Obj: TGetEndpointAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
  TGetEndpointAttributesResponse = class(TAmazonWebServiceResponse, IGetEndpointAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
  strict protected
    function Obj: TGetEndpointAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
implementation

{ TGetEndpointAttributesResponse }

constructor TGetEndpointAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetEndpointAttributesResponse.Destroy;
begin
  FAttributes.Free;
  inherited;
end;

function TGetEndpointAttributesResponse.Obj: TGetEndpointAttributesResponse;
begin
  Result := Self;
end;

function TGetEndpointAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetEndpointAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetEndpointAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
