unit AWS.Rekognition.Model.StreamProcessingStartSelector;

interface

uses
  AWS.Rekognition.Model.KinesisVideoStreamStartSelector;

type
  TStreamProcessingStartSelector = class;
  
  IStreamProcessingStartSelector = interface
    function GetKVSStreamStartSelector: TKinesisVideoStreamStartSelector;
    procedure SetKVSStreamStartSelector(const Value: TKinesisVideoStreamStartSelector);
    function GetKeepKVSStreamStartSelector: Boolean;
    procedure SetKeepKVSStreamStartSelector(const Value: Boolean);
    function Obj: TStreamProcessingStartSelector;
    function IsSetKVSStreamStartSelector: Boolean;
    property KVSStreamStartSelector: TKinesisVideoStreamStartSelector read GetKVSStreamStartSelector write SetKVSStreamStartSelector;
    property KeepKVSStreamStartSelector: Boolean read GetKeepKVSStreamStartSelector write SetKeepKVSStreamStartSelector;
  end;
  
  TStreamProcessingStartSelector = class
  strict private
    FKVSStreamStartSelector: TKinesisVideoStreamStartSelector;
    FKeepKVSStreamStartSelector: Boolean;
    function GetKVSStreamStartSelector: TKinesisVideoStreamStartSelector;
    procedure SetKVSStreamStartSelector(const Value: TKinesisVideoStreamStartSelector);
    function GetKeepKVSStreamStartSelector: Boolean;
    procedure SetKeepKVSStreamStartSelector(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessingStartSelector;
  public
    destructor Destroy; override;
    function IsSetKVSStreamStartSelector: Boolean;
    property KVSStreamStartSelector: TKinesisVideoStreamStartSelector read GetKVSStreamStartSelector write SetKVSStreamStartSelector;
    property KeepKVSStreamStartSelector: Boolean read GetKeepKVSStreamStartSelector write SetKeepKVSStreamStartSelector;
  end;
  
implementation

{ TStreamProcessingStartSelector }

destructor TStreamProcessingStartSelector.Destroy;
begin
  KVSStreamStartSelector := nil;
  inherited;
end;

function TStreamProcessingStartSelector.Obj: TStreamProcessingStartSelector;
begin
  Result := Self;
end;

function TStreamProcessingStartSelector.GetKVSStreamStartSelector: TKinesisVideoStreamStartSelector;
begin
  Result := FKVSStreamStartSelector;
end;

procedure TStreamProcessingStartSelector.SetKVSStreamStartSelector(const Value: TKinesisVideoStreamStartSelector);
begin
  if FKVSStreamStartSelector <> Value then
  begin
    if not KeepKVSStreamStartSelector then
      FKVSStreamStartSelector.Free;
    FKVSStreamStartSelector := Value;
  end;
end;

function TStreamProcessingStartSelector.GetKeepKVSStreamStartSelector: Boolean;
begin
  Result := FKeepKVSStreamStartSelector;
end;

procedure TStreamProcessingStartSelector.SetKeepKVSStreamStartSelector(const Value: Boolean);
begin
  FKeepKVSStreamStartSelector := Value;
end;

function TStreamProcessingStartSelector.IsSetKVSStreamStartSelector: Boolean;
begin
  Result := FKVSStreamStartSelector <> nil;
end;

end.
