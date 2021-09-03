unit AWS.Rekognition.Model.DetectFacesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.FaceDetail, 
  AWS.Rekognition.Enums;

type
  TDetectFacesResponse = class;
  
  IDetectFacesResponse = interface(IAmazonWebServiceResponse)
    function GetFaceDetails: TObjectList<TFaceDetail>;
    procedure SetFaceDetails(const Value: TObjectList<TFaceDetail>);
    function GetKeepFaceDetails: Boolean;
    procedure SetKeepFaceDetails(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function Obj: TDetectFacesResponse;
    function IsSetFaceDetails: Boolean;
    function IsSetOrientationCorrection: Boolean;
    property FaceDetails: TObjectList<TFaceDetail> read GetFaceDetails write SetFaceDetails;
    property KeepFaceDetails: Boolean read GetKeepFaceDetails write SetKeepFaceDetails;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
  end;
  
  TDetectFacesResponse = class(TAmazonWebServiceResponse, IDetectFacesResponse)
  strict private
    FFaceDetails: TObjectList<TFaceDetail>;
    FKeepFaceDetails: Boolean;
    FOrientationCorrection: Nullable<TOrientationCorrection>;
    function GetFaceDetails: TObjectList<TFaceDetail>;
    procedure SetFaceDetails(const Value: TObjectList<TFaceDetail>);
    function GetKeepFaceDetails: Boolean;
    procedure SetKeepFaceDetails(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
  strict protected
    function Obj: TDetectFacesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceDetails: Boolean;
    function IsSetOrientationCorrection: Boolean;
    property FaceDetails: TObjectList<TFaceDetail> read GetFaceDetails write SetFaceDetails;
    property KeepFaceDetails: Boolean read GetKeepFaceDetails write SetKeepFaceDetails;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
  end;
  
implementation

{ TDetectFacesResponse }

constructor TDetectFacesResponse.Create;
begin
  inherited;
  FFaceDetails := TObjectList<TFaceDetail>.Create;
end;

destructor TDetectFacesResponse.Destroy;
begin
  FaceDetails := nil;
  inherited;
end;

function TDetectFacesResponse.Obj: TDetectFacesResponse;
begin
  Result := Self;
end;

function TDetectFacesResponse.GetFaceDetails: TObjectList<TFaceDetail>;
begin
  Result := FFaceDetails;
end;

procedure TDetectFacesResponse.SetFaceDetails(const Value: TObjectList<TFaceDetail>);
begin
  if FFaceDetails <> Value then
  begin
    if not KeepFaceDetails then
      FFaceDetails.Free;
    FFaceDetails := Value;
  end;
end;

function TDetectFacesResponse.GetKeepFaceDetails: Boolean;
begin
  Result := FKeepFaceDetails;
end;

procedure TDetectFacesResponse.SetKeepFaceDetails(const Value: Boolean);
begin
  FKeepFaceDetails := Value;
end;

function TDetectFacesResponse.IsSetFaceDetails: Boolean;
begin
  Result := (FFaceDetails <> nil) and (FFaceDetails.Count > 0);
end;

function TDetectFacesResponse.GetOrientationCorrection: TOrientationCorrection;
begin
  Result := FOrientationCorrection.ValueOrDefault;
end;

procedure TDetectFacesResponse.SetOrientationCorrection(const Value: TOrientationCorrection);
begin
  FOrientationCorrection := Value;
end;

function TDetectFacesResponse.IsSetOrientationCorrection: Boolean;
begin
  Result := FOrientationCorrection.HasValue;
end;

end.
