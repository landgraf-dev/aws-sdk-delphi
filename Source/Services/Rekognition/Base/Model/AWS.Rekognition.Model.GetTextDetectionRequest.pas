unit AWS.Rekognition.Model.GetTextDetectionRequest;

interface

uses
  AWS.Rekognition.Model.Request, 
  AWS.Nullable;

type
  TGetTextDetectionRequest = class;
  
  IGetTextDetectionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetTextDetectionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetTextDetectionRequest = class(TAmazonRekognitionRequest, IGetTextDetectionRequest)
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
    function Obj: TGetTextDetectionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetTextDetectionRequest }

function TGetTextDetectionRequest.Obj: TGetTextDetectionRequest;
begin
  Result := Self;
end;

function TGetTextDetectionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetTextDetectionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetTextDetectionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetTextDetectionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetTextDetectionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetTextDetectionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetTextDetectionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetTextDetectionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetTextDetectionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
