unit AWS.Rekognition.Model.Image;

interface

uses
  System.Classes, 
  AWS.Rekognition.Model.S3Object;

type
  TImage = class;
  
  IImage = interface
    function GetBytes: TBytesStream;
    procedure SetBytes(const Value: TBytesStream);
    function GetKeepBytes: Boolean;
    procedure SetKeepBytes(const Value: Boolean);
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
    function Obj: TImage;
    function IsSetBytes: Boolean;
    function IsSetS3Object: Boolean;
    property Bytes: TBytesStream read GetBytes write SetBytes;
    property KeepBytes: Boolean read GetKeepBytes write SetKeepBytes;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
  TImage = class
  strict private
    FBytes: TBytesStream;
    FKeepBytes: Boolean;
    FS3Object: TS3Object;
    FKeepS3Object: Boolean;
    function GetBytes: TBytesStream;
    procedure SetBytes(const Value: TBytesStream);
    function GetKeepBytes: Boolean;
    procedure SetKeepBytes(const Value: Boolean);
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
  strict protected
    function Obj: TImage;
  public
    destructor Destroy; override;
    function IsSetBytes: Boolean;
    function IsSetS3Object: Boolean;
    property Bytes: TBytesStream read GetBytes write SetBytes;
    property KeepBytes: Boolean read GetKeepBytes write SetKeepBytes;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
implementation

{ TImage }

destructor TImage.Destroy;
begin
  S3Object := nil;
  Bytes := nil;
  inherited;
end;

function TImage.Obj: TImage;
begin
  Result := Self;
end;

function TImage.GetBytes: TBytesStream;
begin
  Result := FBytes;
end;

procedure TImage.SetBytes(const Value: TBytesStream);
begin
  if FBytes <> Value then
  begin
    if not KeepBytes then
      FBytes.Free;
    FBytes := Value;
  end;
end;

function TImage.GetKeepBytes: Boolean;
begin
  Result := FKeepBytes;
end;

procedure TImage.SetKeepBytes(const Value: Boolean);
begin
  FKeepBytes := Value;
end;

function TImage.IsSetBytes: Boolean;
begin
  Result := FBytes <> nil;
end;

function TImage.GetS3Object: TS3Object;
begin
  Result := FS3Object;
end;

procedure TImage.SetS3Object(const Value: TS3Object);
begin
  if FS3Object <> Value then
  begin
    if not KeepS3Object then
      FS3Object.Free;
    FS3Object := Value;
  end;
end;

function TImage.GetKeepS3Object: Boolean;
begin
  Result := FKeepS3Object;
end;

procedure TImage.SetKeepS3Object(const Value: Boolean);
begin
  FKeepS3Object := Value;
end;

function TImage.IsSetS3Object: Boolean;
begin
  Result := FS3Object <> nil;
end;

end.
