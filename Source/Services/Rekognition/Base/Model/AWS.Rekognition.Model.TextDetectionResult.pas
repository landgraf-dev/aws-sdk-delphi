unit AWS.Rekognition.Model.TextDetectionResult;

interface

uses
  AWS.Rekognition.Model.TextDetection, 
  AWS.Nullable;

type
  TTextDetectionResult = class;
  
  ITextDetectionResult = interface
    function GetTextDetection: TTextDetection;
    procedure SetTextDetection(const Value: TTextDetection);
    function GetKeepTextDetection: Boolean;
    procedure SetKeepTextDetection(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TTextDetectionResult;
    function IsSetTextDetection: Boolean;
    function IsSetTimestamp: Boolean;
    property TextDetection: TTextDetection read GetTextDetection write SetTextDetection;
    property KeepTextDetection: Boolean read GetKeepTextDetection write SetKeepTextDetection;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TTextDetectionResult = class
  strict private
    FTextDetection: TTextDetection;
    FKeepTextDetection: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetTextDetection: TTextDetection;
    procedure SetTextDetection(const Value: TTextDetection);
    function GetKeepTextDetection: Boolean;
    procedure SetKeepTextDetection(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TTextDetectionResult;
  public
    destructor Destroy; override;
    function IsSetTextDetection: Boolean;
    function IsSetTimestamp: Boolean;
    property TextDetection: TTextDetection read GetTextDetection write SetTextDetection;
    property KeepTextDetection: Boolean read GetKeepTextDetection write SetKeepTextDetection;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TTextDetectionResult }

destructor TTextDetectionResult.Destroy;
begin
  TextDetection := nil;
  inherited;
end;

function TTextDetectionResult.Obj: TTextDetectionResult;
begin
  Result := Self;
end;

function TTextDetectionResult.GetTextDetection: TTextDetection;
begin
  Result := FTextDetection;
end;

procedure TTextDetectionResult.SetTextDetection(const Value: TTextDetection);
begin
  if FTextDetection <> Value then
  begin
    if not KeepTextDetection then
      FTextDetection.Free;
    FTextDetection := Value;
  end;
end;

function TTextDetectionResult.GetKeepTextDetection: Boolean;
begin
  Result := FKeepTextDetection;
end;

procedure TTextDetectionResult.SetKeepTextDetection(const Value: Boolean);
begin
  FKeepTextDetection := Value;
end;

function TTextDetectionResult.IsSetTextDetection: Boolean;
begin
  Result := FTextDetection <> nil;
end;

function TTextDetectionResult.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TTextDetectionResult.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TTextDetectionResult.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
