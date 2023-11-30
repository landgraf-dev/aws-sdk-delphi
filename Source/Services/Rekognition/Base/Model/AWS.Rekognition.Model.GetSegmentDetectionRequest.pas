unit AWS.Rekognition.Model.GetSegmentDetectionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TGetSegmentDetectionRequest = class;
  
  IGetSegmentDetectionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetSegmentDetectionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetSegmentDetectionRequest = class(TAmazonRekognitionRequest, IGetSegmentDetectionRequest)
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
    function Obj: TGetSegmentDetectionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetSegmentDetectionRequest }

function TGetSegmentDetectionRequest.Obj: TGetSegmentDetectionRequest;
begin
  Result := Self;
end;

function TGetSegmentDetectionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetSegmentDetectionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetSegmentDetectionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetSegmentDetectionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetSegmentDetectionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetSegmentDetectionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetSegmentDetectionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetSegmentDetectionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetSegmentDetectionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
