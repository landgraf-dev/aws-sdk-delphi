unit AWS.SSM.Model.CompliantSummary;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.SeveritySummary;

type
  TCompliantSummary = class;
  
  ICompliantSummary = interface
    function GetCompliantCount: Integer;
    procedure SetCompliantCount(const Value: Integer);
    function GetSeveritySummary: TSeveritySummary;
    procedure SetSeveritySummary(const Value: TSeveritySummary);
    function GetKeepSeveritySummary: Boolean;
    procedure SetKeepSeveritySummary(const Value: Boolean);
    function Obj: TCompliantSummary;
    function IsSetCompliantCount: Boolean;
    function IsSetSeveritySummary: Boolean;
    property CompliantCount: Integer read GetCompliantCount write SetCompliantCount;
    property SeveritySummary: TSeveritySummary read GetSeveritySummary write SetSeveritySummary;
    property KeepSeveritySummary: Boolean read GetKeepSeveritySummary write SetKeepSeveritySummary;
  end;
  
  TCompliantSummary = class
  strict private
    FCompliantCount: Nullable<Integer>;
    FSeveritySummary: TSeveritySummary;
    FKeepSeveritySummary: Boolean;
    function GetCompliantCount: Integer;
    procedure SetCompliantCount(const Value: Integer);
    function GetSeveritySummary: TSeveritySummary;
    procedure SetSeveritySummary(const Value: TSeveritySummary);
    function GetKeepSeveritySummary: Boolean;
    procedure SetKeepSeveritySummary(const Value: Boolean);
  strict protected
    function Obj: TCompliantSummary;
  public
    destructor Destroy; override;
    function IsSetCompliantCount: Boolean;
    function IsSetSeveritySummary: Boolean;
    property CompliantCount: Integer read GetCompliantCount write SetCompliantCount;
    property SeveritySummary: TSeveritySummary read GetSeveritySummary write SetSeveritySummary;
    property KeepSeveritySummary: Boolean read GetKeepSeveritySummary write SetKeepSeveritySummary;
  end;
  
implementation

{ TCompliantSummary }

destructor TCompliantSummary.Destroy;
begin
  SeveritySummary := nil;
  inherited;
end;

function TCompliantSummary.Obj: TCompliantSummary;
begin
  Result := Self;
end;

function TCompliantSummary.GetCompliantCount: Integer;
begin
  Result := FCompliantCount.ValueOrDefault;
end;

procedure TCompliantSummary.SetCompliantCount(const Value: Integer);
begin
  FCompliantCount := Value;
end;

function TCompliantSummary.IsSetCompliantCount: Boolean;
begin
  Result := FCompliantCount.HasValue;
end;

function TCompliantSummary.GetSeveritySummary: TSeveritySummary;
begin
  Result := FSeveritySummary;
end;

procedure TCompliantSummary.SetSeveritySummary(const Value: TSeveritySummary);
begin
  if FSeveritySummary <> Value then
  begin
    if not KeepSeveritySummary then
      FSeveritySummary.Free;
    FSeveritySummary := Value;
  end;
end;

function TCompliantSummary.GetKeepSeveritySummary: Boolean;
begin
  Result := FKeepSeveritySummary;
end;

procedure TCompliantSummary.SetKeepSeveritySummary(const Value: Boolean);
begin
  FKeepSeveritySummary := Value;
end;

function TCompliantSummary.IsSetSeveritySummary: Boolean;
begin
  Result := FSeveritySummary <> nil;
end;

end.
