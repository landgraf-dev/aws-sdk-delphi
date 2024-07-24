unit AWS.SSM.Model.AssociationExecutionTargetsFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAssociationExecutionTargetsFilter = class;
  
  IAssociationExecutionTargetsFilter = interface
    function GetKey: TAssociationExecutionTargetsFilterKey;
    procedure SetKey(const Value: TAssociationExecutionTargetsFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TAssociationExecutionTargetsFilter;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationExecutionTargetsFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TAssociationExecutionTargetsFilter = class
  strict private
    FKey: Nullable<TAssociationExecutionTargetsFilterKey>;
    FValue: Nullable<string>;
    function GetKey: TAssociationExecutionTargetsFilterKey;
    procedure SetKey(const Value: TAssociationExecutionTargetsFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TAssociationExecutionTargetsFilter;
  public
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationExecutionTargetsFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TAssociationExecutionTargetsFilter }

function TAssociationExecutionTargetsFilter.Obj: TAssociationExecutionTargetsFilter;
begin
  Result := Self;
end;

function TAssociationExecutionTargetsFilter.GetKey: TAssociationExecutionTargetsFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAssociationExecutionTargetsFilter.SetKey(const Value: TAssociationExecutionTargetsFilterKey);
begin
  FKey := Value;
end;

function TAssociationExecutionTargetsFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAssociationExecutionTargetsFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TAssociationExecutionTargetsFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TAssociationExecutionTargetsFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
