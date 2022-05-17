unit AWS.Transcribe.Model.ListVocabulariesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums;

type
  TListVocabulariesRequest = class;
  
  IListVocabulariesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStateEquals: TVocabularyState;
    procedure SetStateEquals(const Value: TVocabularyState);
    function Obj: TListVocabulariesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStateEquals: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
    property StateEquals: TVocabularyState read GetStateEquals write SetStateEquals;
  end;
  
  TListVocabulariesRequest = class(TAmazonTranscribeServiceRequest, IListVocabulariesRequest)
  strict private
    FMaxResults: Nullable<Integer>;
    FNameContains: Nullable<string>;
    FNextToken: Nullable<string>;
    FStateEquals: Nullable<TVocabularyState>;
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStateEquals: TVocabularyState;
    procedure SetStateEquals(const Value: TVocabularyState);
  strict protected
    function Obj: TListVocabulariesRequest;
  public
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStateEquals: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
    property StateEquals: TVocabularyState read GetStateEquals write SetStateEquals;
  end;
  
implementation

{ TListVocabulariesRequest }

function TListVocabulariesRequest.Obj: TListVocabulariesRequest;
begin
  Result := Self;
end;

function TListVocabulariesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListVocabulariesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListVocabulariesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListVocabulariesRequest.GetNameContains: string;
begin
  Result := FNameContains.ValueOrDefault;
end;

procedure TListVocabulariesRequest.SetNameContains(const Value: string);
begin
  FNameContains := Value;
end;

function TListVocabulariesRequest.IsSetNameContains: Boolean;
begin
  Result := FNameContains.HasValue;
end;

function TListVocabulariesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListVocabulariesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListVocabulariesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListVocabulariesRequest.GetStateEquals: TVocabularyState;
begin
  Result := FStateEquals.ValueOrDefault;
end;

procedure TListVocabulariesRequest.SetStateEquals(const Value: TVocabularyState);
begin
  FStateEquals := Value;
end;

function TListVocabulariesRequest.IsSetStateEquals: Boolean;
begin
  Result := FStateEquals.HasValue;
end;

end.
