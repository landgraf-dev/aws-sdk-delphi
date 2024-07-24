unit AWS.SSM.Model.AssociationExecutionFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAssociationExecutionFilter = class;
  
  IAssociationExecutionFilter = interface
    function GetKey: TAssociationExecutionFilterKey;
    procedure SetKey(const Value: TAssociationExecutionFilterKey);
    function GetType: TAssociationFilterOperatorType;
    procedure SetType(const Value: TAssociationFilterOperatorType);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TAssociationExecutionFilter;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationExecutionFilterKey read GetKey write SetKey;
    property &Type: TAssociationFilterOperatorType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
  TAssociationExecutionFilter = class
  strict private
    FKey: Nullable<TAssociationExecutionFilterKey>;
    FType: Nullable<TAssociationFilterOperatorType>;
    FValue: Nullable<string>;
    function GetKey: TAssociationExecutionFilterKey;
    procedure SetKey(const Value: TAssociationExecutionFilterKey);
    function GetType: TAssociationFilterOperatorType;
    procedure SetType(const Value: TAssociationFilterOperatorType);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TAssociationExecutionFilter;
  public
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationExecutionFilterKey read GetKey write SetKey;
    property &Type: TAssociationFilterOperatorType read GetType write SetType;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TAssociationExecutionFilter }

function TAssociationExecutionFilter.Obj: TAssociationExecutionFilter;
begin
  Result := Self;
end;

function TAssociationExecutionFilter.GetKey: TAssociationExecutionFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAssociationExecutionFilter.SetKey(const Value: TAssociationExecutionFilterKey);
begin
  FKey := Value;
end;

function TAssociationExecutionFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAssociationExecutionFilter.GetType: TAssociationFilterOperatorType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TAssociationExecutionFilter.SetType(const Value: TAssociationFilterOperatorType);
begin
  FType := Value;
end;

function TAssociationExecutionFilter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TAssociationExecutionFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TAssociationExecutionFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TAssociationExecutionFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
