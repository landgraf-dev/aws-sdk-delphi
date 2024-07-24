unit AWS.SSM.Model.ResolvedTargets;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable;

type
  TResolvedTargets = class;
  
  IResolvedTargets = interface
    function GetParameterValues: TList<string>;
    procedure SetParameterValues(const Value: TList<string>);
    function GetKeepParameterValues: Boolean;
    procedure SetKeepParameterValues(const Value: Boolean);
    function GetTruncated: Boolean;
    procedure SetTruncated(const Value: Boolean);
    function Obj: TResolvedTargets;
    function IsSetParameterValues: Boolean;
    function IsSetTruncated: Boolean;
    property ParameterValues: TList<string> read GetParameterValues write SetParameterValues;
    property KeepParameterValues: Boolean read GetKeepParameterValues write SetKeepParameterValues;
    property Truncated: Boolean read GetTruncated write SetTruncated;
  end;
  
  TResolvedTargets = class
  strict private
    FParameterValues: TList<string>;
    FKeepParameterValues: Boolean;
    FTruncated: Nullable<Boolean>;
    function GetParameterValues: TList<string>;
    procedure SetParameterValues(const Value: TList<string>);
    function GetKeepParameterValues: Boolean;
    procedure SetKeepParameterValues(const Value: Boolean);
    function GetTruncated: Boolean;
    procedure SetTruncated(const Value: Boolean);
  strict protected
    function Obj: TResolvedTargets;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetParameterValues: Boolean;
    function IsSetTruncated: Boolean;
    property ParameterValues: TList<string> read GetParameterValues write SetParameterValues;
    property KeepParameterValues: Boolean read GetKeepParameterValues write SetKeepParameterValues;
    property Truncated: Boolean read GetTruncated write SetTruncated;
  end;
  
implementation

{ TResolvedTargets }

constructor TResolvedTargets.Create;
begin
  inherited;
  FParameterValues := TList<string>.Create;
end;

destructor TResolvedTargets.Destroy;
begin
  ParameterValues := nil;
  inherited;
end;

function TResolvedTargets.Obj: TResolvedTargets;
begin
  Result := Self;
end;

function TResolvedTargets.GetParameterValues: TList<string>;
begin
  Result := FParameterValues;
end;

procedure TResolvedTargets.SetParameterValues(const Value: TList<string>);
begin
  if FParameterValues <> Value then
  begin
    if not KeepParameterValues then
      FParameterValues.Free;
    FParameterValues := Value;
  end;
end;

function TResolvedTargets.GetKeepParameterValues: Boolean;
begin
  Result := FKeepParameterValues;
end;

procedure TResolvedTargets.SetKeepParameterValues(const Value: Boolean);
begin
  FKeepParameterValues := Value;
end;

function TResolvedTargets.IsSetParameterValues: Boolean;
begin
  Result := (FParameterValues <> nil) and (FParameterValues.Count > 0);
end;

function TResolvedTargets.GetTruncated: Boolean;
begin
  Result := FTruncated.ValueOrDefault;
end;

procedure TResolvedTargets.SetTruncated(const Value: Boolean);
begin
  FTruncated := Value;
end;

function TResolvedTargets.IsSetTruncated: Boolean;
begin
  Result := FTruncated.HasValue;
end;

end.
