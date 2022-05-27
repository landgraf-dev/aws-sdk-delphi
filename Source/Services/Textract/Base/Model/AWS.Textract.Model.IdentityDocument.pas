unit AWS.Textract.Model.IdentityDocument;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Textract.Model.IdentityDocumentField;

type
  TIdentityDocument = class;
  
  IIdentityDocument = interface
    function GetDocumentIndex: Integer;
    procedure SetDocumentIndex(const Value: Integer);
    function GetIdentityDocumentFields: TObjectList<TIdentityDocumentField>;
    procedure SetIdentityDocumentFields(const Value: TObjectList<TIdentityDocumentField>);
    function GetKeepIdentityDocumentFields: Boolean;
    procedure SetKeepIdentityDocumentFields(const Value: Boolean);
    function Obj: TIdentityDocument;
    function IsSetDocumentIndex: Boolean;
    function IsSetIdentityDocumentFields: Boolean;
    property DocumentIndex: Integer read GetDocumentIndex write SetDocumentIndex;
    property IdentityDocumentFields: TObjectList<TIdentityDocumentField> read GetIdentityDocumentFields write SetIdentityDocumentFields;
    property KeepIdentityDocumentFields: Boolean read GetKeepIdentityDocumentFields write SetKeepIdentityDocumentFields;
  end;
  
  TIdentityDocument = class
  strict private
    FDocumentIndex: Nullable<Integer>;
    FIdentityDocumentFields: TObjectList<TIdentityDocumentField>;
    FKeepIdentityDocumentFields: Boolean;
    function GetDocumentIndex: Integer;
    procedure SetDocumentIndex(const Value: Integer);
    function GetIdentityDocumentFields: TObjectList<TIdentityDocumentField>;
    procedure SetIdentityDocumentFields(const Value: TObjectList<TIdentityDocumentField>);
    function GetKeepIdentityDocumentFields: Boolean;
    procedure SetKeepIdentityDocumentFields(const Value: Boolean);
  strict protected
    function Obj: TIdentityDocument;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDocumentIndex: Boolean;
    function IsSetIdentityDocumentFields: Boolean;
    property DocumentIndex: Integer read GetDocumentIndex write SetDocumentIndex;
    property IdentityDocumentFields: TObjectList<TIdentityDocumentField> read GetIdentityDocumentFields write SetIdentityDocumentFields;
    property KeepIdentityDocumentFields: Boolean read GetKeepIdentityDocumentFields write SetKeepIdentityDocumentFields;
  end;
  
implementation

{ TIdentityDocument }

constructor TIdentityDocument.Create;
begin
  inherited;
  FIdentityDocumentFields := TObjectList<TIdentityDocumentField>.Create;
end;

destructor TIdentityDocument.Destroy;
begin
  IdentityDocumentFields := nil;
  inherited;
end;

function TIdentityDocument.Obj: TIdentityDocument;
begin
  Result := Self;
end;

function TIdentityDocument.GetDocumentIndex: Integer;
begin
  Result := FDocumentIndex.ValueOrDefault;
end;

procedure TIdentityDocument.SetDocumentIndex(const Value: Integer);
begin
  FDocumentIndex := Value;
end;

function TIdentityDocument.IsSetDocumentIndex: Boolean;
begin
  Result := FDocumentIndex.HasValue;
end;

function TIdentityDocument.GetIdentityDocumentFields: TObjectList<TIdentityDocumentField>;
begin
  Result := FIdentityDocumentFields;
end;

procedure TIdentityDocument.SetIdentityDocumentFields(const Value: TObjectList<TIdentityDocumentField>);
begin
  if FIdentityDocumentFields <> Value then
  begin
    if not KeepIdentityDocumentFields then
      FIdentityDocumentFields.Free;
    FIdentityDocumentFields := Value;
  end;
end;

function TIdentityDocument.GetKeepIdentityDocumentFields: Boolean;
begin
  Result := FKeepIdentityDocumentFields;
end;

procedure TIdentityDocument.SetKeepIdentityDocumentFields(const Value: Boolean);
begin
  FKeepIdentityDocumentFields := Value;
end;

function TIdentityDocument.IsSetIdentityDocumentFields: Boolean;
begin
  Result := (FIdentityDocumentFields <> nil) and (FIdentityDocumentFields.Count > 0);
end;

end.
