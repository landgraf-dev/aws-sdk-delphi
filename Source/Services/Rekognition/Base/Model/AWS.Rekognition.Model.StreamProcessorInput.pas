unit AWS.Rekognition.Model.StreamProcessorInput;

interface

uses
  AWS.Rekognition.Model.KinesisVideoStream;

type
  TStreamProcessorInput = class;
  
  IStreamProcessorInput = interface
    function GetKinesisVideoStream: TKinesisVideoStream;
    procedure SetKinesisVideoStream(const Value: TKinesisVideoStream);
    function GetKeepKinesisVideoStream: Boolean;
    procedure SetKeepKinesisVideoStream(const Value: Boolean);
    function Obj: TStreamProcessorInput;
    function IsSetKinesisVideoStream: Boolean;
    property KinesisVideoStream: TKinesisVideoStream read GetKinesisVideoStream write SetKinesisVideoStream;
    property KeepKinesisVideoStream: Boolean read GetKeepKinesisVideoStream write SetKeepKinesisVideoStream;
  end;
  
  TStreamProcessorInput = class
  strict private
    FKinesisVideoStream: TKinesisVideoStream;
    FKeepKinesisVideoStream: Boolean;
    function GetKinesisVideoStream: TKinesisVideoStream;
    procedure SetKinesisVideoStream(const Value: TKinesisVideoStream);
    function GetKeepKinesisVideoStream: Boolean;
    procedure SetKeepKinesisVideoStream(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorInput;
  public
    destructor Destroy; override;
    function IsSetKinesisVideoStream: Boolean;
    property KinesisVideoStream: TKinesisVideoStream read GetKinesisVideoStream write SetKinesisVideoStream;
    property KeepKinesisVideoStream: Boolean read GetKeepKinesisVideoStream write SetKeepKinesisVideoStream;
  end;
  
implementation

{ TStreamProcessorInput }

destructor TStreamProcessorInput.Destroy;
begin
  KinesisVideoStream := nil;
  inherited;
end;

function TStreamProcessorInput.Obj: TStreamProcessorInput;
begin
  Result := Self;
end;

function TStreamProcessorInput.GetKinesisVideoStream: TKinesisVideoStream;
begin
  Result := FKinesisVideoStream;
end;

procedure TStreamProcessorInput.SetKinesisVideoStream(const Value: TKinesisVideoStream);
begin
  if FKinesisVideoStream <> Value then
  begin
    if not KeepKinesisVideoStream then
      FKinesisVideoStream.Free;
    FKinesisVideoStream := Value;
  end;
end;

function TStreamProcessorInput.GetKeepKinesisVideoStream: Boolean;
begin
  Result := FKeepKinesisVideoStream;
end;

procedure TStreamProcessorInput.SetKeepKinesisVideoStream(const Value: Boolean);
begin
  FKeepKinesisVideoStream := Value;
end;

function TStreamProcessorInput.IsSetKinesisVideoStream: Boolean;
begin
  Result := FKinesisVideoStream <> nil;
end;

end.
