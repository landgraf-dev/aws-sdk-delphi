unit AWS.S3.Model.CORSRule;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable;

type
  TCORSRule = class;
  
  ICORSRule = interface
    function GetAllowedHeaders: TList<string>;
    procedure SetAllowedHeaders(const Value: TList<string>);
    function GetKeepAllowedHeaders: Boolean;
    procedure SetKeepAllowedHeaders(const Value: Boolean);
    function GetAllowedMethods: TList<string>;
    procedure SetAllowedMethods(const Value: TList<string>);
    function GetKeepAllowedMethods: Boolean;
    procedure SetKeepAllowedMethods(const Value: Boolean);
    function GetAllowedOrigins: TList<string>;
    procedure SetAllowedOrigins(const Value: TList<string>);
    function GetKeepAllowedOrigins: Boolean;
    procedure SetKeepAllowedOrigins(const Value: Boolean);
    function GetExposeHeaders: TList<string>;
    procedure SetExposeHeaders(const Value: TList<string>);
    function GetKeepExposeHeaders: Boolean;
    procedure SetKeepExposeHeaders(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetMaxAgeSeconds: Integer;
    procedure SetMaxAgeSeconds(const Value: Integer);
    function Obj: TCORSRule;
    function IsSetAllowedHeaders: Boolean;
    function IsSetAllowedMethods: Boolean;
    function IsSetAllowedOrigins: Boolean;
    function IsSetExposeHeaders: Boolean;
    function IsSetID: Boolean;
    function IsSetMaxAgeSeconds: Boolean;
    property AllowedHeaders: TList<string> read GetAllowedHeaders write SetAllowedHeaders;
    property KeepAllowedHeaders: Boolean read GetKeepAllowedHeaders write SetKeepAllowedHeaders;
    property AllowedMethods: TList<string> read GetAllowedMethods write SetAllowedMethods;
    property KeepAllowedMethods: Boolean read GetKeepAllowedMethods write SetKeepAllowedMethods;
    property AllowedOrigins: TList<string> read GetAllowedOrigins write SetAllowedOrigins;
    property KeepAllowedOrigins: Boolean read GetKeepAllowedOrigins write SetKeepAllowedOrigins;
    property ExposeHeaders: TList<string> read GetExposeHeaders write SetExposeHeaders;
    property KeepExposeHeaders: Boolean read GetKeepExposeHeaders write SetKeepExposeHeaders;
    property ID: string read GetID write SetID;
    property MaxAgeSeconds: Integer read GetMaxAgeSeconds write SetMaxAgeSeconds;
  end;
  
  TCORSRule = class
  strict private
    FAllowedHeaders: TList<string>;
    FKeepAllowedHeaders: Boolean;
    FAllowedMethods: TList<string>;
    FKeepAllowedMethods: Boolean;
    FAllowedOrigins: TList<string>;
    FKeepAllowedOrigins: Boolean;
    FExposeHeaders: TList<string>;
    FKeepExposeHeaders: Boolean;
    FID: Nullable<string>;
    FMaxAgeSeconds: Nullable<Integer>;
    function GetAllowedHeaders: TList<string>;
    procedure SetAllowedHeaders(const Value: TList<string>);
    function GetKeepAllowedHeaders: Boolean;
    procedure SetKeepAllowedHeaders(const Value: Boolean);
    function GetAllowedMethods: TList<string>;
    procedure SetAllowedMethods(const Value: TList<string>);
    function GetKeepAllowedMethods: Boolean;
    procedure SetKeepAllowedMethods(const Value: Boolean);
    function GetAllowedOrigins: TList<string>;
    procedure SetAllowedOrigins(const Value: TList<string>);
    function GetKeepAllowedOrigins: Boolean;
    procedure SetKeepAllowedOrigins(const Value: Boolean);
    function GetExposeHeaders: TList<string>;
    procedure SetExposeHeaders(const Value: TList<string>);
    function GetKeepExposeHeaders: Boolean;
    procedure SetKeepExposeHeaders(const Value: Boolean);
    function GetID: string;
    procedure SetID(const Value: string);
    function GetMaxAgeSeconds: Integer;
    procedure SetMaxAgeSeconds(const Value: Integer);
  strict protected
    function Obj: TCORSRule;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowedHeaders: Boolean;
    function IsSetAllowedMethods: Boolean;
    function IsSetAllowedOrigins: Boolean;
    function IsSetExposeHeaders: Boolean;
    function IsSetID: Boolean;
    function IsSetMaxAgeSeconds: Boolean;
    property AllowedHeaders: TList<string> read GetAllowedHeaders write SetAllowedHeaders;
    property KeepAllowedHeaders: Boolean read GetKeepAllowedHeaders write SetKeepAllowedHeaders;
    property AllowedMethods: TList<string> read GetAllowedMethods write SetAllowedMethods;
    property KeepAllowedMethods: Boolean read GetKeepAllowedMethods write SetKeepAllowedMethods;
    property AllowedOrigins: TList<string> read GetAllowedOrigins write SetAllowedOrigins;
    property KeepAllowedOrigins: Boolean read GetKeepAllowedOrigins write SetKeepAllowedOrigins;
    property ExposeHeaders: TList<string> read GetExposeHeaders write SetExposeHeaders;
    property KeepExposeHeaders: Boolean read GetKeepExposeHeaders write SetKeepExposeHeaders;
    property ID: string read GetID write SetID;
    property MaxAgeSeconds: Integer read GetMaxAgeSeconds write SetMaxAgeSeconds;
  end;
  
implementation

{ TCORSRule }

constructor TCORSRule.Create;
begin
  inherited;
  FAllowedHeaders := TList<string>.Create;
  FAllowedMethods := TList<string>.Create;
  FAllowedOrigins := TList<string>.Create;
  FExposeHeaders := TList<string>.Create;
end;

destructor TCORSRule.Destroy;
begin
  ExposeHeaders := nil;
  AllowedOrigins := nil;
  AllowedMethods := nil;
  AllowedHeaders := nil;
  inherited;
end;

function TCORSRule.Obj: TCORSRule;
begin
  Result := Self;
end;

function TCORSRule.GetAllowedHeaders: TList<string>;
begin
  Result := FAllowedHeaders;
end;

procedure TCORSRule.SetAllowedHeaders(const Value: TList<string>);
begin
  if FAllowedHeaders <> Value then
  begin
    if not KeepAllowedHeaders then
      FAllowedHeaders.Free;
    FAllowedHeaders := Value;
  end;
end;

function TCORSRule.GetKeepAllowedHeaders: Boolean;
begin
  Result := FKeepAllowedHeaders;
end;

procedure TCORSRule.SetKeepAllowedHeaders(const Value: Boolean);
begin
  FKeepAllowedHeaders := Value;
end;

function TCORSRule.IsSetAllowedHeaders: Boolean;
begin
  Result := (FAllowedHeaders <> nil) and (FAllowedHeaders.Count > 0);
end;

function TCORSRule.GetAllowedMethods: TList<string>;
begin
  Result := FAllowedMethods;
end;

procedure TCORSRule.SetAllowedMethods(const Value: TList<string>);
begin
  if FAllowedMethods <> Value then
  begin
    if not KeepAllowedMethods then
      FAllowedMethods.Free;
    FAllowedMethods := Value;
  end;
end;

function TCORSRule.GetKeepAllowedMethods: Boolean;
begin
  Result := FKeepAllowedMethods;
end;

procedure TCORSRule.SetKeepAllowedMethods(const Value: Boolean);
begin
  FKeepAllowedMethods := Value;
end;

function TCORSRule.IsSetAllowedMethods: Boolean;
begin
  Result := (FAllowedMethods <> nil) and (FAllowedMethods.Count > 0);
end;

function TCORSRule.GetAllowedOrigins: TList<string>;
begin
  Result := FAllowedOrigins;
end;

procedure TCORSRule.SetAllowedOrigins(const Value: TList<string>);
begin
  if FAllowedOrigins <> Value then
  begin
    if not KeepAllowedOrigins then
      FAllowedOrigins.Free;
    FAllowedOrigins := Value;
  end;
end;

function TCORSRule.GetKeepAllowedOrigins: Boolean;
begin
  Result := FKeepAllowedOrigins;
end;

procedure TCORSRule.SetKeepAllowedOrigins(const Value: Boolean);
begin
  FKeepAllowedOrigins := Value;
end;

function TCORSRule.IsSetAllowedOrigins: Boolean;
begin
  Result := (FAllowedOrigins <> nil) and (FAllowedOrigins.Count > 0);
end;

function TCORSRule.GetExposeHeaders: TList<string>;
begin
  Result := FExposeHeaders;
end;

procedure TCORSRule.SetExposeHeaders(const Value: TList<string>);
begin
  if FExposeHeaders <> Value then
  begin
    if not KeepExposeHeaders then
      FExposeHeaders.Free;
    FExposeHeaders := Value;
  end;
end;

function TCORSRule.GetKeepExposeHeaders: Boolean;
begin
  Result := FKeepExposeHeaders;
end;

procedure TCORSRule.SetKeepExposeHeaders(const Value: Boolean);
begin
  FKeepExposeHeaders := Value;
end;

function TCORSRule.IsSetExposeHeaders: Boolean;
begin
  Result := (FExposeHeaders <> nil) and (FExposeHeaders.Count > 0);
end;

function TCORSRule.GetID: string;
begin
  Result := FID.ValueOrDefault;
end;

procedure TCORSRule.SetID(const Value: string);
begin
  FID := Value;
end;

function TCORSRule.IsSetID: Boolean;
begin
  Result := FID.HasValue;
end;

function TCORSRule.GetMaxAgeSeconds: Integer;
begin
  Result := FMaxAgeSeconds.ValueOrDefault;
end;

procedure TCORSRule.SetMaxAgeSeconds(const Value: Integer);
begin
  FMaxAgeSeconds := Value;
end;

function TCORSRule.IsSetMaxAgeSeconds: Boolean;
begin
  Result := FMaxAgeSeconds.HasValue;
end;

end.
