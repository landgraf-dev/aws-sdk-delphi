unit AWS.SSM.Model.PutParameterRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.Tag, 
  AWS.SSM.Enums;

type
  TPutParameterRequest = class;
  
  IPutParameterRequest = interface
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOverwrite: Boolean;
    procedure SetOverwrite(const Value: Boolean);
    function GetPolicies: string;
    procedure SetPolicies(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TPutParameterRequest;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetName: Boolean;
    function IsSetOverwrite: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTags: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property Name: string read GetName write SetName;
    property Overwrite: Boolean read GetOverwrite write SetOverwrite;
    property Policies: string read GetPolicies write SetPolicies;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
  TPutParameterRequest = class(TAmazonSimpleSystemsManagementRequest, IPutParameterRequest)
  strict private
    FAllowedPattern: Nullable<string>;
    FDataType: Nullable<string>;
    FDescription: Nullable<string>;
    FKeyId: Nullable<string>;
    FName: Nullable<string>;
    FOverwrite: Nullable<Boolean>;
    FPolicies: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTier: Nullable<TParameterTier>;
    FType: Nullable<TParameterType>;
    FValue: Nullable<string>;
    function GetAllowedPattern: string;
    procedure SetAllowedPattern(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetKeyId: string;
    procedure SetKeyId(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOverwrite: Boolean;
    procedure SetOverwrite(const Value: Boolean);
    function GetPolicies: string;
    procedure SetPolicies(const Value: string);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetTier: TParameterTier;
    procedure SetTier(const Value: TParameterTier);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TPutParameterRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowedPattern: Boolean;
    function IsSetDataType: Boolean;
    function IsSetDescription: Boolean;
    function IsSetKeyId: Boolean;
    function IsSetName: Boolean;
    function IsSetOverwrite: Boolean;
    function IsSetPolicies: Boolean;
    function IsSetTags: Boolean;
    function IsSetTier: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property AllowedPattern: string read GetAllowedPattern write SetAllowedPattern;
    property DataType: string read GetDataType write SetDataType;
    property Description: string read GetDescription write SetDescription;
    property KeyId: string read GetKeyId write SetKeyId;
    property Name: string read GetName write SetName;
    property Overwrite: Boolean read GetOverwrite write SetOverwrite;
    property Policies: string read GetPolicies write SetPolicies;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property Tier: TParameterTier read GetTier write SetTier;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TPutParameterRequest }

constructor TPutParameterRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TPutParameterRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TPutParameterRequest.Obj: TPutParameterRequest;
begin
  Result := Self;
end;

function TPutParameterRequest.GetAllowedPattern: string;
begin
  Result := FAllowedPattern.ValueOrDefault;
end;

procedure TPutParameterRequest.SetAllowedPattern(const Value: string);
begin
  FAllowedPattern := Value;
end;

function TPutParameterRequest.IsSetAllowedPattern: Boolean;
begin
  Result := FAllowedPattern.HasValue;
end;

function TPutParameterRequest.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TPutParameterRequest.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TPutParameterRequest.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TPutParameterRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TPutParameterRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TPutParameterRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TPutParameterRequest.GetKeyId: string;
begin
  Result := FKeyId.ValueOrDefault;
end;

procedure TPutParameterRequest.SetKeyId(const Value: string);
begin
  FKeyId := Value;
end;

function TPutParameterRequest.IsSetKeyId: Boolean;
begin
  Result := FKeyId.HasValue;
end;

function TPutParameterRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TPutParameterRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TPutParameterRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TPutParameterRequest.GetOverwrite: Boolean;
begin
  Result := FOverwrite.ValueOrDefault;
end;

procedure TPutParameterRequest.SetOverwrite(const Value: Boolean);
begin
  FOverwrite := Value;
end;

function TPutParameterRequest.IsSetOverwrite: Boolean;
begin
  Result := FOverwrite.HasValue;
end;

function TPutParameterRequest.GetPolicies: string;
begin
  Result := FPolicies.ValueOrDefault;
end;

procedure TPutParameterRequest.SetPolicies(const Value: string);
begin
  FPolicies := Value;
end;

function TPutParameterRequest.IsSetPolicies: Boolean;
begin
  Result := FPolicies.HasValue;
end;

function TPutParameterRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TPutParameterRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TPutParameterRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TPutParameterRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TPutParameterRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TPutParameterRequest.GetTier: TParameterTier;
begin
  Result := FTier.ValueOrDefault;
end;

procedure TPutParameterRequest.SetTier(const Value: TParameterTier);
begin
  FTier := Value;
end;

function TPutParameterRequest.IsSetTier: Boolean;
begin
  Result := FTier.HasValue;
end;

function TPutParameterRequest.GetType: TParameterType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TPutParameterRequest.SetType(const Value: TParameterType);
begin
  FType := Value;
end;

function TPutParameterRequest.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TPutParameterRequest.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TPutParameterRequest.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TPutParameterRequest.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
