unit AWS.SSM.Model.Parameter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TParameter = class;
  
  IParameter = interface
    function GetARN: string;
    procedure SetARN(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSelector: string;
    procedure SetSelector(const Value: string);
    function GetSourceResult: string;
    procedure SetSourceResult(const Value: string);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
    function Obj: TParameter;
    function IsSetARN: Boolean;
    function IsSetDataType: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSelector: Boolean;
    function IsSetSourceResult: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    function IsSetVersion: Boolean;
    property ARN: string read GetARN write SetARN;
    property DataType: string read GetDataType write SetDataType;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property Name: string read GetName write SetName;
    property Selector: string read GetSelector write SetSelector;
    property SourceResult: string read GetSourceResult write SetSourceResult;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
  TParameter = class
  strict private
    FARN: Nullable<string>;
    FDataType: Nullable<string>;
    FLastModifiedDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FSelector: Nullable<string>;
    FSourceResult: Nullable<string>;
    FType: Nullable<TParameterType>;
    FValue: Nullable<string>;
    FVersion: Nullable<Int64>;
    function GetARN: string;
    procedure SetARN(const Value: string);
    function GetDataType: string;
    procedure SetDataType(const Value: string);
    function GetLastModifiedDate: TDateTime;
    procedure SetLastModifiedDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSelector: string;
    procedure SetSelector(const Value: string);
    function GetSourceResult: string;
    procedure SetSourceResult(const Value: string);
    function GetType: TParameterType;
    procedure SetType(const Value: TParameterType);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function GetVersion: Int64;
    procedure SetVersion(const Value: Int64);
  strict protected
    function Obj: TParameter;
  public
    function IsSetARN: Boolean;
    function IsSetDataType: Boolean;
    function IsSetLastModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSelector: Boolean;
    function IsSetSourceResult: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    function IsSetVersion: Boolean;
    property ARN: string read GetARN write SetARN;
    property DataType: string read GetDataType write SetDataType;
    property LastModifiedDate: TDateTime read GetLastModifiedDate write SetLastModifiedDate;
    property Name: string read GetName write SetName;
    property Selector: string read GetSelector write SetSelector;
    property SourceResult: string read GetSourceResult write SetSourceResult;
    property &Type: TParameterType read GetType write SetType;
    property Value: string read GetValue write SetValue;
    property Version: Int64 read GetVersion write SetVersion;
  end;
  
implementation

{ TParameter }

function TParameter.Obj: TParameter;
begin
  Result := Self;
end;

function TParameter.GetARN: string;
begin
  Result := FARN.ValueOrDefault;
end;

procedure TParameter.SetARN(const Value: string);
begin
  FARN := Value;
end;

function TParameter.IsSetARN: Boolean;
begin
  Result := FARN.HasValue;
end;

function TParameter.GetDataType: string;
begin
  Result := FDataType.ValueOrDefault;
end;

procedure TParameter.SetDataType(const Value: string);
begin
  FDataType := Value;
end;

function TParameter.IsSetDataType: Boolean;
begin
  Result := FDataType.HasValue;
end;

function TParameter.GetLastModifiedDate: TDateTime;
begin
  Result := FLastModifiedDate.ValueOrDefault;
end;

procedure TParameter.SetLastModifiedDate(const Value: TDateTime);
begin
  FLastModifiedDate := Value;
end;

function TParameter.IsSetLastModifiedDate: Boolean;
begin
  Result := FLastModifiedDate.HasValue;
end;

function TParameter.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TParameter.SetName(const Value: string);
begin
  FName := Value;
end;

function TParameter.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TParameter.GetSelector: string;
begin
  Result := FSelector.ValueOrDefault;
end;

procedure TParameter.SetSelector(const Value: string);
begin
  FSelector := Value;
end;

function TParameter.IsSetSelector: Boolean;
begin
  Result := FSelector.HasValue;
end;

function TParameter.GetSourceResult: string;
begin
  Result := FSourceResult.ValueOrDefault;
end;

procedure TParameter.SetSourceResult(const Value: string);
begin
  FSourceResult := Value;
end;

function TParameter.IsSetSourceResult: Boolean;
begin
  Result := FSourceResult.HasValue;
end;

function TParameter.GetType: TParameterType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TParameter.SetType(const Value: TParameterType);
begin
  FType := Value;
end;

function TParameter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TParameter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TParameter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TParameter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

function TParameter.GetVersion: Int64;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TParameter.SetVersion(const Value: Int64);
begin
  FVersion := Value;
end;

function TParameter.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
