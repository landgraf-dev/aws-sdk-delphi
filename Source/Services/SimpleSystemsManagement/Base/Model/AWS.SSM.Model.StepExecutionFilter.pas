unit AWS.SSM.Model.StepExecutionFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TStepExecutionFilter = class;
  
  IStepExecutionFilter = interface
    function GetKey: TStepExecutionFilterKey;
    procedure SetKey(const Value: TStepExecutionFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
    function Obj: TStepExecutionFilter;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TStepExecutionFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
  TStepExecutionFilter = class
  strict private
    FKey: Nullable<TStepExecutionFilterKey>;
    FValues: TList<string>;
    FKeepValues: Boolean;
    function GetKey: TStepExecutionFilterKey;
    procedure SetKey(const Value: TStepExecutionFilterKey);
    function GetValues: TList<string>;
    procedure SetValues(const Value: TList<string>);
    function GetKeepValues: Boolean;
    procedure SetKeepValues(const Value: Boolean);
  strict protected
    function Obj: TStepExecutionFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKey: Boolean;
    function IsSetValues: Boolean;
    property Key: TStepExecutionFilterKey read GetKey write SetKey;
    property Values: TList<string> read GetValues write SetValues;
    property KeepValues: Boolean read GetKeepValues write SetKeepValues;
  end;
  
implementation

{ TStepExecutionFilter }

constructor TStepExecutionFilter.Create;
begin
  inherited;
  FValues := TList<string>.Create;
end;

destructor TStepExecutionFilter.Destroy;
begin
  Values := nil;
  inherited;
end;

function TStepExecutionFilter.Obj: TStepExecutionFilter;
begin
  Result := Self;
end;

function TStepExecutionFilter.GetKey: TStepExecutionFilterKey;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TStepExecutionFilter.SetKey(const Value: TStepExecutionFilterKey);
begin
  FKey := Value;
end;

function TStepExecutionFilter.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TStepExecutionFilter.GetValues: TList<string>;
begin
  Result := FValues;
end;

procedure TStepExecutionFilter.SetValues(const Value: TList<string>);
begin
  if FValues <> Value then
  begin
    if not KeepValues then
      FValues.Free;
    FValues := Value;
  end;
end;

function TStepExecutionFilter.GetKeepValues: Boolean;
begin
  Result := FKeepValues;
end;

procedure TStepExecutionFilter.SetKeepValues(const Value: Boolean);
begin
  FKeepValues := Value;
end;

function TStepExecutionFilter.IsSetValues: Boolean;
begin
  Result := (FValues <> nil) and (FValues.Count > 0);
end;

end.
