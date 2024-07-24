unit AWS.SSM.Model.AssociationFilter;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAssociationFilter = class;
  
  IAssociationFilter = interface
    function GetKey: TAssociationFilterKey;
    procedure SetKey(const Value: TAssociationFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TAssociationFilter;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
  TAssociationFilter = class
  strict private
    FKey: Nullable<TAssociationFilterKey>;
    FValue: Nullable<string>;
    function GetKey: TAssociationFilterKey;
    procedure SetKey(const Value: TAssociationFilterKey);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TAssociationFilter;
  public
    constructor Create(const AKey: TAssociationFilterKey; const AValue: string); overload;
    function IsSetKey: Boolean;
    function IsSetValue: Boolean;
    property Key: TAssociationFilterKey read GetKey write SetKey;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TAssociationFilter }

function TAssociationFilter.Obj: TAssociationFilter;
begin
  Result := Self;
end;

constructor TAssociationFilter.Create(const AKey: TAssociationFilterKey; const AValue: string);
begin
  Create;
  Key := AKey;
  Value := AValue;
end;

function TAssociationFilter.GetKey: TAssociationFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAssociationFilter.SetKey(const Value: TAssociationFilterKey);
begin
  FKey := Value;
end;

function TAssociationFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAssociationFilter.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TAssociationFilter.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TAssociationFilter.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
