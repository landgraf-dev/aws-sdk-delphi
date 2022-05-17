unit AWS.Textract.Model.GetDocumentTextDetectionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Textract.Model.Request;

type
  TGetDocumentTextDetectionRequest = class;
  
  IGetDocumentTextDetectionRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetDocumentTextDetectionRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetDocumentTextDetectionRequest = class(TAmazonTextractRequest, IGetDocumentTextDetectionRequest)
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
    function Obj: TGetDocumentTextDetectionRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetDocumentTextDetectionRequest }

function TGetDocumentTextDetectionRequest.Obj: TGetDocumentTextDetectionRequest;
begin
  Result := Self;
end;

function TGetDocumentTextDetectionRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetDocumentTextDetectionRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetDocumentTextDetectionRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetDocumentTextDetectionRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetDocumentTextDetectionRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDocumentTextDetectionRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDocumentTextDetectionRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
