unit AWS.Rekognition.Model.Video;

interface

uses
  AWS.Rekognition.Model.S3Object;

type
  TVideo = class;
  
  IVideo = interface
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
    function Obj: TVideo;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
  TVideo = class
  strict private
    FS3Object: TS3Object;
    FKeepS3Object: Boolean;
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
  strict protected
    function Obj: TVideo;
  public
    destructor Destroy; override;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
implementation

{ TVideo }

destructor TVideo.Destroy;
begin
  S3Object := nil;
  inherited;
end;

function TVideo.Obj: TVideo;
begin
  Result := Self;
end;

function TVideo.GetS3Object: TS3Object;
begin
  Result := FS3Object;
end;

procedure TVideo.SetS3Object(const Value: TS3Object);
begin
  if FS3Object <> Value then
  begin
    if not KeepS3Object then
      FS3Object.Free;
    FS3Object := Value;
  end;
end;

function TVideo.GetKeepS3Object: Boolean;
begin
  Result := FKeepS3Object;
end;

procedure TVideo.SetKeepS3Object(const Value: Boolean);
begin
  FKeepS3Object := Value;
end;

function TVideo.IsSetS3Object: Boolean;
begin
  Result := FS3Object <> nil;
end;

end.
