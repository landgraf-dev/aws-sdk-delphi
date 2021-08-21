unit AWS.SNS.Model.SetEndpointAttributesRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TSetEndpointAttributesRequest = class;
  
  ISetEndpointAttributesRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TSetEndpointAttributesRequest;
    function IsSetAttributes: Boolean;
    function IsSetEndpointArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TSetEndpointAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetEndpointAttributesRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FEndpointArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
  strict protected
    function Obj: TSetEndpointAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetEndpointArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
implementation

{ TSetEndpointAttributesRequest }

constructor TSetEndpointAttributesRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TSetEndpointAttributesRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TSetEndpointAttributesRequest.Obj: TSetEndpointAttributesRequest;
begin
  Result := Self;
end;

function TSetEndpointAttributesRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TSetEndpointAttributesRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSetEndpointAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TSetEndpointAttributesRequest.GetEndpointArn: string;
begin
  Result := FEndpointArn.ValueOrDefault;
end;

procedure TSetEndpointAttributesRequest.SetEndpointArn(const Value: string);
begin
  FEndpointArn := Value;
end;

function TSetEndpointAttributesRequest.IsSetEndpointArn: Boolean;
begin
  Result := FEndpointArn.HasValue;
end;

end.
