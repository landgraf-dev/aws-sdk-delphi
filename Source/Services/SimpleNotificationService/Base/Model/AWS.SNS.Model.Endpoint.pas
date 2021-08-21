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
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetEndpointArn: string;
    procedure SetEndpointArn(const Value: string);
    function Obj: TEndpoint;
    function IsSetAttributes: Boolean;
    function IsSetEndpointArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property EndpointArn: string read GetEndpointArn write SetEndpointArn;
  end;
  
  TEndpoint = class
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    FEndpointArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
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
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
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
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TEndpoint.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TEndpoint.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
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
