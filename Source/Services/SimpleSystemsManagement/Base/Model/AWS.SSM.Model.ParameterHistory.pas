unit AWS.SSM.Model.ParameterHistory;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.ParameterInlinePolicy, 
  AWS.SSM.Enums;

type
  TParameterHistory = class;
  
  IParameterHistory = interface
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
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
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
    function Obj: TParameterHistory;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetLabels: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    function IsSetVersion: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property Name: string read GetName write SetName;
    property Policies: TObjectList<TParameterInlinePolicy> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
  TParameterHistory = class
  strict private
    FAllowedPattern: Nullable<string>;
    FDataType: Nullable<string>;
    FDescription: Nullable<string>;
    FKeyId: Nullable<string>;
    FLabels: TList<string>;
    FKeepLabels: Boolean;
    FLastModifiedDate: Nullable<TDateTime>;
    FLastModifiedUser: Nullable<string>;
    FName: Nullable<string>;
    FPolicies: TObjectList<TParameterInlinePolicy>;
    FKeepPolicies: Boolean;
    FTier: Nullable<TParameterTier>;
    FType: Nullable<TParameterType>;
    FValue: Nullable<string>;
    FVersion: Nullable<Int64>;
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetLabels: TList<string>;
    procedure SetLabels(const Value: TList<string>);
    function GetKeepLabels: Boolean;
    procedure SetKeepLabels(const Value: Boolean);
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
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
  strict protected
    function Obj: TParameterHistory;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetLabels: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetLastModifiedUser: Boolean;
    function IsSetName: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    function IsSetVersion: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property Labels: TList<string> read GetLabels write SetLabels;
    property KeepLabels: Boolean read GetKeepLabels write SetKeepLabels;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property LastModifiedUser: string read GetLastModifiedUser write SetLastModifiedUser;
    property Name: string read GetName write SetName;
    property Policies: TObjectList<TParameterInlinePolicy> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
implementation

{ TParameterHistory }

constructor TParameterHistory.Create;
begin
  inherited;
  FLabels := TList<string>.Create;
  FPolicies := TObjectList<TParameterInlinePolicy>.Create;
end;

destructor TParameterHistory.Destroy;
begin
  Policies := nil;
  Labels := nil;
  inherited;
end;

function TParameterHistory.Obj: TParameterHistory;
begin
  Result := Self;
end;

function TParameterHistory.GetAllowedPattern: string;
begin
  Result := FAllowedPattern.ValueOrDefault;
end;

procedure TParameterHistory.SetAllowedPattern(const Value: string);
begin
  FAllowedPattern := Value;
end;

function TParameterHistory.IsSetAllowedPattern: Boolean;
begin
  Result := FAllowedPattern.HasValue;
end;

function TParameterHistory.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TParameterHistory.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TParameterHistory.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TParameterHistory.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TParameterHistory.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TParameterHistory.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TParameterHistory.GetKeyId: string;
begin
  Result := FKeyId.ValueOrDefault;
end;

procedure TParameterHistory.SetKeyId(const Value: string);
begin
  FKeyId := Value;
end;

function TParameterHistory.IsSetKeyId: Boolean;
begin
  Result := FKeyId.HasValue;
end;

function TParameterHistory.GetLabels: TList<string>;
begin
  Result := FLabels;
end;

procedure TParameterHistory.SetLabels(const Value: TList<string>);
begin
  if FLabels <> Value then
  begin
    if not KeepLabels then
      FLabels.Free;
    FLabels := Value;
  end;
end;

function TParameterHistory.GetKeepLabels: Boolean;
begin
  Result := FKeepLabels;
end;

procedure TParameterHistory.SetKeepLabels(const Value: Boolean);
begin
  FKeepLabels := Value;
end;

function TParameterHistory.IsSetLabels: Boolean;
begin
  Result := (FLabels <> nil) and (FLabels.Count > 0);
end;

function TParameterHistory.GetLastModifiedDate: TDateTime;
begin
  Result := FLastModifiedDate.ValueOrDefault;
end;

procedure TParameterHistory.SetLastModifiedDate(const Value: TDateTime);
begin
  FLastModifiedDate := Value;
end;

function TParameterHistory.IsSetLastModifiedDate: Boolean;
begin
  Result := FLastModifiedDate.HasValue;
end;

function TParameterHistory.GetLastModifiedUser: string;
begin
  Result := FLastModifiedUser.ValueOrDefault;
end;

procedure TParameterHistory.SetLastModifiedUser(const Value: string);
begin
  FLastModifiedUser := Value;
end;

function TParameterHistory.IsSetLastModifiedUser: Boolean;
begin
  Result := FLastModifiedUser.HasValue;
end;

function TParameterHistory.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TParameterHistory.SetName(const Value: string);
begin
  FName := Value;
end;

function TParameterHistory.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TParameterHistory.GetPolicies: TObjectList<TParameterInlinePolicy>;
begin
  Result := FPolicies;
end;

procedure TParameterHistory.SetPolicies(const Value: TObjectList<TParameterInlinePolicy>);
begin
  if FPolicies <> Value then
  begin
    if not KeepPolicies then
      FPolicies.Free;
    FPolicies := Value;
  end;
end;

function TParameterHistory.GetKeepPolicies: Boolean;
begin
  Result := FKeepPolicies;
end;

procedure TParameterHistory.SetKeepPolicies(const Value: Boolean);
begin
  FKeepPolicies := Value;
end;

function TParameterHistory.IsSetPolicies: Boolean;
begin
  Result := (FPolicies <> nil) and (FPolicies.Count > 0);
end;

function TParameterHistory.GetTier: TParameterTier;
begin
  Result := FTier.ValueOrDefault;
end;

procedure TParameterHistory.SetTier(const Value: TParameterTier);
begin
  FTier := Value;
end;

function TParameterHistory.IsSetTier: Boolean;
begin
  Result := FTier.HasValue;
end;

function TParameterHistory.GetType: TParameterType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TParameterHistory.SetType(const Value: TParameterType);
begin
  FType := Value;
end;

function TParameterHistory.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TParameterHistory.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TParameterHistory.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TParameterHistory.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

function TParameterHistory.GetVersion: Int64;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TParameterHistory.SetVersion(const Value: Int64);
begin
  FVersion := Value;
end;

function TParameterHistory.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
