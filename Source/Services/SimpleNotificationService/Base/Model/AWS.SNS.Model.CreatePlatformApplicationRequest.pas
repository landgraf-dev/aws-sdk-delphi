unit AWS.SNS.Model.CreatePlatformApplicationRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TCreatePlatformApplicationRequest = class;
  
  ICreatePlatformApplicationRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPlatform: string;
    procedure SetPlatform(const Value: string);
    function Obj: TCreatePlatformApplicationRequest;
    function IsSetAttributes: Boolean;
    function IsSetName: Boolean;
    function IsSetPlatform: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property Name: string read GetName write SetName;
    property Platform: string read GetPlatform write SetPlatform;
  end;
  
  TCreatePlatformApplicationRequest = class(TAmazonSimpleNotificationServiceRequest, ICreatePlatformApplicationRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FName: Nullable<string>;
    FPlatform: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPlatform: string;
    procedure SetPlatform(const Value: string);
  strict protected
    function Obj: TCreatePlatformApplicationRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetName: Boolean;
    function IsSetPlatform: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property Name: string read GetName write SetName;
    property Platform: string read GetPlatform write SetPlatform;
  end;
  
implementation

{ TCreatePlatformApplicationRequest }

constructor TCreatePlatformApplicationRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TCreatePlatformApplicationRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TCreatePlatformApplicationRequest.Obj: TCreatePlatformApplicationRequest;
begin
  Result := Self;
end;

function TCreatePlatformApplicationRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TCreatePlatformApplicationRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TCreatePlatformApplicationRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TCreatePlatformApplicationRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreatePlatformApplicationRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreatePlatformApplicationRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreatePlatformApplicationRequest.GetPlatform: string;
begin
  Result := FPlatform.ValueOrDefault;
end;

procedure TCreatePlatformApplicationRequest.SetPlatform(const Value: string);
begin
  FPlatform := Value;
end;

function TCreatePlatformApplicationRequest.IsSetPlatform: Boolean;
begin
  Result := FPlatform.HasValue;
end;

end.
