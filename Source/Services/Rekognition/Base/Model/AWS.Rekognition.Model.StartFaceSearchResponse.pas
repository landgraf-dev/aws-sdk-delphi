unit AWS.Rekognition.Model.StartFaceSearchResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartFaceSearchResponse = class;
  
  IStartFaceSearchResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function Obj: TStartFaceSearchResponse;
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
  TStartFaceSearchResponse = class(TAmazonWebServiceResponse, IStartFaceSearchResponse)
  strict private
    FJobId: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
  strict protected
    function Obj: TStartFaceSearchResponse;
  public
    function IsSetJobId: Boolean;
    property JobId: string read GetJobId write SetJobId;
  end;
  
implementation

{ TStartFaceSearchResponse }

function TStartFaceSearchResponse.Obj: TStartFaceSearchResponse;
begin
  Result := Self;
end;

function TStartFaceSearchResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartFaceSearchResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartFaceSearchResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

end.
