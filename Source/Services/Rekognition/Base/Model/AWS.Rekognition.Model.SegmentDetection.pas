unit AWS.Rekognition.Model.SegmentDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.ShotSegment, 
  AWS.Rekognition.Model.TechnicalCueSegment, 
  AWS.Rekognition.Enums;

type
  TSegmentDetection = class;
  
  ISegmentDetection = interface
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetDurationSMPTE: string;
    procedure SetDurationSMPTE(const Value: string);
    function GetEndTimecodeSMPTE: string;
    procedure SetEndTimecodeSMPTE(const Value: string);
    function GetEndTimestampMillis: Int64;
    procedure SetEndTimestampMillis(const Value: Int64);
    function GetShotSegment: TShotSegment;
    procedure SetShotSegment(const Value: TShotSegment);
    function GetKeepShotSegment: Boolean;
    procedure SetKeepShotSegment(const Value: Boolean);
    function GetStartTimecodeSMPTE: string;
    procedure SetStartTimecodeSMPTE(const Value: string);
    function GetStartTimestampMillis: Int64;
    procedure SetStartTimestampMillis(const Value: Int64);
    function GetTechnicalCueSegment: TTechnicalCueSegment;
    procedure SetTechnicalCueSegment(const Value: TTechnicalCueSegment);
    function GetKeepTechnicalCueSegment: Boolean;
    procedure SetKeepTechnicalCueSegment(const Value: Boolean);
    function GetType: TSegmentType;
    procedure SetType(const Value: TSegmentType);
    function Obj: TSegmentDetection;
    function IsSetDurationMillis: Boolean;
    function IsSetDurationSMPTE: Boolean;
    function IsSetEndTimecodeSMPTE: Boolean;
    function IsSetEndTimestampMillis: Boolean;
    function IsSetShotSegment: Boolean;
    function IsSetStartTimecodeSMPTE: Boolean;
    function IsSetStartTimestampMillis: Boolean;
    function IsSetTechnicalCueSegment: Boolean;
    function IsSetType: Boolean;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property DurationSMPTE: string read GetDurationSMPTE write SetDurationSMPTE;
    property EndTimecodeSMPTE: string read GetEndTimecodeSMPTE write SetEndTimecodeSMPTE;
    property EndTimestampMillis: Int64 read GetEndTimestampMillis write SetEndTimestampMillis;
    property ShotSegment: TShotSegment read GetShotSegment write SetShotSegment;
    property KeepShotSegment: Boolean read GetKeepShotSegment write SetKeepShotSegment;
    property StartTimecodeSMPTE: string read GetStartTimecodeSMPTE write SetStartTimecodeSMPTE;
    property StartTimestampMillis: Int64 read GetStartTimestampMillis write SetStartTimestampMillis;
    property TechnicalCueSegment: TTechnicalCueSegment read GetTechnicalCueSegment write SetTechnicalCueSegment;
    property KeepTechnicalCueSegment: Boolean read GetKeepTechnicalCueSegment write SetKeepTechnicalCueSegment;
    property &Type: TSegmentType read GetType write SetType;
  end;
  
  TSegmentDetection = class
  strict private
    FDurationMillis: Nullable<Int64>;
    FDurationSMPTE: Nullable<string>;
    FEndTimecodeSMPTE: Nullable<string>;
    FEndTimestampMillis: Nullable<Int64>;
    FShotSegment: TShotSegment;
    FKeepShotSegment: Boolean;
    FStartTimecodeSMPTE: Nullable<string>;
    FStartTimestampMillis: Nullable<Int64>;
    FTechnicalCueSegment: TTechnicalCueSegment;
    FKeepTechnicalCueSegment: Boolean;
    FType: Nullable<TSegmentType>;
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetDurationSMPTE: string;
    procedure SetDurationSMPTE(const Value: string);
    function GetEndTimecodeSMPTE: string;
    procedure SetEndTimecodeSMPTE(const Value: string);
    function GetEndTimestampMillis: Int64;
    procedure SetEndTimestampMillis(const Value: Int64);
    function GetShotSegment: TShotSegment;
    procedure SetShotSegment(const Value: TShotSegment);
    function GetKeepShotSegment: Boolean;
    procedure SetKeepShotSegment(const Value: Boolean);
    function GetStartTimecodeSMPTE: string;
    procedure SetStartTimecodeSMPTE(const Value: string);
    function GetStartTimestampMillis: Int64;
    procedure SetStartTimestampMillis(const Value: Int64);
    function GetTechnicalCueSegment: TTechnicalCueSegment;
    procedure SetTechnicalCueSegment(const Value: TTechnicalCueSegment);
    function GetKeepTechnicalCueSegment: Boolean;
    procedure SetKeepTechnicalCueSegment(const Value: Boolean);
    function GetType: TSegmentType;
    procedure SetType(const Value: TSegmentType);
  strict protected
    function Obj: TSegmentDetection;
  public
    destructor Destroy; override;
    function IsSetDurationMillis: Boolean;
    function IsSetDurationSMPTE: Boolean;
    function IsSetEndTimecodeSMPTE: Boolean;
    function IsSetEndTimestampMillis: Boolean;
    function IsSetShotSegment: Boolean;
    function IsSetStartTimecodeSMPTE: Boolean;
    function IsSetStartTimestampMillis: Boolean;
    function IsSetTechnicalCueSegment: Boolean;
    function IsSetType: Boolean;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property DurationSMPTE: string read GetDurationSMPTE write SetDurationSMPTE;
    property EndTimecodeSMPTE: string read GetEndTimecodeSMPTE write SetEndTimecodeSMPTE;
    property EndTimestampMillis: Int64 read GetEndTimestampMillis write SetEndTimestampMillis;
    property ShotSegment: TShotSegment read GetShotSegment write SetShotSegment;
    property KeepShotSegment: Boolean read GetKeepShotSegment write SetKeepShotSegment;
    property StartTimecodeSMPTE: string read GetStartTimecodeSMPTE write SetStartTimecodeSMPTE;
    property StartTimestampMillis: Int64 read GetStartTimestampMillis write SetStartTimestampMillis;
    property TechnicalCueSegment: TTechnicalCueSegment read GetTechnicalCueSegment write SetTechnicalCueSegment;
    property KeepTechnicalCueSegment: Boolean read GetKeepTechnicalCueSegment write SetKeepTechnicalCueSegment;
    property &Type: TSegmentType read GetType write SetType;
  end;
  
implementation

{ TSegmentDetection }

destructor TSegmentDetection.Destroy;
begin
  TechnicalCueSegment := nil;
  ShotSegment := nil;
  inherited;
end;

function TSegmentDetection.Obj: TSegmentDetection;
begin
  Result := Self;
end;

function TSegmentDetection.GetDurationMillis: Int64;
begin
  Result := FDurationMillis.ValueOrDefault;
end;

procedure TSegmentDetection.SetDurationMillis(const Value: Int64);
begin
  FDurationMillis := Value;
end;

function TSegmentDetection.IsSetDurationMillis: Boolean;
begin
  Result := FDurationMillis.HasValue;
end;

function TSegmentDetection.GetDurationSMPTE: string;
begin
  Result := FDurationSMPTE.ValueOrDefault;
end;

procedure TSegmentDetection.SetDurationSMPTE(const Value: string);
begin
  FDurationSMPTE := Value;
end;

function TSegmentDetection.IsSetDurationSMPTE: Boolean;
begin
  Result := FDurationSMPTE.HasValue;
end;

function TSegmentDetection.GetEndTimecodeSMPTE: string;
begin
  Result := FEndTimecodeSMPTE.ValueOrDefault;
end;

procedure TSegmentDetection.SetEndTimecodeSMPTE(const Value: string);
begin
  FEndTimecodeSMPTE := Value;
end;

function TSegmentDetection.IsSetEndTimecodeSMPTE: Boolean;
begin
  Result := FEndTimecodeSMPTE.HasValue;
end;

function TSegmentDetection.GetEndTimestampMillis: Int64;
begin
  Result := FEndTimestampMillis.ValueOrDefault;
end;

procedure TSegmentDetection.SetEndTimestampMillis(const Value: Int64);
begin
  FEndTimestampMillis := Value;
end;

function TSegmentDetection.IsSetEndTimestampMillis: Boolean;
begin
  Result := FEndTimestampMillis.HasValue;
end;

function TSegmentDetection.GetShotSegment: TShotSegment;
begin
  Result := FShotSegment;
end;

procedure TSegmentDetection.SetShotSegment(const Value: TShotSegment);
begin
  if FShotSegment <> Value then
  begin
    if not KeepShotSegment then
      FShotSegment.Free;
    FShotSegment := Value;
  end;
end;

function TSegmentDetection.GetKeepShotSegment: Boolean;
begin
  Result := FKeepShotSegment;
end;

procedure TSegmentDetection.SetKeepShotSegment(const Value: Boolean);
begin
  FKeepShotSegment := Value;
end;

function TSegmentDetection.IsSetShotSegment: Boolean;
begin
  Result := FShotSegment <> nil;
end;

function TSegmentDetection.GetStartTimecodeSMPTE: string;
begin
  Result := FStartTimecodeSMPTE.ValueOrDefault;
end;

procedure TSegmentDetection.SetStartTimecodeSMPTE(const Value: string);
begin
  FStartTimecodeSMPTE := Value;
end;

function TSegmentDetection.IsSetStartTimecodeSMPTE: Boolean;
begin
  Result := FStartTimecodeSMPTE.HasValue;
end;

function TSegmentDetection.GetStartTimestampMillis: Int64;
begin
  Result := FStartTimestampMillis.ValueOrDefault;
end;

procedure TSegmentDetection.SetStartTimestampMillis(const Value: Int64);
begin
  FStartTimestampMillis := Value;
end;

function TSegmentDetection.IsSetStartTimestampMillis: Boolean;
begin
  Result := FStartTimestampMillis.HasValue;
end;

function TSegmentDetection.GetTechnicalCueSegment: TTechnicalCueSegment;
begin
  Result := FTechnicalCueSegment;
end;

procedure TSegmentDetection.SetTechnicalCueSegment(const Value: TTechnicalCueSegment);
begin
  if FTechnicalCueSegment <> Value then
  begin
    if not KeepTechnicalCueSegment then
      FTechnicalCueSegment.Free;
    FTechnicalCueSegment := Value;
  end;
end;

function TSegmentDetection.GetKeepTechnicalCueSegment: Boolean;
begin
  Result := FKeepTechnicalCueSegment;
end;

procedure TSegmentDetection.SetKeepTechnicalCueSegment(const Value: Boolean);
begin
  FKeepTechnicalCueSegment := Value;
end;

function TSegmentDetection.IsSetTechnicalCueSegment: Boolean;
begin
  Result := FTechnicalCueSegment <> nil;
end;

function TSegmentDetection.GetType: TSegmentType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TSegmentDetection.SetType(const Value: TSegmentType);
begin
  FType := Value;
end;

function TSegmentDetection.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
