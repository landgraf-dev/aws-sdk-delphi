unit AWS.SSM.Model.ParameterStringFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TParameterStringFilter = class;
  
  IParameterStringFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOption: string;
    procedure SetOption(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TParameterStringFilter;
    function IsSetKey: Boolean;
    function IsSetOption: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Option: string read GetOption write SetOption;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TParameterStringFilter = class
  strict private
    FKey: Nullable<string>;
    FOption: Nullable<string>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOption: string;
    procedure SetOption(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TParameterStringFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetOption: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Option: string read GetOption write SetOption;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TParameterStringFilter }

constructor TParameterStringFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TParameterStringFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TParameterStringFilter.Obj: TParameterStringFilter;
begin
  Result := Self;
end;

function TParameterStringFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TParameterStringFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TParameterStringFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TParameterStringFilter.GetOption: string;
begin
  Result := FOption.ValueOrDefault;
end;

procedure TParameterStringFilter.SetOption(const Value: string);
begin
  FOption := Value;
end;

function TParameterStringFilter.IsSetOption: Boolean;
begin
  Result := FOption.HasValue;
end;

function TParameterStringFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TParameterStringFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TParameterStringFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TParameterStringFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TParameterStringFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
