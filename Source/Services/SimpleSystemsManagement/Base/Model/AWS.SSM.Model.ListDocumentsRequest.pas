unit AWS.SSM.Model.ListDocumentsRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.DocumentFilter, 
  AWS.SSM.Model.DocumentKeyValuesFilter, 
  AWS.Nullable;

type
  TListDocumentsRequest = class;
  
  IListDocumentsRequest = interface
    function GetDocumentFilterList: TObjectList<TDocumentFilter>;
    procedure SetDocumentFilterList(const Value: TObjectList<TDocumentFilter>);
    function GetKeepDocumentFilterList: Boolean;
    procedure SetKeepDocumentFilterList(const Value: Boolean);
    function GetFilters: TObjectList<TDocumentKeyValuesFilter>;
    procedure SetFilters(const Value: TObjectList<TDocumentKeyValuesFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentsRequest;
    function IsSetDocumentFilterList: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentFilterList: TObjectList<TDocumentFilter> read GetDocumentFilterList write SetDocumentFilterList;
    property KeepDocumentFilterList: Boolean read GetKeepDocumentFilterList write SetKeepDocumentFilterList;
    property Filters: TObjectList<TDocumentKeyValuesFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentsRequest = class(TAmazonSimpleSystemsManagementRequest, IListDocumentsRequest)
  strict private
    FDocumentFilterList: TObjectList<TDocumentFilter>;
    FKeepDocumentFilterList: Boolean;
    FFilters: TObjectList<TDocumentKeyValuesFilter>;
    FKeepFilters: Boolean;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    function GetDocumentFilterList: TObjectList<TDocumentFilter>;
    procedure SetDocumentFilterList(const Value: TObjectList<TDocumentFilter>);
    function GetKeepDocumentFilterList: Boolean;
    procedure SetKeepDocumentFilterList(const Value: Boolean);
    function GetFilters: TObjectList<TDocumentKeyValuesFilter>;
    procedure SetFilters(const Value: TObjectList<TDocumentKeyValuesFilter>);
    function GetKeepFilters: Boolean;
    procedure SetKeepFilters(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentsRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ADocumentFilterList: TObjectList<TDocumentFilter>); overload;
    function IsSetDocumentFilterList: Boolean;
    function IsSetFilters: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentFilterList: TObjectList<TDocumentFilter> read GetDocumentFilterList write SetDocumentFilterList;
    property KeepDocumentFilterList: Boolean read GetKeepDocumentFilterList write SetKeepDocumentFilterList;
    property Filters: TObjectList<TDocumentKeyValuesFilter> read GetFilters write SetFilters;
    property KeepFilters: Boolean read GetKeepFilters write SetKeepFilters;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentsRequest }

constructor TListDocumentsRequest.Create;
begin
  inherited;
  FDocumentFilterList := TObjectList<TDocumentFilter>.Create;
  FFilters := TObjectList<TDocumentKeyValuesFilter>.Create;
end;

destructor TListDocumentsRequest.Destroy;
begin
  Filters := nil;
  DocumentFilterList := nil;
  inherited;
end;

function TListDocumentsRequest.Obj: TListDocumentsRequest;
begin
  Result := Self;
end;

constructor TListDocumentsRequest.Create(const ADocumentFilterList: TObjectList<TDocumentFilter>);
begin
  Create;
  DocumentFilterList := ADocumentFilterList;
end;

function TListDocumentsRequest.GetDocumentFilterList: TObjectList<TDocumentFilter>;
begin
  Result := FDocumentFilterList;
end;

procedure TListDocumentsRequest.SetDocumentFilterList(const Value: TObjectList<TDocumentFilter>);
begin
  if FDocumentFilterList <> Value then
  begin
    if not KeepDocumentFilterList then
      FDocumentFilterList.Free;
    FDocumentFilterList := Value;
  end;
end;

function TListDocumentsRequest.GetKeepDocumentFilterList: Boolean;
begin
  Result := FKeepDocumentFilterList;
end;

procedure TListDocumentsRequest.SetKeepDocumentFilterList(const Value: Boolean);
begin
  FKeepDocumentFilterList := Value;
end;

function TListDocumentsRequest.IsSetDocumentFilterList: Boolean;
begin
  Result := (FDocumentFilterList <> nil) and (FDocumentFilterList.Count > 0);
end;

function TListDocumentsRequest.GetFilters: TObjectList<TDocumentKeyValuesFilter>;
begin
  Result := FFilters;
end;

procedure TListDocumentsRequest.SetFilters(const Value: TObjectList<TDocumentKeyValuesFilter>);
begin
  if FFilters <> Value then
  begin
    if not KeepFilters then
      FFilters.Free;
    FFilters := Value;
  end;
end;

function TListDocumentsRequest.GetKeepFilters: Boolean;
begin
  Result := FKeepFilters;
end;

procedure TListDocumentsRequest.SetKeepFilters(const Value: Boolean);
begin
  FKeepFilters := Value;
end;

function TListDocumentsRequest.IsSetFilters: Boolean;
begin
  Result := (FFilters <> nil) and (FFilters.Count > 0);
end;

function TListDocumentsRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TListDocumentsRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TListDocumentsRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TListDocumentsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
