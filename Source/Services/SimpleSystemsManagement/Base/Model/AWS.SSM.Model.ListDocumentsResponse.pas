unit AWS.SSM.Model.ListDocumentsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DocumentIdentifier, 
  AWS.Nullable;

type
  TListDocumentsResponse = class;
  
  IListDocumentsResponse = interface(IAmazonWebServiceResponse)
    function GetDocumentIdentifiers: TObjectList<TDocumentIdentifier>;
    procedure SetDocumentIdentifiers(const Value: TObjectList<TDocumentIdentifier>);
    function GetKeepDocumentIdentifiers: Boolean;
    procedure SetKeepDocumentIdentifiers(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDocumentsResponse;
    function IsSetDocumentIdentifiers: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentIdentifiers: TObjectList<TDocumentIdentifier> read GetDocumentIdentifiers write SetDocumentIdentifiers;
    property KeepDocumentIdentifiers: Boolean read GetKeepDocumentIdentifiers write SetKeepDocumentIdentifiers;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDocumentsResponse = class(TAmazonWebServiceResponse, IListDocumentsResponse)
  strict private
    FDocumentIdentifiers: TObjectList<TDocumentIdentifier>;
    FKeepDocumentIdentifiers: Boolean;
    FNextToken: Nullable<string>;
    function GetDocumentIdentifiers: TObjectList<TDocumentIdentifier>;
    procedure SetDocumentIdentifiers(const Value: TObjectList<TDocumentIdentifier>);
    function GetKeepDocumentIdentifiers: Boolean;
    procedure SetKeepDocumentIdentifiers(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDocumentsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentIdentifiers: Boolean;
    function IsSetNextToken: Boolean;
    property DocumentIdentifiers: TObjectList<TDocumentIdentifier> read GetDocumentIdentifiers write SetDocumentIdentifiers;
    property KeepDocumentIdentifiers: Boolean read GetKeepDocumentIdentifiers write SetKeepDocumentIdentifiers;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDocumentsResponse }

constructor TListDocumentsResponse.Create;
begin
  inherited;
  FDocumentIdentifiers := TObjectList<TDocumentIdentifier>.Create;
end;

destructor TListDocumentsResponse.Destroy;
begin
  DocumentIdentifiers := nil;
  inherited;
end;

function TListDocumentsResponse.Obj: TListDocumentsResponse;
begin
  Result := Self;
end;

function TListDocumentsResponse.GetDocumentIdentifiers: TObjectList<TDocumentIdentifier>;
begin
  Result := FDocumentIdentifiers;
end;

procedure TListDocumentsResponse.SetDocumentIdentifiers(const Value: TObjectList<TDocumentIdentifier>);
begin
  if FDocumentIdentifiers <> Value then
  begin
    if not KeepDocumentIdentifiers then
      FDocumentIdentifiers.Free;
    FDocumentIdentifiers := Value;
  end;
end;

function TListDocumentsResponse.GetKeepDocumentIdentifiers: Boolean;
begin
  Result := FKeepDocumentIdentifiers;
end;

procedure TListDocumentsResponse.SetKeepDocumentIdentifiers(const Value: Boolean);
begin
  FKeepDocumentIdentifiers := Value;
end;

function TListDocumentsResponse.IsSetDocumentIdentifiers: Boolean;
begin
  Result := (FDocumentIdentifiers <> nil) and (FDocumentIdentifiers.Count > 0);
end;

function TListDocumentsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDocumentsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDocumentsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
