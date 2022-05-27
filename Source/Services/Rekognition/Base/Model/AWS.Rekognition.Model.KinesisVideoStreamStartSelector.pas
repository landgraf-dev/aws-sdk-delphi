unit AWS.Rekognition.Model.KinesisVideoStreamStartSelector;

interface

uses
  Bcl.Types.Nullable;

type
  TKinesisVideoStreamStartSelector = class;
  
  IKinesisVideoStreamStartSelector = interface
    function GetFragmentNumber: string;
    procedure SetFragmentNumber(const Value: string);
    function GetProducerTimestamp: Int64;
    procedure SetProducerTimestamp(const Value: Int64);
    function Obj: TKinesisVideoStreamStartSelector;
    function IsSetFragmentNumber: Boolean;
    function IsSetProducerTimestamp: Boolean;
    property FragmentNumber: string read GetFragmentNumber write SetFragmentNumber;
    property ProducerTimestamp: Int64 read GetProducerTimestamp write SetProducerTimestamp;
  end;
  
  TKinesisVideoStreamStartSelector = class
  strict private
    FFragmentNumber: Nullable<string>;
    FProducerTimestamp: Nullable<Int64>;
    function GetFragmentNumber: string;
    procedure SetFragmentNumber(const Value: string);
    function GetProducerTimestamp: Int64;
    procedure SetProducerTimestamp(const Value: Int64);
  strict protected
    function Obj: TKinesisVideoStreamStartSelector;
  public
    function IsSetFragmentNumber: Boolean;
    function IsSetProducerTimestamp: Boolean;
    property FragmentNumber: string read GetFragmentNumber write SetFragmentNumber;
    property ProducerTimestamp: Int64 read GetProducerTimestamp write SetProducerTimestamp;
  end;
  
implementation

{ TKinesisVideoStreamStartSelector }

function TKinesisVideoStreamStartSelector.Obj: TKinesisVideoStreamStartSelector;
begin
  Result := Self;
end;

function TKinesisVideoStreamStartSelector.GetFragmentNumber: string;
begin
  Result := FFragmentNumber.ValueOrDefault;
end;

procedure TKinesisVideoStreamStartSelector.SetFragmentNumber(const Value: string);
begin
  FFragmentNumber := Value;
end;

function TKinesisVideoStreamStartSelector.IsSetFragmentNumber: Boolean;
begin
  Result := FFragmentNumber.HasValue;
end;

function TKinesisVideoStreamStartSelector.GetProducerTimestamp: Int64;
begin
  Result := FProducerTimestamp.ValueOrDefault;
end;

procedure TKinesisVideoStreamStartSelector.SetProducerTimestamp(const Value: Int64);
begin
  FProducerTimestamp := Value;
end;

function TKinesisVideoStreamStartSelector.IsSetProducerTimestamp: Boolean;
begin
  Result := FProducerTimestamp.HasValue;
end;

end.
