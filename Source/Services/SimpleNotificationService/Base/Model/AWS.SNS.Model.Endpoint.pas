unit AWS.SNS.Model.Endpoint;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable;

type
  TEndpoint = class;
  
  IEndpoint = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TEndpoint;
    function IsSetAttributes: Boolean;
    function IsSetEndpointArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TEndpoint = class
  strict private
    FAttributes: TDictionary<string, string>;
    FEndpointArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
  strict protected
    function Obj: TEndpoint;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetEndpointArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
implementation

{ TEndpoint }

constructor TEndpoint.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TEndpoint.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TEndpoint.Obj: TEndpoint;
begin
  Result := Self;
end;

function TEndpoint.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TEndpoint.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TEndpoint.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TEndpoint.GetEndpointArn: string;
begin
  Result := FEndpointArn.ValueOrDefault;
end;

procedure TEndpoint.SetEndpointArn(const Value: string);
begin
  FEndpointArn := Value;
end;

function TEndpoint.IsSetEndpointArn: Boolean;
begin
  Result := FEndpointArn.HasValue;
end;

end.
