unit AWS.SSM.Model.ParameterMetadata;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterInlinePolicy, 
  AWS.SSM.Enums;

type
  TParameterMetadata = class;
  
  IParameterMetadata = interface
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicies: TObjectList<TParameterInlinePolicy>;
    procedure SetPolicies(const Value: TObjectList<TParameterInlinePolicy>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
    function Obj: TParameterMetadata;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetVersion: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property Name: string read GetName write SetName;
    property Policies: TObjectList<TParameterInlinePolicy> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
  TParameterMetadata = class
  strict private
    FAllowedPattern: Nullable<string>;
    FDataType: Nullable<string>;
    FDescription: Nullable<string>;
    FKeyId: Nullable<string>;
    FLastModifiedDate: Nullable<TDateTime>;
    FLastModifiedUser: Nullable<string>;
    FName: Nullable<string>;
    FPolicies: TObjectList<TParameterInlinePolicy>;
    FKeepPolicies: Boolean;
    FTier: Nullable<TParameterTier>;
    FType: Nullable<TParameterType>;
    FVersion: Nullable<Int64>;
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetLastModifiedUser: string;
    procedure SetLastModifiedUser(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPolicies: TObjectList<TParameterInlinePolicy>;
    procedure SetPolicies(const Value: TObjectList<TParameterInlinePolicy>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
  strict protected
    function Obj: TParameterMetadata;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetVersion: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property Name: string read GetName write SetName;
    property Policies: TObjectList<TParameterInlinePolicy> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
implementation

{ TParameterMetadata }

constructor TParameterMetadata.Create;
begin
  inherited;
  FPolicies := TObjectList<TParameterInlinePolicy>.Create;
end;

destructor TParameterMetadata.Destroy;
begin
  Policies := nil;
  inherited;
end;

function TParameterMetadata.Obj: TParameterMetadata;
begin
  Result := Self;
end;

function TParameterMetadata.GetAllowedPattern: string;
begin
  Result := FAllowedPattern.ValueOrDefault;
end;

procedure TParameterMetadata.SetAllowedPattern(const Value: string);
begin
  FAllowedPattern := Value;
end;

function TParameterMetadata.IsSetAllowedPattern: Boolean;
begin
  Result := FAllowedPattern.HasValue;
end;

function TParameterMetadata.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TParameterMetadata.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TParameterMetadata.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TParameterMetadata.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TParameterMetadata.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TParameterMetadata.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TParameterMetadata.GetKeyId: string;
begin
  Result := FKeyId.ValueOrDefault;
end;

procedure TParameterMetadata.SetKeyId(const Value: string);
begin
  FKeyId := Value;
end;

function TParameterMetadata.IsSetKeyId: Boolean;
begin
  Result := FKeyId.HasValue;
end;

function TParameterMetadata.GetLastModifiedDate: TDateTime;
begin
  Result := FLastModifiedDate.ValueOrDefault;
end;

procedure TParameterMetadata.SetLastModifiedDate(const Value: TDateTime);
begin
  FLastModifiedDate := Value;
end;

function TParameterMetadata.IsSetLastModifiedDate: Boolean;
begin
  Result := FLastModifiedDate.HasValue;
end;

function TParameterMetadata.GetLastModifiedUser: string;
begin
  Result := FLastModifiedUser.ValueOrDefault;
end;

procedure TParameterMetadata.SetLastModifiedUser(const Value: string);
begin
  FLastModifiedUser := Value;
end;

function TParameterMetadata.IsSetLastModifiedUser: Boolean;
begin
  Result := FLastModifiedUser.HasValue;
end;

function TParameterMetadata.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TParameterMetadata.SetName(const Value: string);
begin
  FName := Value;
end;

function TParameterMetadata.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TParameterMetadata.GetPolicies: TObjectList<TParameterInlinePolicy>;
begin
  Result := FPolicies;
end;

procedure TParameterMetadata.SetPolicies(const Value: TObjectList<TParameterInlinePolicy>);
begin
  if FPolicies <> Value then
  begin
    if not KeepPolicies then
      FPolicies.Free;
    FPolicies := Value;
  end;
end;

function TParameterMetadata.GetKeepPolicies: Boolean;
begin
  Result := FKeepPolicies;
end;

procedure TParameterMetadata.SetKeepPolicies(const Value: Boolean);
begin
  FKeepPolicies := Value;
end;

function TParameterMetadata.IsSetPolicies: Boolean;
begin
  Result := (FPolicies <> nil) and (FPolicies.Count > 0);
end;

function TParameterMetadata.GetTier: TParameterTier;
begin
  Result := FTier.ValueOrDefault;
end;

procedure TParameterMetadata.SetTier(const Value: TParameterTier);
begin
  FTier := Value;
end;

function TParameterMetadata.IsSetTier: Boolean;
begin
  Result := FTier.HasValue;
end;

function TParameterMetadata.GetType: TParameterType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TParameterMetadata.SetType(const Value: TParameterType);
begin
  FType := Value;
end;

function TParameterMetadata.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TParameterMetadata.GetVersion: Int64;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TParameterMetadata.SetVersion(const Value: Int64);
begin
  FVersion := Value;
end;

function TParameterMetadata.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
