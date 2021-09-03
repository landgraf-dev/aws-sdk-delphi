unit AWS.Rekognition.Model.DetectFacesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.Image;

type
  TDetectFacesRequest = class;
  
  IDetectFacesRequest = interface
    function GetAttributes: TList<string>;
    procedure SetAttributes(const Value: TList<string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
    function Obj: TDetectFacesRequest;
    function IsSetAttributes: Boolean;
    function IsSetImage: Boolean;
    property Attributes: TList<string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
  TDetectFacesRequest = class(TAmazonRekognitionRequest, IDetectFacesRequest)
  strict private
    FAttributes: TList<string>;
    FKeepAttributes: Boolean;
    FImage: TImage;
    FKeepImage: Boolean;
    function GetAttributes: TList<string>;
    procedure SetAttributes(const Value: TList<string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetImage: TImage;
    procedure SetImage(const Value: TImage);
    function GetKeepImage: Boolean;
    procedure SetKeepImage(const Value: Boolean);
  strict protected
    function Obj: TDetectFacesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetImage: Boolean;
    property Attributes: TList<string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Image: TImage read GetImage write SetImage;
    property KeepImage: Boolean read GetKeepImage write SetKeepImage;
  end;
  
implementation

{ TDetectFacesRequest }

constructor TDetectFacesRequest.Create;
begin
  inherited;
  FAttributes := TList<string>.Create;
end;

destructor TDetectFacesRequest.Destroy;
begin
  Image := nil;
  Attributes := nil;
  inherited;
end;

function TDetectFacesRequest.Obj: TDetectFacesRequest;
begin
  Result := Self;
end;

function TDetectFacesRequest.GetAttributes: TList<string>;
begin
  Result := FAttributes;
end;

procedure TDetectFacesRequest.SetAttributes(const Value: TList<string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TDetectFacesRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TDetectFacesRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TDetectFacesRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TDetectFacesRequest.GetImage: TImage;
begin
  Result := FImage;
end;

procedure TDetectFacesRequest.SetImage(const Value: TImage);
begin
  if FImage <> Value then
  begin
    if not KeepImage then
      FImage.Free;
    FImage := Value;
  end;
end;

function TDetectFacesRequest.GetKeepImage: Boolean;
begin
  Result := FKeepImage;
end;

procedure TDetectFacesRequest.SetKeepImage(const Value: Boolean);
begin
  FKeepImage := Value;
end;

function TDetectFacesRequest.IsSetImage: Boolean;
begin
  Result := FImage <> nil;
end;

end.
