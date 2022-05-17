unit AWS.Transcribe.Model.ListMedicalVocabulariesResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.VocabularyInfo;

type
  TListMedicalVocabulariesResponse = class;
  
  IListMedicalVocabulariesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetStatus: TVocabularyState;
    procedure SetStatus(const Value: TVocabularyState);
    function GetVocabularies: TObjectList<TVocabularyInfo>;
    procedure SetVocabularies(const Value: TObjectList<TVocabularyInfo>);
    function GetKeepVocabularies: Boolean;
    procedure SetKeepVocabularies(const Value: Boolean);
    function Obj: TListMedicalVocabulariesResponse;
    function IsSetNextToken: Boolean;
    function IsSetStatus: Boolean;
    function IsSetVocabularies: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Status: TVocabularyState read GetStatus write SetStatus;
    property Vocabularies: TObjectList<TVocabularyInfo> read GetVocabularies write SetVocabularies;
    property KeepVocabularies: Boolean read GetKeepVocabularies write SetKeepVocabularies;
  end;
  
  TListMedicalVocabulariesResponse = class(TAmazonWebServiceResponse, IListMedicalVocabulariesResponse)
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
    function Obj: TListMedicalVocabulariesResponse;
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

{ TListMedicalVocabulariesResponse }

constructor TListMedicalVocabulariesResponse.Create;
begin
  inherited;
  FVocabularies := TObjectList<TVocabularyInfo>.Create;
end;

destructor TListMedicalVocabulariesResponse.Destroy;
begin
  Vocabularies := nil;
  inherited;
end;

function TListMedicalVocabulariesResponse.Obj: TListMedicalVocabulariesResponse;
begin
  Result := Self;
end;

function TListMedicalVocabulariesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListMedicalVocabulariesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListMedicalVocabulariesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListMedicalVocabulariesResponse.GetStatus: TVocabularyState;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TListMedicalVocabulariesResponse.SetStatus(const Value: TVocabularyState);
begin
  FStatus := Value;
end;

function TListMedicalVocabulariesResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TListMedicalVocabulariesResponse.GetVocabularies: TObjectList<TVocabularyInfo>;
begin
  Result := FVocabularies;
end;

procedure TListMedicalVocabulariesResponse.SetVocabularies(const Value: TObjectList<TVocabularyInfo>);
begin
  if FVocabularies <> Value then
  begin
    if not KeepVocabularies then
      FVocabularies.Free;
    FVocabularies := Value;
  end;
end;

function TListMedicalVocabulariesResponse.GetKeepVocabularies: Boolean;
begin
  Result := FKeepVocabularies;
end;

procedure TListMedicalVocabulariesResponse.SetKeepVocabularies(const Value: Boolean);
begin
  FKeepVocabularies := Value;
end;

function TListMedicalVocabulariesResponse.IsSetVocabularies: Boolean;
begin
  Result := (FVocabularies <> nil) and (FVocabularies.Count > 0);
end;

end.
