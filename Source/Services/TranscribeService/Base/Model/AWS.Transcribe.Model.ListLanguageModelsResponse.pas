unit AWS.Transcribe.Model.ListLanguageModelsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.LanguageModel, 
  AWS.Nullable;

type
  TListLanguageModelsResponse = class;
  
  IListLanguageModelsResponse = interface(IAmazonWebServiceResponse)
    function GetModels: TObjectList<TLanguageModel>;
    procedure SetModels(const Value: TObjectList<TLanguageModel>);
    function GetKeepModels: Boolean;
    procedure SetKeepModels(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListLanguageModelsResponse;
    function IsSetModels: Boolean;
    function IsSetNextToken: Boolean;
    property Models: TObjectList<TLanguageModel> read GetModels write SetModels;
    property KeepModels: Boolean read GetKeepModels write SetKeepModels;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListLanguageModelsResponse = class(TAmazonWebServiceResponse, IListLanguageModelsResponse)
  strict private
    FModels: TObjectList<TLanguageModel>;
    FKeepModels: Boolean;
    FNextToken: Nullable<string>;
    function GetModels: TObjectList<TLanguageModel>;
    procedure SetModels(const Value: TObjectList<TLanguageModel>);
    function GetKeepModels: Boolean;
    procedure SetKeepModels(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListLanguageModelsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetModels: Boolean;
    function IsSetNextToken: Boolean;
    property Models: TObjectList<TLanguageModel> read GetModels write SetModels;
    property KeepModels: Boolean read GetKeepModels write SetKeepModels;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListLanguageModelsResponse }

constructor TListLanguageModelsResponse.Create;
begin
  inherited;
  FModels := TObjectList<TLanguageModel>.Create;
end;

destructor TListLanguageModelsResponse.Destroy;
begin
  Models := nil;
  inherited;
end;

function TListLanguageModelsResponse.Obj: TListLanguageModelsResponse;
begin
  Result := Self;
end;

function TListLanguageModelsResponse.GetModels: TObjectList<TLanguageModel>;
begin
  Result := FModels;
end;

procedure TListLanguageModelsResponse.SetModels(const Value: TObjectList<TLanguageModel>);
begin
  if FModels <> Value then
  begin
    if not KeepModels then
      FModels.Free;
    FModels := Value;
  end;
end;

function TListLanguageModelsResponse.GetKeepModels: Boolean;
begin
  Result := FKeepModels;
end;

procedure TListLanguageModelsResponse.SetKeepModels(const Value: Boolean);
begin
  FKeepModels := Value;
end;

function TListLanguageModelsResponse.IsSetModels: Boolean;
begin
  Result := (FModels <> nil) and (FModels.Count > 0);
end;

function TListLanguageModelsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListLanguageModelsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListLanguageModelsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
