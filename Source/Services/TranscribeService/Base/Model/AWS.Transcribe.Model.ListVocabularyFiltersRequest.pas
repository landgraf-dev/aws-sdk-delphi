unit AWS.Transcribe.Model.ListVocabularyFiltersRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TListVocabularyFiltersRequest = class;
  
  IListVocabularyFiltersRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListVocabularyFiltersRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListVocabularyFiltersRequest = class(TAmazonTranscribeServiceRequest, IListVocabularyFiltersRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNameContains: Nullable<string>;
    FNextToken: Nullable<string>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListVocabularyFiltersRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListVocabularyFiltersRequest }

function TListVocabularyFiltersRequest.Obj: TListVocabularyFiltersRequest;
begin
  Result := Self;
end;

function TListVocabularyFiltersRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListVocabularyFiltersRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListVocabularyFiltersRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListVocabularyFiltersRequest.GetNameContains: string;
begin
  Result := FNameContains.ValueOrDefault;
end;

procedure TListVocabularyFiltersRequest.SetNameContains(const Value: string);
begin
  FNameContains := Value;
end;

function TListVocabularyFiltersRequest.IsSetNameContains: Boolean;
begin
  Result := FNameContains.HasValue;
end;

function TListVocabularyFiltersRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListVocabularyFiltersRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListVocabularyFiltersRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
