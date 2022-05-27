unit AWS.Rekognition.Model.StreamProcessorOutput;

interface

uses
  AWS.Rekognition.Model.KinesisDataStream, 
  AWS.Rekognition.Model.S3Destination;

type
  TStreamProcessorOutput = class;
  
  IStreamProcessorOutput = interface
    function GetKinesisDataStream: TKinesisDataStream;
    procedure SetKinesisDataStream(const Value: TKinesisDataStream);
    function GetKeepKinesisDataStream: Boolean;
    procedure SetKeepKinesisDataStream(const Value: Boolean);
    function GetS3Destination: TS3Destination;
    procedure SetS3Destination(const Value: TS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
    function Obj: TStreamProcessorOutput;
    function IsSetKinesisDataStream: Boolean;
    function IsSetS3Destination: Boolean;
    property KinesisDataStream: TKinesisDataStream read GetKinesisDataStream write SetKinesisDataStream;
    property KeepKinesisDataStream: Boolean read GetKeepKinesisDataStream write SetKeepKinesisDataStream;
    property S3Destination: TS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
  end;
  
  TStreamProcessorOutput = class
  strict private
    FKinesisDataStream: TKinesisDataStream;
    FKeepKinesisDataStream: Boolean;
    FS3Destination: TS3Destination;
    FKeepS3Destination: Boolean;
    function GetKinesisDataStream: TKinesisDataStream;
    procedure SetKinesisDataStream(const Value: TKinesisDataStream);
    function GetKeepKinesisDataStream: Boolean;
    procedure SetKeepKinesisDataStream(const Value: Boolean);
    function GetS3Destination: TS3Destination;
    procedure SetS3Destination(const Value: TS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorOutput;
  public
    destructor Destroy; override;
    function IsSetKinesisDataStream: Boolean;
    function IsSetS3Destination: Boolean;
    property KinesisDataStream: TKinesisDataStream read GetKinesisDataStream write SetKinesisDataStream;
    property KeepKinesisDataStream: Boolean read GetKeepKinesisDataStream write SetKeepKinesisDataStream;
    property S3Destination: TS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
  end;
  
implementation

{ TStreamProcessorOutput }

destructor TStreamProcessorOutput.Destroy;
begin
  S3Destination := nil;
  KinesisDataStream := nil;
  inherited;
end;

function TStreamProcessorOutput.Obj: TStreamProcessorOutput;
begin
  Result := Self;
end;

function TStreamProcessorOutput.GetKinesisDataStream: TKinesisDataStream;
begin
  Result := FKinesisDataStream;
end;

procedure TStreamProcessorOutput.SetKinesisDataStream(const Value: TKinesisDataStream);
begin
  if FKinesisDataStream <> Value then
  begin
    if not KeepKinesisDataStream then
      FKinesisDataStream.Free;
    FKinesisDataStream := Value;
  end;
end;

function TStreamProcessorOutput.GetKeepKinesisDataStream: Boolean;
begin
  Result := FKeepKinesisDataStream;
end;

procedure TStreamProcessorOutput.SetKeepKinesisDataStream(const Value: Boolean);
begin
  FKeepKinesisDataStream := Value;
end;

function TStreamProcessorOutput.IsSetKinesisDataStream: Boolean;
begin
  Result := FKinesisDataStream <> nil;
end;

function TStreamProcessorOutput.GetS3Destination: TS3Destination;
begin
  Result := FS3Destination;
end;

procedure TStreamProcessorOutput.SetS3Destination(const Value: TS3Destination);
begin
  if FS3Destination <> Value then
  begin
    if not KeepS3Destination then
      FS3Destination.Free;
    FS3Destination := Value;
  end;
end;

function TStreamProcessorOutput.GetKeepS3Destination: Boolean;
begin
  Result := FKeepS3Destination;
end;

procedure TStreamProcessorOutput.SetKeepS3Destination(const Value: Boolean);
begin
  FKeepS3Destination := Value;
end;

function TStreamProcessorOutput.IsSetS3Destination: Boolean;
begin
  Result := FS3Destination <> nil;
end;

end.
