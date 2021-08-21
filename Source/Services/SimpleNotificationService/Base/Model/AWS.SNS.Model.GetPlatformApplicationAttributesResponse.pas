unit AWS.SNS.Model.GetPlatformApplicationAttributesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetPlatformApplicationAttributesResponse = class;
  
  IGetPlatformApplicationAttributesResponse = interface(IAmazonWebServiceResponse)
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function Obj: TGetPlatformApplicationAttributesResponse;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
  TGetPlatformApplicationAttributesResponse = class(TAmazonWebServiceResponse, IGetPlatformApplicationAttributesResponse)
  strict private
    FAttributes: TDictionary<string, string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
  strict protected
    function Obj: TGetPlatformApplicationAttributesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
  end;
  
implementation

{ TGetPlatformApplicationAttributesResponse }

constructor TGetPlatformApplicationAttributesResponse.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TGetPlatformApplicationAttributesResponse.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TGetPlatformApplicationAttributesResponse.Obj: TGetPlatformApplicationAttributesResponse;
begin
  Result := Self;
end;

function TGetPlatformApplicationAttributesResponse.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TGetPlatformApplicationAttributesResponse.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TGetPlatformApplicationAttributesResponse.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

end.
