unit AWS.Transcribe.Model.ListCallAnalyticsCategoriesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TListCallAnalyticsCategoriesRequest = class;
  
  IListCallAnalyticsCategoriesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCallAnalyticsCategoriesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCallAnalyticsCategoriesRequest = class(TAmazonTranscribeServiceRequest, IListCallAnalyticsCategoriesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCallAnalyticsCategoriesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCallAnalyticsCategoriesRequest }

function TListCallAnalyticsCategoriesRequest.Obj: TListCallAnalyticsCategoriesRequest;
begin
  Result := Self;
end;

function TListCallAnalyticsCategoriesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListCallAnalyticsCategoriesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListCallAnalyticsCategoriesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListCallAnalyticsCategoriesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCallAnalyticsCategoriesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCallAnalyticsCategoriesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
