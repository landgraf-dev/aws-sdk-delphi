unit AWS.Rekognition.Model.StartSegmentDetectionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TStartSegmentDetectionResponse = class;
  
  IStartSegmentDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartSegmentDetectionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartSegmentDetectionResponse = class(TAmazonWebServiceResponse, IStartSegmentDetectionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartSegmentDetectionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartSegmentDetectionResponse }

function TStartSegmentDetectionResponse.Obj: TStartSegmentDetectionResponse;
begin
  Result := Self;
end;

function TStartSegmentDetectionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartSegmentDetectionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartSegmentDetectionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
