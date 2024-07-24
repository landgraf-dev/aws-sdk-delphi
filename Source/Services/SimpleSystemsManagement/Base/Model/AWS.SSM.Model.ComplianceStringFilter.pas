unit AWS.SSM.Model.ComplianceStringFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TComplianceStringFilter = class;
  
  IComplianceStringFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TComplianceQueryOperatorType;
    procedure SetType(const Value: TComplianceQueryOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TComplianceStringFilter;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TComplianceQueryOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TComplianceStringFilter = class
  strict private
    FKey: Nullable<string>;
    FType: Nullable<TComplianceQueryOperatorType>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetType: TComplianceQueryOperatorType;
    procedure SetType(const Value: TComplianceQueryOperatorType);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TComplianceStringFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetType: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property &Type: TComplianceQueryOperatorType read GetType write SetType;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TComplianceStringFilter }

constructor TComplianceStringFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TComplianceStringFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TComplianceStringFilter.Obj: TComplianceStringFilter;
begin
  Result := Self;
end;

function TComplianceStringFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TComplianceStringFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TComplianceStringFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TComplianceStringFilter.GetType: TComplianceQueryOperatorType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TComplianceStringFilter.SetType(const Value: TComplianceQueryOperatorType);
begin
  FType := Value;
end;

function TComplianceStringFilter.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TComplianceStringFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TComplianceStringFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TComplianceStringFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TComplianceStringFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TComplianceStringFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
