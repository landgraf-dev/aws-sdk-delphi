unit AWS.Textract.Model.AnalyzeIDDetections;

interface

uses
  AWS.Nullable, 
  AWS.Textract.Model.NormalizedValue;

type
  TAnalyzeIDDetections = class;
  
  IAnalyzeIDDetections = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetNormalizedValue: TNormalizedValue;
    procedure SetNormalizedValue(const Value: TNormalizedValue);
    function GetKeepNormalizedValue: Boolean;
    procedure SetKeepNormalizedValue(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TAnalyzeIDDetections;
    function IsSetConfidence: Boolean;
    function IsSetNormalizedValue: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property NormalizedValue: TNormalizedValue read GetNormalizedValue write SetNormalizedValue;
    property KeepNormalizedValue: Boolean read GetKeepNormalizedValue write SetKeepNormalizedValue;
    property Text: string read GetText write SetText;
  end;
  
  TAnalyzeIDDetections = class
  strict private
    FConfidence: Nullable<Double>;
    FNormalizedValue: TNormalizedValue;
    FKeepNormalizedValue: Boolean;
    FText: Nullable<string>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetNormalizedValue: TNormalizedValue;
    procedure SetNormalizedValue(const Value: TNormalizedValue);
    function GetKeepNormalizedValue: Boolean;
    procedure SetKeepNormalizedValue(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TAnalyzeIDDetections;
  public
    destructor Destroy; override;
    function IsSetConfidence: Boolean;
    function IsSetNormalizedValue: Boolean;
    function IsSetText: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property NormalizedValue: TNormalizedValue read GetNormalizedValue write SetNormalizedValue;
    property KeepNormalizedValue: Boolean read GetKeepNormalizedValue write SetKeepNormalizedValue;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TAnalyzeIDDetections }

destructor TAnalyzeIDDetections.Destroy;
begin
  NormalizedValue := nil;
  inherited;
end;

function TAnalyzeIDDetections.Obj: TAnalyzeIDDetections;
begin
  Result := Self;
end;

function TAnalyzeIDDetections.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TAnalyzeIDDetections.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TAnalyzeIDDetections.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TAnalyzeIDDetections.GetNormalizedValue: TNormalizedValue;
begin
  Result := FNormalizedValue;
end;

procedure TAnalyzeIDDetections.SetNormalizedValue(const Value: TNormalizedValue);
begin
  if FNormalizedValue <> Value then
  begin
    if not KeepNormalizedValue then
      FNormalizedValue.Free;
    FNormalizedValue := Value;
  end;
end;

function TAnalyzeIDDetections.GetKeepNormalizedValue: Boolean;
begin
  Result := FKeepNormalizedValue;
end;

procedure TAnalyzeIDDetections.SetKeepNormalizedValue(const Value: Boolean);
begin
  FKeepNormalizedValue := Value;
end;

function TAnalyzeIDDetections.IsSetNormalizedValue: Boolean;
begin
  Result := FNormalizedValue <> nil;
end;

function TAnalyzeIDDetections.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TAnalyzeIDDetections.SetText(const Value: string);
begin
  FText := Value;
end;

function TAnalyzeIDDetections.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
