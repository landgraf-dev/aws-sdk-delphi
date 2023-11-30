unit AWS.Translate.Model.ListTextTranslationJobsRequest;

interface

uses
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.TextTranslationJobFilter, 
  AWS.Nullable;

type
  TListTextTranslationJobsRequest = class;
  
  IListTextTranslationJobsRequest = interface
    function GetFilter: TTextTranslationJobFilter;
    procedure SetFilter(const Value: TTextTranslationJobFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListTextTranslationJobsRequest;
    function IsSetFilter: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filter: TTextTranslationJobFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListTextTranslationJobsRequest = class(TAmazonTranslateRequest, IListTextTranslationJobsRequest)
  strict private
    FFilter: TTextTranslationJobFilter;
    FKeepFilter: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetFilter: TTextTranslationJobFilter;
    procedure SetFilter(const Value: TTextTranslationJobFilter);
    function GetKeepFilter: Boolean;
    procedure SetKeepFilter(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListTextTranslationJobsRequest;
  public
    destructor Destroy; override;
    function IsSetFilter: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property Filter: TTextTranslationJobFilter read GetFilter write SetFilter;
    property KeepFilter: Boolean read GetKeepFilter write SetKeepFilter;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListTextTranslationJobsRequest }

destructor TListTextTranslationJobsRequest.Destroy;
begin
  Filter := nil;
  inherited;
end;

function TListTextTranslationJobsRequest.Obj: TListTextTranslationJobsRequest;
begin
  Result := Self;
end;

function TListTextTranslationJobsRequest.GetFilter: TTextTranslationJobFilter;
begin
  Result := FFilter;
end;

procedure TListTextTranslationJobsRequest.SetFilter(const Value: TTextTranslationJobFilter);
begin
  if FFilter <> Value then
  begin
    if not KeepFilter then
      FFilter.Free;
    FFilter := Value;
  end;
end;

function TListTextTranslationJobsRequest.GetKeepFilter: Boolean;
begin
  Result := FKeepFilter;
end;

procedure TListTextTranslationJobsRequest.SetKeepFilter(const Value: Boolean);
begin
  FKeepFilter := Value;
end;

function TListTextTranslationJobsRequest.IsSetFilter: Boolean;
begin
  Result := FFilter <> nil;
end;

function TListTextTranslationJobsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListTextTranslationJobsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListTextTranslationJobsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListTextTranslationJobsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTextTranslationJobsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTextTranslationJobsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
