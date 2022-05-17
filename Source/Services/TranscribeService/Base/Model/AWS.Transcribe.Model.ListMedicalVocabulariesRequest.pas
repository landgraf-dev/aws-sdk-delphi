unit AWS.Transcribe.Model.ListMedicalVocabulariesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums;

type
  TListMedicalVocabulariesRequest = class;
  
  IListMedicalVocabulariesRequest = interface
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNameContains: string;
    procedure SetNameContains(const Value: string);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStateEquals: TVocabularyState;
    procedure SetStateEquals(const Value: TVocabularyState);
    function Obj: TListMedicalVocabulariesRequest;
    function IsSetMaxResults: Boolean;
    function IsSetNameContains: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetStateEquals: Boolean;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NameContains: string read GetNameContains write SetNameContains;
    property NextToken: string read GetNextToken write SetNextToken;
    property StateEquals: TVocabularyState read GetStateEquals write SetStateEquals;
  end;
  
  TListMedicalVocabulariesRequest = class(TAmazonTranscribeServiceRequest, IListMedicalVocabulariesRequest)
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
    function Obj: TListMedicalVocabulariesRequest;
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

{ TListMedicalVocabulariesRequest }

function TListMedicalVocabulariesRequest.Obj: TListMedicalVocabulariesRequest;
begin
  Result := Self;
end;

function TListMedicalVocabulariesRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListMedicalVocabulariesRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListMedicalVocabulariesRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListMedicalVocabulariesRequest.GetNameContains: string;
begin
  Result := FNameContains.ValueOrDefault;
end;

procedure TListMedicalVocabulariesRequest.SetNameContains(const Value: string);
begin
  FNameContains := Value;
end;

function TListMedicalVocabulariesRequest.IsSetNameContains: Boolean;
begin
  Result := FNameContains.HasValue;
end;

function TListMedicalVocabulariesRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListMedicalVocabulariesRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListMedicalVocabulariesRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListMedicalVocabulariesRequest.GetStateEquals: TVocabularyState;
begin
  Result := FStateEquals.ValueOrDefault;
end;

procedure TListMedicalVocabulariesRequest.SetStateEquals(const Value: TVocabularyState);
begin
  FStateEquals := Value;
end;

function TListMedicalVocabulariesRequest.IsSetStateEquals: Boolean;
begin
  Result := FStateEquals.HasValue;
end;

end.
