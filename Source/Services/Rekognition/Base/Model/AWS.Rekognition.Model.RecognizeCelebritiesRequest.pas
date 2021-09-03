unit AWS.Rekognition.Model.RecognizeCelebritiesRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image;

type
  TRecognizeCelebritiesRequest = class;
  
  IRecognizeCelebritiesRequest = interface
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function Obj: TRecognizeCelebritiesRequest;
    function IsSetImage: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
  TRecognizeCelebritiesRequest = class(TAmazonRekognitionRequest, IRecognizeCelebritiesRequest)
  strict private
    FImage: TImage;
    FKeepImage: Boolean;
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
  strict protected
    function Obj: TRecognizeCelebritiesRequest;
  public
    destructor Destroy; override;
    function IsSetImage: Boolean;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
implementation

{ TRecognizeCelebritiesRequest }

destructor TRecognizeCelebritiesRequest.Destroy;
begin
  Image := nil;
  inherited;
end;

function TRecognizeCelebritiesRequest.Obj: TRecognizeCelebritiesRequest;
begin
  Result := Self;
end;

function TRecognizeCelebritiesRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TRecognizeCelebritiesRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TRecognizeCelebritiesRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TRecognizeCelebritiesRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TRecognizeCelebritiesRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

end.
