unit AWS.Translate.Model.ListParallelDataRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Nullable;

type
  TListParallelDataRequest = class;
  
  IListParallelDataRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListParallelDataRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListParallelDataRequest = class(TAmazonTranslateRequest, IListParallelDataRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListParallelDataRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListParallelDataRequest }

function TListParallelDataRequest.Obj: TListParallelDataRequest;
begin
  Result := Self;
end;

function TListParallelDataRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListParallelDataRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListParallelDataRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListParallelDataRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListParallelDataRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListParallelDataRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
