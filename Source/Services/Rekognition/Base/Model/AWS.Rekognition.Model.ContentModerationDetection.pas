unit AWS.Rekognition.Model.ContentModerationDetection;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.ModerationLabel;

type
  TContentModerationDetection = class;
  
  IContentModerationDetection = interface
    function GetModerationLabel: TModerationLabel;
    procedure SetModerationLabel(const Value: TModerationLabel);
    function GetKeepModerationLabel: Boolean;
    procedure SetKeepModerationLabel(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TContentModerationDetection;
    function IsSetModerationLabel: Boolean;
    function IsSetTimestamp: Boolean;
    property ModerationLabel: TModerationLabel read GetModerationLabel write SetModerationLabel;
    property KeepModerationLabel: Boolean read GetKeepModerationLabel write SetKeepModerationLabel;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TContentModerationDetection = class
  strict private
    FModerationLabel: TModerationLabel;
    FKeepModerationLabel: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetModerationLabel: TModerationLabel;
    procedure SetModerationLabel(const Value: TModerationLabel);
    function GetKeepModerationLabel: Boolean;
    procedure SetKeepModerationLabel(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TContentModerationDetection;
  public
    destructor Destroy; override;
    function IsSetModerationLabel: Boolean;
    function IsSetTimestamp: Boolean;
    property ModerationLabel: TModerationLabel read GetModerationLabel write SetModerationLabel;
    property KeepModerationLabel: Boolean read GetKeepModerationLabel write SetKeepModerationLabel;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TContentModerationDetection }

destructor TContentModerationDetection.Destroy;
begin
  ModerationLabel := nil;
  inherited;
end;

function TContentModerationDetection.Obj: TContentModerationDetection;
begin
  Result := Self;
end;

function TContentModerationDetection.GetModerationLabel: TModerationLabel;
begin
  Result := FModerationLabel;
end;

procedure TContentModerationDetection.SetModerationLabel(const Value: TModerationLabel);
begin
  if FModerationLabel <> Value then
  begin
    if not KeepModerationLabel then
      FModerationLabel.Free;
    FModerationLabel := Value;
  end;
end;

function TContentModerationDetection.GetKeepModerationLabel: Boolean;
begin
  Result := FKeepModerationLabel;
end;

procedure TContentModerationDetection.SetKeepModerationLabel(const Value: Boolean);
begin
  FKeepModerationLabel := Value;
end;

function TContentModerationDetection.IsSetModerationLabel: Boolean;
begin
  Result := FModerationLabel <> nil;
end;

function TContentModerationDetection.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TContentModerationDetection.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TContentModerationDetection.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
