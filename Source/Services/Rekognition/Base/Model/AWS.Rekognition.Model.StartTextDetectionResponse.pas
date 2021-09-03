unit AWS.Rekognition.Model.StartTextDetectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TStartTextDetectionResponse = class;
  
  IStartTextDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartTextDetectionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartTextDetectionResponse = class(TAmazonWebServiceResponse, IStartTextDetectionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartTextDetectionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartTextDetectionResponse }

function TStartTextDetectionResponse.Obj: TStartTextDetectionResponse;
begin
  Result := Self;
end;

function TStartTextDetectionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartTextDetectionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartTextDetectionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
