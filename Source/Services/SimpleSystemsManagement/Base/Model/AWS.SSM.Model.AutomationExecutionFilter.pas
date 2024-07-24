unit AWS.SSM.Model.AutomationExecutionFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TAutomationExecutionFilter = class;
  
  IAutomationExecutionFilter = interface
    function GetKey: TAutomationExecutionFilterKey;
    procedure SetKey(const Value: TAutomationExecutionFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TAutomationExecutionFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TAutomationExecutionFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TAutomationExecutionFilter = class
  strict private
    FKey: Nullable<TAutomationExecutionFilterKey>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TAutomationExecutionFilterKey;
    procedure SetKey(const Value: TAutomationExecutionFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TAutomationExecutionFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TAutomationExecutionFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TAutomationExecutionFilter }

constructor TAutomationExecutionFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TAutomationExecutionFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TAutomationExecutionFilter.Obj: TAutomationExecutionFilter;
begin
  Result := Self;
end;

function TAutomationExecutionFilter.GetKey: TAutomationExecutionFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAutomationExecutionFilter.SetKey(const Value: TAutomationExecutionFilterKey);
begin
  FKey := Value;
end;

function TAutomationExecutionFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAutomationExecutionFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TAutomationExecutionFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TAutomationExecutionFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TAutomationExecutionFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TAutomationExecutionFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
