unit AWS.SSM.Model.NonCompliantSummary;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.SeveritySummary;

type
  TNonCompliantSummary = class;
  
  INonCompliantSummary = interface
    function GetNonCompliantCount: Integer;
    procedure SetNonCompliantCount(const Value: Integer);
    function GetSeveritySummary: TSeveritySummary;
    procedure SetSeveritySummary(const Value: TSeveritySummary);
    function GetKeepSeveritySummary: Boolean;
    procedure SetKeepSeveritySummary(const Value: Boolean);
    function Obj: TNonCompliantSummary;
    function IsSetNonCompliantCount: Boolean;
    function IsSetSeveritySummary: Boolean;
    property NonCompliantCount: Integer read GetNonCompliantCount write SetNonCompliantCount;
    property SeveritySummary: TSeveritySummary read GetSeveritySummary write SetSeveritySummary;
    property KeepSeveritySummary: Boolean read GetKeepSeveritySummary write SetKeepSeveritySummary;
  end;
  
  TNonCompliantSummary = class
  strict private
    FNonCompliantCount: Nullable<Integer>;
    FSeveritySummary: TSeveritySummary;
    FKeepSeveritySummary: Boolean;
    function GetNonCompliantCount: Integer;
    procedure SetNonCompliantCount(const Value: Integer);
    function GetSeveritySummary: TSeveritySummary;
    procedure SetSeveritySummary(const Value: TSeveritySummary);
    function GetKeepSeveritySummary: Boolean;
    procedure SetKeepSeveritySummary(const Value: Boolean);
  strict protected
    function Obj: TNonCompliantSummary;
  public
    destructor Destroy; override;
    function IsSetNonCompliantCount: Boolean;
    function IsSetSeveritySummary: Boolean;
    property NonCompliantCount: Integer read GetNonCompliantCount write SetNonCompliantCount;
    property SeveritySummary: TSeveritySummary read GetSeveritySummary write SetSeveritySummary;
    property KeepSeveritySummary: Boolean read GetKeepSeveritySummary write SetKeepSeveritySummary;
  end;
  
implementation

{ TNonCompliantSummary }

destructor TNonCompliantSummary.Destroy;
begin
  SeveritySummary := nil;
  inherited;
end;

function TNonCompliantSummary.Obj: TNonCompliantSummary;
begin
  Result := Self;
end;

function TNonCompliantSummary.GetNonCompliantCount: Integer;
begin
  Result := FNonCompliantCount.ValueOrDefault;
end;

procedure TNonCompliantSummary.SetNonCompliantCount(const Value: Integer);
begin
  FNonCompliantCount := Value;
end;

function TNonCompliantSummary.IsSetNonCompliantCount: Boolean;
begin
  Result := FNonCompliantCount.HasValue;
end;

function TNonCompliantSummary.GetSeveritySummary: TSeveritySummary;
begin
  Result := FSeveritySummary;
end;

procedure TNonCompliantSummary.SetSeveritySummary(const Value: TSeveritySummary);
begin
  if FSeveritySummary <> Value then
  begin
    if not KeepSeveritySummary then
      FSeveritySummary.Free;
    FSeveritySummary := Value;
  end;
end;

function TNonCompliantSummary.GetKeepSeveritySummary: Boolean;
begin
  Result := FKeepSeveritySummary;
end;

procedure TNonCompliantSummary.SetKeepSeveritySummary(const Value: Boolean);
begin
  FKeepSeveritySummary := Value;
end;

function TNonCompliantSummary.IsSetSeveritySummary: Boolean;
begin
  Result := FSeveritySummary <> nil;
end;

end.
