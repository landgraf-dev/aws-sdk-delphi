unit AWS.Rekognition.Model.DetectTextRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.DetectTextFilters, 
  AWS.Rekognition.Model.Image;

type
  TDetectTextRequest = class;
  
  IDetectTextRequest = interface
    function GetFilters: TDetectTextFilters;
    procedure SetFilters(const Value: TDetectTextFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function Obj: TDetectTextRequest;
    function IsSetFilters: Boolean;
    function IsSetImage: Boolean;
    property Filters: TDetectTextFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
  TDetectTextRequest = class(TAmazonRekognitionRequest, IDetectTextRequest)
  strict private
    FFilters: TDetectTextFilters;
    FKeepFilters: Boolean;
    FImage: TImage;
    FKeepImage: Boolean;
    function GetFilters: TDetectTextFilters;
    procedure SetFilters(const Value: TDetectTextFilters);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
  strict protected
    function Obj: TDetectTextRequest;
  public
    destructor Destroy; override;
    function IsSetFilters: Boolean;
    function IsSetImage: Boolean;
    property Filters: TDetectTextFilters read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
implementation

{ TDetectTextRequest }

destructor TDetectTextRequest.Destroy;
begin
  Image := nil;
  Filters := nil;
  inherited;
end;

function TDetectTextRequest.Obj: TDetectTextRequest;
begin
  Result := Self;
end;

function TDetectTextRequest.GetFilters: TDetectTextFilters;
begin
  Result := FFilters;
end;

procedure TDetectTextRequest.SetFilters(const Value: TDetectTextFilters);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TDetectTextRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TDetectTextRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TDetectTextRequest.IsSetFilters: Boolean;
begin
  Result := FFilters <> nil;
end;

function TDetectTextRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectTextRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectTextRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectTextRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectTextRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

end.
