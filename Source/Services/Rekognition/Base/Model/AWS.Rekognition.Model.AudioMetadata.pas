unit AWS.Rekognition.Model.AudioMetadata;

interface

uses
  Bcl.Types.Nullable;

type
  TAudioMetadata = class;
  
  IAudioMetadata = interface
    function GetCodec: string;
    procedure SetCodec(const Value: string);
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetNumberOfChannels: Int64;
    procedure SetNumberOfChannels(const Value: Int64);
    function GetSampleRate: Int64;
    procedure SetSampleRate(const Value: Int64);
    function Obj: TAudioMetadata;
    function IsSetCodec: Boolean;
    function IsSetDurationMillis: Boolean;
    function IsSetNumberOfChannels: Boolean;
    function IsSetSampleRate: Boolean;
    property Codec: string read GetCodec write SetCodec;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property NumberOfChannels: Int64 read GetNumberOfChannels write SetNumberOfChannels;
    property SampleRate: Int64 read GetSampleRate write SetSampleRate;
  end;
  
  TAudioMetadata = class
  strict private
    FCodec: Nullable<string>;
    FDurationMillis: Nullable<Int64>;
    FNumberOfChannels: Nullable<Int64>;
    FSampleRate: Nullable<Int64>;
    function GetCodec: string;
    procedure SetCodec(const Value: string);
    function GetDurationMillis: Int64;
    procedure SetDurationMillis(const Value: Int64);
    function GetNumberOfChannels: Int64;
    procedure SetNumberOfChannels(const Value: Int64);
    function GetSampleRate: Int64;
    procedure SetSampleRate(const Value: Int64);
  strict protected
    function Obj: TAudioMetadata;
  public
    function IsSetCodec: Boolean;
    function IsSetDurationMillis: Boolean;
    function IsSetNumberOfChannels: Boolean;
    function IsSetSampleRate: Boolean;
    property Codec: string read GetCodec write SetCodec;
    property DurationMillis: Int64 read GetDurationMillis write SetDurationMillis;
    property NumberOfChannels: Int64 read GetNumberOfChannels write SetNumberOfChannels;
    property SampleRate: Int64 read GetSampleRate write SetSampleRate;
  end;
  
implementation

{ TAudioMetadata }

function TAudioMetadata.Obj: TAudioMetadata;
begin
  Result := Self;
end;

function TAudioMetadata.GetCodec: string;
begin
  Result := FCodec.ValueOrDefault;
end;

procedure TAudioMetadata.SetCodec(const Value: string);
begin
  FCodec := Value;
end;

function TAudioMetadata.IsSetCodec: Boolean;
begin
  Result := FCodec.HasValue;
end;

function TAudioMetadata.GetDurationMillis: Int64;
begin
  Result := FDurationMillis.ValueOrDefault;
end;

procedure TAudioMetadata.SetDurationMillis(const Value: Int64);
begin
  FDurationMillis := Value;
end;

function TAudioMetadata.IsSetDurationMillis: Boolean;
begin
  Result := FDurationMillis.HasValue;
end;

function TAudioMetadata.GetNumberOfChannels: Int64;
begin
  Result := FNumberOfChannels.ValueOrDefault;
end;

procedure TAudioMetadata.SetNumberOfChannels(const Value: Int64);
begin
  FNumberOfChannels := Value;
end;

function TAudioMetadata.IsSetNumberOfChannels: Boolean;
begin
  Result := FNumberOfChannels.HasValue;
end;

function TAudioMetadata.GetSampleRate: Int64;
begin
  Result := FSampleRate.ValueOrDefault;
end;

procedure TAudioMetadata.SetSampleRate(const Value: Int64);
begin
  FSampleRate := Value;
end;

function TAudioMetadata.IsSetSampleRate: Boolean;
begin
  Result := FSampleRate.HasValue;
end;

end.
