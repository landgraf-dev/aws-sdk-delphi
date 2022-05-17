unit AWS.Textract.Model.Document;

interface

uses
  System.Classes, 
  AWS.Textract.Model.S3Object;

type
  TDocument = class;
  
  IDocument = interface
    function GetBytes: TBytesStream;
    procedure SetBytes(const Value: TBytesStream);
    function GetKeepBytes: Boolean;
    procedure SetKeepBytes(const Value: Boolean);
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
    function Obj: TDocument;
    function IsSetBytes: Boolean;
    function IsSetS3Object: Boolean;
    property Bytes: TBytesStream read GetBytes write SetBytes;
    property KeepBytes: Boolean read GetKeepBytes write SetKeepBytes;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
  TDocument = class
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
    function Obj: TDocument;
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

{ TDocument }

destructor TDocument.Destroy;
begin
  S3Object := nil;
  Bytes := nil;
  inherited;
end;

function TDocument.Obj: TDocument;
begin
  Result := Self;
end;

function TDocument.GetBytes: TBytesStream;
begin
  Result := FBytes;
end;

procedure TDocument.SetBytes(const Value: TBytesStream);
begin
  if FBytes <> Value then
  begin
    if not KeepBytes then
      FBytes.Free;
    FBytes := Value;
  end;
end;

function TDocument.GetKeepBytes: Boolean;
begin
  Result := FKeepBytes;
end;

procedure TDocument.SetKeepBytes(const Value: Boolean);
begin
  FKeepBytes := Value;
end;

function TDocument.IsSetBytes: Boolean;
begin
  Result := FBytes <> nil;
end;

function TDocument.GetS3Object: TS3Object;
begin
  Result := FS3Object;
end;

procedure TDocument.SetS3Object(const Value: TS3Object);
begin
  if FS3Object <> Value then
  begin
    if not KeepS3Object then
      FS3Object.Free;
    FS3Object := Value;
  end;
end;

function TDocument.GetKeepS3Object: Boolean;
begin
  Result := FKeepS3Object;
end;

procedure TDocument.SetKeepS3Object(const Value: Boolean);
begin
  FKeepS3Object := Value;
end;

function TDocument.IsSetS3Object: Boolean;
begin
  Result := FS3Object <> nil;
end;

end.
