unit AWS.Translate.Model.ListTextTranslationJobsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Translate.Model.TextTranslationJobProperties;

type
  TListTextTranslationJobsResponse = class;
  
  IListTextTranslationJobsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties>;
    procedure SetTextTranslationJobPropertiesList(const Value: TObjectList<TTextTranslationJobProperties>);
    function GetKeepTextTranslationJobPropertiesList: Boolean;
    procedure SetKeepTextTranslationJobPropertiesList(const Value: Boolean);
    function Obj: TListTextTranslationJobsResponse;
    function IsSetNextToken: Boolean;
    function IsSetTextTranslationJobPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties> read GetTextTranslationJobPropertiesList write SetTextTranslationJobPropertiesList;
    property KeepTextTranslationJobPropertiesList: Boolean read GetKeepTextTranslationJobPropertiesList write SetKeepTextTranslationJobPropertiesList;
  end;
  
  TListTextTranslationJobsResponse = class(TAmazonWebServiceResponse, IListTextTranslationJobsResponse)
  strict private
    FNextToken: Nullable<string>;
    FTextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties>;
    FKeepTextTranslationJobPropertiesList: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetTextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties>;
    procedure SetTextTranslationJobPropertiesList(const Value: TObjectList<TTextTranslationJobProperties>);
    function GetKeepTextTranslationJobPropertiesList: Boolean;
    procedure SetKeepTextTranslationJobPropertiesList(const Value: Boolean);
  strict protected
    function Obj: TListTextTranslationJobsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetTextTranslationJobPropertiesList: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property TextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties> read GetTextTranslationJobPropertiesList write SetTextTranslationJobPropertiesList;
    property KeepTextTranslationJobPropertiesList: Boolean read GetKeepTextTranslationJobPropertiesList write SetKeepTextTranslationJobPropertiesList;
  end;
  
implementation

{ TListTextTranslationJobsResponse }

constructor TListTextTranslationJobsResponse.Create;
begin
  inherited;
  FTextTranslationJobPropertiesList := TObjectList<TTextTranslationJobProperties>.Create;
end;

destructor TListTextTranslationJobsResponse.Destroy;
begin
  TextTranslationJobPropertiesList := nil;
  inherited;
end;

function TListTextTranslationJobsResponse.Obj: TListTextTranslationJobsResponse;
begin
  Result := Self;
end;

function TListTextTranslationJobsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListTextTranslationJobsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListTextTranslationJobsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListTextTranslationJobsResponse.GetTextTranslationJobPropertiesList: TObjectList<TTextTranslationJobProperties>;
begin
  Result := FTextTranslationJobPropertiesList;
end;

procedure TListTextTranslationJobsResponse.SetTextTranslationJobPropertiesList(const Value: TObjectList<TTextTranslationJobProperties>);
begin
  if FTextTranslationJobPropertiesList <> Value then
  begin
    if not KeepTextTranslationJobPropertiesList then
      FTextTranslationJobPropertiesList.Free;
    FTextTranslationJobPropertiesList := Value;
  end;
end;

function TListTextTranslationJobsResponse.GetKeepTextTranslationJobPropertiesList: Boolean;
begin
  Result := FKeepTextTranslationJobPropertiesList;
end;

procedure TListTextTranslationJobsResponse.SetKeepTextTranslationJobPropertiesList(const Value: Boolean);
begin
  FKeepTextTranslationJobPropertiesList := Value;
end;

function TListTextTranslationJobsResponse.IsSetTextTranslationJobPropertiesList: Boolean;
begin
  Result := (FTextTranslationJobPropertiesList <> nil) and (FTextTranslationJobPropertiesList.Count > 0);
end;

end.
