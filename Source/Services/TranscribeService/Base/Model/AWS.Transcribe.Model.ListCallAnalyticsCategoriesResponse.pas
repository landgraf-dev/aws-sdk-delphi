unit AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CategoryProperties;

type
  TListCallAnalyticsCategoriesResponse = class;
  
  IListCallAnalyticsCategoriesResponse = interface(IAmazonWebServiceResponse)
    function GetCategories: TObjectList<TCategoryProperties>;
    procedure SetCategories(const Value: TObjectList<TCategoryProperties>);
    function GetKeepCategories: Boolean;
    procedure SetKeepCategories(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListCallAnalyticsCategoriesResponse;
    function IsSetCategories: Boolean;
    function IsSetNextToken: Boolean;
    property Categories: TObjectList<TCategoryProperties> read GetCategories write SetCategories;
    property KeepCategories: Boolean read GetKeepCategories write SetKeepCategories;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListCallAnalyticsCategoriesResponse = class(TAmazonWebServiceResponse, IListCallAnalyticsCategoriesResponse)
  strict private
    FCategories: TObjectList<TCategoryProperties>;
    FKeepCategories: Boolean;
    FNextToken: Nullable<string>;
    function GetCategories: TObjectList<TCategoryProperties>;
    procedure SetCategories(const Value: TObjectList<TCategoryProperties>);
    function GetKeepCategories: Boolean;
    procedure SetKeepCategories(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListCallAnalyticsCategoriesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCategories: Boolean;
    function IsSetNextToken: Boolean;
    property Categories: TObjectList<TCategoryProperties> read GetCategories write SetCategories;
    property KeepCategories: Boolean read GetKeepCategories write SetKeepCategories;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListCallAnalyticsCategoriesResponse }

constructor TListCallAnalyticsCategoriesResponse.Create;
begin
  inherited;
  FCategories := TObjectList<TCategoryProperties>.Create;
end;

destructor TListCallAnalyticsCategoriesResponse.Destroy;
begin
  Categories := nil;
  inherited;
end;

function TListCallAnalyticsCategoriesResponse.Obj: TListCallAnalyticsCategoriesResponse;
begin
  Result := Self;
end;

function TListCallAnalyticsCategoriesResponse.GetCategories: TObjectList<TCategoryProperties>;
begin
  Result := FCategories;
end;

procedure TListCallAnalyticsCategoriesResponse.SetCategories(const Value: TObjectList<TCategoryProperties>);
begin
  if FCategories <> Value then
  begin
    if not KeepCategories then
      FCategories.Free;
    FCategories := Value;
  end;
end;

function TListCallAnalyticsCategoriesResponse.GetKeepCategories: Boolean;
begin
  Result := FKeepCategories;
end;

procedure TListCallAnalyticsCategoriesResponse.SetKeepCategories(const Value: Boolean);
begin
  FKeepCategories := Value;
end;

function TListCallAnalyticsCategoriesResponse.IsSetCategories: Boolean;
begin
  Result := (FCategories <> nil) and (FCategories.Count > 0);
end;

function TListCallAnalyticsCategoriesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListCallAnalyticsCategoriesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListCallAnalyticsCategoriesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
