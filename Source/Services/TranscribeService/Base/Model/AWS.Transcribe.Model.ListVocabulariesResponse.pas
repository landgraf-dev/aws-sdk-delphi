unit AWS.Transcribe.Model.ListVocabulariesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.VocabularyInfo;

type
  TListVocabulariesResponse = class;
  
  IListVocabulariesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TVocabularyState;
    procedure SetStatus(const Value: TVocabularyState);
    function GetVocabularies: TObjectList<TVocabularyInfo>;
    procedure SetVocabularies(const Value: TObjectList<TVocabularyInfo>);
    function GetKeepVocabularies: Boolean;
    procedure SetKeepVocabularies(const Value: Boolean);
    function Obj: TListVocabulariesResponse;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    function IsSetVocabularies: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TVocabularyState read GetStatus write SetStatus;
    property Vocabularies: TObjectList<TVocabularyInfo> read GetVocabularies write SetVocabularies;
    property KeepVocabularies: Boolean read GetKeepVocabularies write SetKeepVocabularies;
  end;
  
  TListVocabulariesResponse = class(TAmazonWebServiceResponse, IListVocabulariesResponse)
  strict private
    FNextToken: Nullable<string>;
    FStatus: Nullable<TVocabularyState>;
    FVocabularies: TObjectList<TVocabularyInfo>;
    FKeepVocabularies: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TVocabularyState;
    procedure SetStatus(const Value: TVocabularyState);
    function GetVocabularies: TObjectList<TVocabularyInfo>;
    procedure SetVocabularies(const Value: TObjectList<TVocabularyInfo>);
    function GetKeepVocabularies: Boolean;
    procedure SetKeepVocabularies(const Value: Boolean);
  strict protected
    function Obj: TListVocabulariesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    function IsSetVocabularies: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TVocabularyState read GetStatus write SetStatus;
    property Vocabularies: TObjectList<TVocabularyInfo> read GetVocabularies write SetVocabularies;
    property KeepVocabularies: Boolean read GetKeepVocabularies write SetKeepVocabularies;
  end;
  
implementation

{ TListVocabulariesResponse }

constructor TListVocabulariesResponse.Create;
begin
  inherited;
  FVocabularies := TObjectList<TVocabularyInfo>.Create;
end;

destructor TListVocabulariesResponse.Destroy;
begin
  Vocabularies := nil;
  inherited;
end;

function TListVocabulariesResponse.Obj: TListVocabulariesResponse;
begin
  Result := Self;
end;

function TListVocabulariesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListVocabulariesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListVocabulariesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListVocabulariesResponse.GetStatus: TVocabularyState;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListVocabulariesResponse.SetStatus(const Value: TVocabularyState);
begin
  FStatus := Value;
end;

function TListVocabulariesResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TListVocabulariesResponse.GetVocabularies: TObjectList<TVocabularyInfo>;
begin
  Result := FVocabularies;
end;

procedure TListVocabulariesResponse.SetVocabularies(const Value: TObjectList<TVocabularyInfo>);
begin
  if FVocabularies <> Value then
  begin
    if not KeepVocabularies then
      FVocabularies.Free;
    FVocabularies := Value;
  end;
end;

function TListVocabulariesResponse.GetKeepVocabularies: Boolean;
begin
  Result := FKeepVocabularies;
end;

procedure TListVocabulariesResponse.SetKeepVocabularies(const Value: Boolean);
begin
  FKeepVocabularies := Value;
end;

function TListVocabulariesResponse.IsSetVocabularies: Boolean;
begin
  Result := (FVocabularies <> nil) and (FVocabularies.Count > 0);
end;

end.
