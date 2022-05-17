unit AWS.Textract.Model.DocumentLocation;

interface

uses
  AWS.Textract.Model.S3Object;

type
  TDocumentLocation = class;
  
  IDocumentLocation = interface
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
    function Obj: TDocumentLocation;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
  TDocumentLocation = class
  strict private
    FS3Object: TS3Object;
    FKeepS3Object: Boolean;
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
  strict protected
    function Obj: TDocumentLocation;
  public
    destructor Destroy; override;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
implementation

{ TDocumentLocation }

destructor TDocumentLocation.Destroy;
begin
  S3Object := nil;
  inherited;
end;

function TDocumentLocation.Obj: TDocumentLocation;
begin
  Result := Self;
end;

function TDocumentLocation.GetS3Object: TS3Object;
begin
  Result := FS3Object;
end;

procedure TDocumentLocation.SetS3Object(const Value: TS3Object);
begin
  if FS3Object <> Value then
  begin
    if not KeepS3Object then
      FS3Object.Free;
    FS3Object := Value;
  end;
end;

function TDocumentLocation.GetKeepS3Object: Boolean;
begin
  Result := FKeepS3Object;
end;

procedure TDocumentLocation.SetKeepS3Object(const Value: Boolean);
begin
  FKeepS3Object := Value;
end;

function TDocumentLocation.IsSetS3Object: Boolean;
begin
  Result := FS3Object <> nil;
end;

end.
