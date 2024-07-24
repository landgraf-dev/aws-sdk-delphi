unit AWS.SSM.Model.MaintenanceWindowFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TMaintenanceWindowFilter = class;
  
  IMaintenanceWindowFilter = interface
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TMaintenanceWindowFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TMaintenanceWindowFilter = class
  strict private
    FKey: Nullable<string>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TMaintenanceWindowFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: string read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TMaintenanceWindowFilter }

constructor TMaintenanceWindowFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TMaintenanceWindowFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TMaintenanceWindowFilter.Obj: TMaintenanceWindowFilter;
begin
  Result := Self;
end;

function TMaintenanceWindowFilter.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TMaintenanceWindowFilter.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TMaintenanceWindowFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TMaintenanceWindowFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TMaintenanceWindowFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TMaintenanceWindowFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TMaintenanceWindowFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TMaintenanceWindowFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
