unit AWS.Transcribe.Model.ListVocabularyFiltersResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.VocabularyFilterInfo;

type
  TListVocabularyFiltersResponse = class;
  
  IListVocabularyFiltersResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetVocabularyFilters: TObjectList<TVocabularyFilterInfo>;
    procedure SetVocabularyFilters(const Value: TObjectList<TVocabularyFilterInfo>);
    function GetKeepVocabularyFilters: Boolean;
    procedure SetKeepVocabularyFilters(const Value: Boolean);
    function Obj: TListVocabularyFiltersResponse;
    function IsSetNextToken: Boolean;
    function IsSetVocabularyFilters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property VocabularyFilters: TObjectList<TVocabularyFilterInfo> read GetVocabularyFilters write SetVocabularyFilters;
    property KeepVocabularyFilters: Boolean read GetKeepVocabularyFilters write SetKeepVocabularyFilters;
  end;
  
  TListVocabularyFiltersResponse = class(TAmazonWebServiceResponse, IListVocabularyFiltersResponse)
  strict private
    FNextToken: Nullable<string>;
    FVocabularyFilters: TObjectList<TVocabularyFilterInfo>;
    FKeepVocabularyFilters: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetVocabularyFilters: TObjectList<TVocabularyFilterInfo>;
    procedure SetVocabularyFilters(const Value: TObjectList<TVocabularyFilterInfo>);
    function GetKeepVocabularyFilters: Boolean;
    procedure SetKeepVocabularyFilters(const Value: Boolean);
  strict protected
    function Obj: TListVocabularyFiltersResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetVocabularyFilters: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property VocabularyFilters: TObjectList<TVocabularyFilterInfo> read GetVocabularyFilters write SetVocabularyFilters;
    property KeepVocabularyFilters: Boolean read GetKeepVocabularyFilters write SetKeepVocabularyFilters;
  end;
  
implementation

{ TListVocabularyFiltersResponse }

constructor TListVocabularyFiltersResponse.Create;
begin
  inherited;
  FVocabularyFilters := TObjectList<TVocabularyFilterInfo>.Create;
end;

destructor TListVocabularyFiltersResponse.Destroy;
begin
  VocabularyFilters := nil;
  inherited;
end;

function TListVocabularyFiltersResponse.Obj: TListVocabularyFiltersResponse;
begin
  Result := Self;
end;

function TListVocabularyFiltersResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListVocabularyFiltersResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListVocabularyFiltersResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListVocabularyFiltersResponse.GetVocabularyFilters: TObjectList<TVocabularyFilterInfo>;
begin
  Result := FVocabularyFilters;
end;

procedure TListVocabularyFiltersResponse.SetVocabularyFilters(const Value: TObjectList<TVocabularyFilterInfo>);
begin
  if FVocabularyFilters <> Value then
  begin
    if not KeepVocabularyFilters then
      FVocabularyFilters.Free;
    FVocabularyFilters := Value;
  end;
end;

function TListVocabularyFiltersResponse.GetKeepVocabularyFilters: Boolean;
begin
  Result := FKeepVocabularyFilters;
end;

procedure TListVocabularyFiltersResponse.SetKeepVocabularyFilters(const Value: Boolean);
begin
  FKeepVocabularyFilters := Value;
end;

function TListVocabularyFiltersResponse.IsSetVocabularyFilters: Boolean;
begin
  Result := (FVocabularyFilters <> nil) and (FVocabularyFilters.Count > 0);
end;

end.
