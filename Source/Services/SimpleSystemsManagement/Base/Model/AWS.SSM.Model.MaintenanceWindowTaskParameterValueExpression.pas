unit AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

interface

uses
  System.Generics.Collections;

type
  TMaintenanceWindowTaskParameterValueExpression = class;
  
  IMaintenanceWindowTaskParameterValueExpression = interface
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TMaintenanceWindowTaskParameterValueExpression;
    function IsSetValues: Boolean;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TMaintenanceWindowTaskParameterValueExpression = class
  strict private
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TMaintenanceWindowTaskParameterValueExpression;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetValues: Boolean;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TMaintenanceWindowTaskParameterValueExpression }

constructor TMaintenanceWindowTaskParameterValueExpression.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TMaintenanceWindowTaskParameterValueExpression.Destroy;
begin
  Values := nil;
  inherited;
end;

function TMaintenanceWindowTaskParameterValueExpression.Obj: TMaintenanceWindowTaskParameterValueExpression;
begin
  Result := Self;
end;

function TMaintenanceWindowTaskParameterValueExpression.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TMaintenanceWindowTaskParameterValueExpression.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TMaintenanceWindowTaskParameterValueExpression.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TMaintenanceWindowTaskParameterValueExpression.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TMaintenanceWindowTaskParameterValueExpression.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
