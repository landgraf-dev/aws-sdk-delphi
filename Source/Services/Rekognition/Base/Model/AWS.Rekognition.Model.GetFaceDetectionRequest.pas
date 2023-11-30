unit AWS.Rekognition.Model.GetFaceDetectionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TGetFaceDetectionRequest = class;
  
  IGetFaceDetectionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetFaceDetectionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetFaceDetectionRequest = class(TAmazonRekognitionRequest, IGetFaceDetectionRequest)
  strict private
    FJobId: Nullable<string>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TGetFaceDetectionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetFaceDetectionRequest }

function TGetFaceDetectionRequest.Obj: TGetFaceDetectionRequest;
begin
  Result := Self;
end;

function TGetFaceDetectionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetFaceDetectionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetFaceDetectionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetFaceDetectionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetFaceDetectionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetFaceDetectionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetFaceDetectionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetFaceDetectionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetFaceDetectionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
