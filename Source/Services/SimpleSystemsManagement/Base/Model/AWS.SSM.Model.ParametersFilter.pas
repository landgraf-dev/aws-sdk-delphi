unit AWS.SSM.Model.ParametersFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TParametersFilter = class;
  
  IParametersFilter = interface
    function GetKey: TParametersFilterKey;
    procedure SetKey(const Value: TParametersFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TParametersFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TParametersFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TParametersFilter = class
  strict private
    FKey: Nullable<TParametersFilterKey>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TParametersFilterKey;
    procedure SetKey(const Value: TParametersFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TParametersFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TParametersFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TParametersFilter }

constructor TParametersFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TParametersFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TParametersFilter.Obj: TParametersFilter;
begin
  Result := Self;
end;

function TParametersFilter.GetKey: TParametersFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TParametersFilter.SetKey(const Value: TParametersFilterKey);
begin
  FKey := Value;
end;

function TParametersFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TParametersFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TParametersFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TParametersFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TParametersFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TParametersFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
