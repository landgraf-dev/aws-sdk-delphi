unit AWS.SNS.Model.SetPlatformApplicationAttributesRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TSetPlatformApplicationAttributesRequest = class;
  
  ISetPlatformApplicationAttributesRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TSetPlatformApplicationAttributesRequest;
    function IsSetAttributes: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TSetPlatformApplicationAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, ISetPlatformApplicationAttributesRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FPlatformApplicationArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TSetPlatformApplicationAttributesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TSetPlatformApplicationAttributesRequest }

constructor TSetPlatformApplicationAttributesRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TSetPlatformApplicationAttributesRequest.Destroy;
begin
  FAttributes.Free;
  inherited;
end;

function TSetPlatformApplicationAttributesRequest.Obj: TSetPlatformApplicationAttributesRequest;
begin
  Result := Self;
end;

function TSetPlatformApplicationAttributesRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TSetPlatformApplicationAttributesRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSetPlatformApplicationAttributesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TSetPlatformApplicationAttributesRequest.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TSetPlatformApplicationAttributesRequest.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TSetPlatformApplicationAttributesRequest.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
