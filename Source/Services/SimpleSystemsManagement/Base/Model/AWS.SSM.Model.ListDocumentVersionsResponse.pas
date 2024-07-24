unit AWS.SSM.Model.ListDocumentVersionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentVersionInfo, 
  AWS.Nullable;

type
  TListDocumentVersionsResponse = class;
  
  IListDocumentVersionsResponse = interface(IAmazonWebServiceResponse)
    function GetDocumentVersions: TObjectList<TDocumentVersionInfo>;
    procedure SetDocumentVersions(const Value: TObjectList<TDocumentVersionInfo>);
    function GetKeepDocumentVersions: Boolean;
    procedure SetKeepDocumentVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentVersionsResponse;
    function IsSetDocumentVersions: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentVersions: TObjectList<TDocumentVersionInfo> read GetDocumentVersions write SetDocumentVersions;
    property KeepDocumentVersions: Boolean read GetKeepDocumentVersions write SetKeepDocumentVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentVersionsResponse = class(TAmazonWebServiceResponse, IListDocumentVersionsResponse)
  strict private
    FDocumentVersions: TObjectList<TDocumentVersionInfo>;
    FKeepDocumentVersions: Boolean;
    FNextToken: Nullable<string>;
    function GetDocumentVersions: TObjectList<TDocumentVersionInfo>;
    procedure SetDocumentVersions(const Value: TObjectList<TDocumentVersionInfo>);
    function GetKeepDocumentVersions: Boolean;
    procedure SetKeepDocumentVersions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentVersionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentVersions: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentVersions: TObjectList<TDocumentVersionInfo> read GetDocumentVersions write SetDocumentVersions;
    property KeepDocumentVersions: Boolean read GetKeepDocumentVersions write SetKeepDocumentVersions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentVersionsResponse }

constructor TListDocumentVersionsResponse.Create;
begin
  inherited;
  FDocumentVersions := TObjectList<TDocumentVersionInfo>.Create;
end;

destructor TListDocumentVersionsResponse.Destroy;
begin
  DocumentVersions := nil;
  inherited;
end;

function TListDocumentVersionsResponse.Obj: TListDocumentVersionsResponse;
begin
  Result := Self;
end;

function TListDocumentVersionsResponse.GetDocumentVersions: TObjectList<TDocumentVersionInfo>;
begin
  Result := FDocumentVersions;
end;

procedure TListDocumentVersionsResponse.SetDocumentVersions(const Value: TObjectList<TDocumentVersionInfo>);
begin
  if FDocumentVersions <> Value then
  begin
    if not KeepDocumentVersions then
      FDocumentVersions.Free;
    FDocumentVersions := Value;
  end;
end;

function TListDocumentVersionsResponse.GetKeepDocumentVersions: Boolean;
begin
  Result := FKeepDocumentVersions;
end;

procedure TListDocumentVersionsResponse.SetKeepDocumentVersions(const Value: Boolean);
begin
  FKeepDocumentVersions := Value;
end;

function TListDocumentVersionsResponse.IsSetDocumentVersions: Boolean;
begin
  Result := (FDocumentVersions <> nil) and (FDocumentVersions.Count > 0);
end;

function TListDocumentVersionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentVersionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentVersionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
