unit AWS.Rekognition.Model.StartFaceDetectionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartFaceDetectionResponse = class;
  
  IStartFaceDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartFaceDetectionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartFaceDetectionResponse = class(TAmazonWebServiceResponse, IStartFaceDetectionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartFaceDetectionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartFaceDetectionResponse }

function TStartFaceDetectionResponse.Obj: TStartFaceDetectionResponse;
begin
  Result := Self;
end;

function TStartFaceDetectionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartFaceDetectionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartFaceDetectionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
