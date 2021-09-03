unit AWS.Rekognition.Model.VideoMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TVideoMetadata = class;
  
  IVideoMetadata = interface
    function GetCodec: string;
    procedure SetCodec(const Value: string);
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetFormat: string;
    procedure SetFormat(const Value: string);
    function GetFrameHeight: Int64;
    procedure SetFrameHeight(const Value: Int64);
    function GetFrameRate: Double;
    procedure SetFrameRate(const Value: Double);
    function GetFrameWidth: Int64;
    procedure SetFrameWidth(const Value: Int64);
    function Obj: TVideoMetadata;
    function IsSetCodec: Boolean;
    function IsSetDurationMillis: Boolean;
    function IsSetFormat: Boolean;
    function IsSetFrameHeight: Boolean;
    function IsSetFrameRate: Boolean;
    function IsSetFrameWidth: Boolean;
    property Codec: string read GetCodec write SetCodec;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property Format: string read GetFormat write SetFormat;
    property FrameHeight: Int64 read GetFrameHeight write SetFrameHeight;
    property FrameRate: Double read GetFrameRate write SetFrameRate;
    property FrameWidth: Int64 read GetFrameWidth write SetFrameWidth;
  end;
  
  TVideoMetadata = class
  strict private
    FCodec: Nullable<string>;
    FDurationMillis: Nullable<Int64>;
    FFormat: Nullable<string>;
    FFrameHeight: Nullable<Int64>;
    FFrameRate: Nullable<Double>;
    FFrameWidth: Nullable<Int64>;
    function GetCodec: string;
    procedure SetCodec(const Value: string);
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetFormat: string;
    procedure SetFormat(const Value: string);
    function GetFrameHeight: Int64;
    procedure SetFrameHeight(const Value: Int64);
    function GetFrameRate: Double;
    procedure SetFrameRate(const Value: Double);
    function GetFrameWidth: Int64;
    procedure SetFrameWidth(const Value: Int64);
  strict protected
    function Obj: TVideoMetadata;
  public
    function IsSetCodec: Boolean;
    function IsSetDurationMillis: Boolean;
    function IsSetFormat: Boolean;
    function IsSetFrameHeight: Boolean;
    function IsSetFrameRate: Boolean;
    function IsSetFrameWidth: Boolean;
    property Codec: string read GetCodec write SetCodec;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property Format: string read GetFormat write SetFormat;
    property FrameHeight: Int64 read GetFrameHeight write SetFrameHeight;
    property FrameRate: Double read GetFrameRate write SetFrameRate;
    property FrameWidth: Int64 read GetFrameWidth write SetFrameWidth;
  end;
  
implementation

{ TVideoMetadata }

function TVideoMetadata.Obj: TVideoMetadata;
begin
  Result := Self;
end;

function TVideoMetadata.GetCodec: string;
begin
  Result := FCodec.ValueOrDefault;
end;

procedure TVideoMetadata.SetCodec(const Value: string);
begin
  FCodec := Value;
end;

function TVideoMetadata.IsSetCodec: Boolean;
begin
  Result := FCodec.HasValue;
end;

function TVideoMetadata.GetDurationMillis: Int64;
begin
  Result := FDurationMillis.ValueOrDefault;
end;

procedure TVideoMetadata.SetDurationMillis(const Value: Int64);
begin
  FDurationMillis := Value;
end;

function TVideoMetadata.IsSetDurationMillis: Boolean;
begin
  Result := FDurationMillis.HasValue;
end;

function TVideoMetadata.GetFormat: string;
begin
  Result := FFormat.ValueOrDefault;
end;

procedure TVideoMetadata.SetFormat(const Value: string);
begin
  FFormat := Value;
end;

function TVideoMetadata.IsSetFormat: Boolean;
begin
  Result := FFormat.HasValue;
end;

function TVideoMetadata.GetFrameHeight: Int64;
begin
  Result := FFrameHeight.ValueOrDefault;
end;

procedure TVideoMetadata.SetFrameHeight(const Value: Int64);
begin
  FFrameHeight := Value;
end;

function TVideoMetadata.IsSetFrameHeight: Boolean;
begin
  Result := FFrameHeight.HasValue;
end;

function TVideoMetadata.GetFrameRate: Double;
begin
  Result := FFrameRate.ValueOrDefault;
end;

procedure TVideoMetadata.SetFrameRate(const Value: Double);
begin
  FFrameRate := Value;
end;

function TVideoMetadata.IsSetFrameRate: Boolean;
begin
  Result := FFrameRate.HasValue;
end;

function TVideoMetadata.GetFrameWidth: Int64;
begin
  Result := FFrameWidth.ValueOrDefault;
end;

procedure TVideoMetadata.SetFrameWidth(const Value: Int64);
begin
  FFrameWidth := Value;
end;

function TVideoMetadata.IsSetFrameWidth: Boolean;
begin
  Result := FFrameWidth.HasValue;
end;

end.
