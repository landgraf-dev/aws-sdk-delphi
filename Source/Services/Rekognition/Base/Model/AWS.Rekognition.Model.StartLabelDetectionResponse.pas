unit AWS.Rekognition.Model.StartLabelDetectionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartLabelDetectionResponse = class;
  
  IStartLabelDetectionResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartLabelDetectionResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartLabelDetectionResponse = class(TAmazonWebServiceResponse, IStartLabelDetectionResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartLabelDetectionResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartLabelDetectionResponse }

function TStartLabelDetectionResponse.Obj: TStartLabelDetectionResponse;
begin
  Result := Self;
end;

function TStartLabelDetectionResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartLabelDetectionResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartLabelDetectionResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
