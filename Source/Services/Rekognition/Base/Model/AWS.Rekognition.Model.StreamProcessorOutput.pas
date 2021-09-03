unit AWS.Rekognition.Model.StreamProcessorOutput;

interface

uses
  AWS.Rekognition.Model.KinesisDataStream;

type
  TStreamProcessorOutput = class;
  
  IStreamProcessorOutput = interface
    function GetKinesisDataStream: TKinesisDataStream;
    procedure SetKinesisDataStream(const Value: TKinesisDataStream);
    function GetKeepKinesisDataStream: Boolean;
    procedure SetKeepKinesisDataStream(const Value: Boolean);
    function Obj: TStreamProcessorOutput;
    function IsSetKinesisDataStream: Boolean;
    property KinesisDataStream: TKinesisDataStream read GetKinesisDataStream write SetKinesisDataStream;
    property KeepKinesisDataStream: Boolean read GetKeepKinesisDataStream write SetKeepKinesisDataStream;
  end;
  
  TStreamProcessorOutput = class
  strict private
    FKinesisDataStream: TKinesisDataStream;
    FKeepKinesisDataStream: Boolean;
    function GetKinesisDataStream: TKinesisDataStream;
    procedure SetKinesisDataStream(const Value: TKinesisDataStream);
    function GetKeepKinesisDataStream: Boolean;
    procedure SetKeepKinesisDataStream(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorOutput;
  public
    destructor Destroy; override;
    function IsSetKinesisDataStream: Boolean;
    property KinesisDataStream: TKinesisDataStream read GetKinesisDataStream write SetKinesisDataStream;
    property KeepKinesisDataStream: Boolean read GetKeepKinesisDataStream write SetKeepKinesisDataStream;
  end;
  
implementation

{ TStreamProcessorOutput }

destructor TStreamProcessorOutput.Destroy;
begin
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

end.
