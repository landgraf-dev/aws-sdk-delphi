unit AWS.SNS.Model.CreatePlatformEndpointRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TCreatePlatformEndpointRequest = class;
  
  ICreatePlatformEndpointRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetCustomUserData: string;
    procedure SetCustomUserData(const Value: string);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function GetToken: string;
    procedure SetToken(const Value: string);
    function Obj: TCreatePlatformEndpointRequest;
    function IsSetAttributes: Boolean;
    function IsSetCustomUserData: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    function IsSetToken: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property CustomUserData: string read GetCustomUserData write SetCustomUserData;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
    property Token: string read GetToken write SetToken;
  end;
  
  TCreatePlatformEndpointRequest = class(TAmazonSimpleNotificationServiceRequest, ICreatePlatformEndpointRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FCustomUserData: Nullable<string>;
    FPlatformApplicationArn: Nullable<string>;
    FToken: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetCustomUserData: string;
    procedure SetCustomUserData(const Value: string);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function GetToken: string;
    procedure SetToken(const Value: string);
  strict protected
    function Obj: TCreatePlatformEndpointRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetCustomUserData: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    function IsSetToken: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property CustomUserData: string read GetCustomUserData write SetCustomUserData;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
    property Token: string read GetToken write SetToken;
  end;
  
implementation

{ TCreatePlatformEndpointRequest }

constructor TCreatePlatformEndpointRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TCreatePlatformEndpointRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TCreatePlatformEndpointRequest.Obj: TCreatePlatformEndpointRequest;
begin
  Result := Self;
end;

function TCreatePlatformEndpointRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TCreatePlatformEndpointRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TCreatePlatformEndpointRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TCreatePlatformEndpointRequest.GetCustomUserData: string;
begin
  Result := FCustomUserData.ValueOrDefault;
end;

procedure TCreatePlatformEndpointRequest.SetCustomUserData(const Value: string);
begin
  FCustomUserData := Value;
end;

function TCreatePlatformEndpointRequest.IsSetCustomUserData: Boolean;
begin
  Result := FCustomUserData.HasValue;
end;

function TCreatePlatformEndpointRequest.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TCreatePlatformEndpointRequest.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TCreatePlatformEndpointRequest.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

function TCreatePlatformEndpointRequest.GetToken: string;
begin
  Result := FToken.ValueOrDefault;
end;

procedure TCreatePlatformEndpointRequest.SetToken(const Value: string);
begin
  FToken := Value;
end;

function TCreatePlatformEndpointRequest.IsSetToken: Boolean;
begin
  Result := FToken.HasValue;
end;

end.
