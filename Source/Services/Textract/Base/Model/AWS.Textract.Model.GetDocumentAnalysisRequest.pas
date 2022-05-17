unit AWS.Textract.Model.GetDocumentAnalysisRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Textract.Model.Request;

type
  TGetDocumentAnalysisRequest = class;
  
  IGetDocumentAnalysisRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetDocumentAnalysisRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetDocumentAnalysisRequest = class(TAmazonTextractRequest, IGetDocumentAnalysisRequest)
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
    function Obj: TGetDocumentAnalysisRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetDocumentAnalysisRequest }

function TGetDocumentAnalysisRequest.Obj: TGetDocumentAnalysisRequest;
begin
  Result := Self;
end;

function TGetDocumentAnalysisRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetDocumentAnalysisRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetDocumentAnalysisRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetDocumentAnalysisRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetDocumentAnalysisRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetDocumentAnalysisRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetDocumentAnalysisRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDocumentAnalysisRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDocumentAnalysisRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
