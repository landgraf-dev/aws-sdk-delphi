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
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function Obj: TGetEndpointAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
  end;
  
  TGetEndpointAttributesResponse = class(TAmazonWebServiceResponse, IGetEndpointAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
  strict protected
    function Obj: TGetEndpointAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
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
  Attributes := nil;
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
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetEndpointAttributesResponse.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TGetEndpointAttributesResponse.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TGetEndpointAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
