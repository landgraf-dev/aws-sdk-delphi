unit AWS.Textract.Model.GetExpenseAnalysisRequest;

interface

uses
  AWS.Textract.Model.Request, 
  AWS.Nullable;

type
  TGetExpenseAnalysisRequest = class;
  
  IGetExpenseAnalysisRequest = interface
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetExpenseAnalysisRequest;
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetExpenseAnalysisRequest = class(TAmazonTextractRequest, IGetExpenseAnalysisRequest)
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
    function Obj: TGetExpenseAnalysisRequest;
  public
    function IsSetJobId: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetExpenseAnalysisRequest }

function TGetExpenseAnalysisRequest.Obj: TGetExpenseAnalysisRequest;
begin
  Result := Self;
end;

function TGetExpenseAnalysisRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TGetExpenseAnalysisRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TGetExpenseAnalysisRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TGetExpenseAnalysisRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetExpenseAnalysisRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetExpenseAnalysisRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetExpenseAnalysisRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetExpenseAnalysisRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetExpenseAnalysisRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
