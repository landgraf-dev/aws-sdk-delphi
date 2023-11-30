unit AWS.Textract.Model.Block;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Textract.Enums, 
  AWS.Textract.Model.Geometry, 
  AWS.Textract.Model.Query, 
  AWS.Textract.Model.Relationship;

type
  TBlock = class;
  
  IBlock = interface
    function GetBlockType: TBlockType;
    procedure SetBlockType(const Value: TBlockType);
    function GetColumnIndex: Integer;
    procedure SetColumnIndex(const Value: Integer);
    function GetColumnSpan: Integer;
    procedure SetColumnSpan(const Value: Integer);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEntityTypes: TList<string>;
    procedure SetEntityTypes(const Value: TList<string>);
    function GetKeepEntityTypes: Boolean;
    procedure SetKeepEntityTypes(const Value: Boolean);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetPage: Integer;
    procedure SetPage(const Value: Integer);
    function GetQuery: TQuery;
    procedure SetQuery(const Value: TQuery);
    function GetKeepQuery: Boolean;
    procedure SetKeepQuery(const Value: Boolean);
    function GetRelationships: TObjectList<TRelationship>;
    procedure SetRelationships(const Value: TObjectList<TRelationship>);
    function GetKeepRelationships: Boolean;
    procedure SetKeepRelationships(const Value: Boolean);
    function GetRowIndex: Integer;
    procedure SetRowIndex(const Value: Integer);
    function GetRowSpan: Integer;
    procedure SetRowSpan(const Value: Integer);
    function GetSelectionStatus: TSelectionStatus;
    procedure SetSelectionStatus(const Value: TSelectionStatus);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
    function Obj: TBlock;
    function IsSetBlockType: Boolean;
    function IsSetColumnIndex: Boolean;
    function IsSetColumnSpan: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetEntityTypes: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetId: Boolean;
    function IsSetPage: Boolean;
    function IsSetQuery: Boolean;
    function IsSetRelationships: Boolean;
    function IsSetRowIndex: Boolean;
    function IsSetRowSpan: Boolean;
    function IsSetSelectionStatus: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    property BlockType: TBlockType read GetBlockType write SetBlockType;
    property ColumnIndex: Integer read GetColumnIndex write SetColumnIndex;
    property ColumnSpan: Integer read GetColumnSpan write SetColumnSpan;
    property Confidence: Double read GetConfidence write SetConfidence;
    property EntityTypes: TList<string> read GetEntityTypes write SetEntityTypes;
    property KeepEntityTypes: Boolean read GetKeepEntityTypes write SetKeepEntityTypes;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Id: string read GetId write SetId;
    property Page: Integer read GetPage write SetPage;
    property Query: TQuery read GetQuery write SetQuery;
    property KeepQuery: Boolean read GetKeepQuery write SetKeepQuery;
    property Relationships: TObjectList<TRelationship> read GetRelationships write SetRelationships;
    property KeepRelationships: Boolean read GetKeepRelationships write SetKeepRelationships;
    property RowIndex: Integer read GetRowIndex write SetRowIndex;
    property RowSpan: Integer read GetRowSpan write SetRowSpan;
    property SelectionStatus: TSelectionStatus read GetSelectionStatus write SetSelectionStatus;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
  end;
  
  TBlock = class
  strict private
    FBlockType: Nullable<TBlockType>;
    FColumnIndex: Nullable<Integer>;
    FColumnSpan: Nullable<Integer>;
    FConfidence: Nullable<Double>;
    FEntityTypes: TList<string>;
    FKeepEntityTypes: Boolean;
    FGeometry: TGeometry;
    FKeepGeometry: Boolean;
    FId: Nullable<string>;
    FPage: Nullable<Integer>;
    FQuery: TQuery;
    FKeepQuery: Boolean;
    FRelationships: TObjectList<TRelationship>;
    FKeepRelationships: Boolean;
    FRowIndex: Nullable<Integer>;
    FRowSpan: Nullable<Integer>;
    FSelectionStatus: Nullable<TSelectionStatus>;
    FText: Nullable<string>;
    FTextType: Nullable<TTextType>;
    function GetBlockType: TBlockType;
    procedure SetBlockType(const Value: TBlockType);
    function GetColumnIndex: Integer;
    procedure SetColumnIndex(const Value: Integer);
    function GetColumnSpan: Integer;
    procedure SetColumnSpan(const Value: Integer);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetEntityTypes: TList<string>;
    procedure SetEntityTypes(const Value: TList<string>);
    function GetKeepEntityTypes: Boolean;
    procedure SetKeepEntityTypes(const Value: Boolean);
    function GetGeometry: TGeometry;
    procedure SetGeometry(const Value: TGeometry);
    function GetKeepGeometry: Boolean;
    procedure SetKeepGeometry(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetPage: Integer;
    procedure SetPage(const Value: Integer);
    function GetQuery: TQuery;
    procedure SetQuery(const Value: TQuery);
    function GetKeepQuery: Boolean;
    procedure SetKeepQuery(const Value: Boolean);
    function GetRelationships: TObjectList<TRelationship>;
    procedure SetRelationships(const Value: TObjectList<TRelationship>);
    function GetKeepRelationships: Boolean;
    procedure SetKeepRelationships(const Value: Boolean);
    function GetRowIndex: Integer;
    procedure SetRowIndex(const Value: Integer);
    function GetRowSpan: Integer;
    procedure SetRowSpan(const Value: Integer);
    function GetSelectionStatus: TSelectionStatus;
    procedure SetSelectionStatus(const Value: TSelectionStatus);
    function GetText: string;
    procedure SetText(const Value: string);
    function GetTextType: TTextType;
    procedure SetTextType(const Value: TTextType);
  strict protected
    function Obj: TBlock;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBlockType: Boolean;
    function IsSetColumnIndex: Boolean;
    function IsSetColumnSpan: Boolean;
    function IsSetConfidence: Boolean;
    function IsSetEntityTypes: Boolean;
    function IsSetGeometry: Boolean;
    function IsSetId: Boolean;
    function IsSetPage: Boolean;
    function IsSetQuery: Boolean;
    function IsSetRelationships: Boolean;
    function IsSetRowIndex: Boolean;
    function IsSetRowSpan: Boolean;
    function IsSetSelectionStatus: Boolean;
    function IsSetText: Boolean;
    function IsSetTextType: Boolean;
    property BlockType: TBlockType read GetBlockType write SetBlockType;
    property ColumnIndex: Integer read GetColumnIndex write SetColumnIndex;
    property ColumnSpan: Integer read GetColumnSpan write SetColumnSpan;
    property Confidence: Double read GetConfidence write SetConfidence;
    property EntityTypes: TList<string> read GetEntityTypes write SetEntityTypes;
    property KeepEntityTypes: Boolean read GetKeepEntityTypes write SetKeepEntityTypes;
    property Geometry: TGeometry read GetGeometry write SetGeometry;
    property KeepGeometry: Boolean read GetKeepGeometry write SetKeepGeometry;
    property Id: string read GetId write SetId;
    property Page: Integer read GetPage write SetPage;
    property Query: TQuery read GetQuery write SetQuery;
    property KeepQuery: Boolean read GetKeepQuery write SetKeepQuery;
    property Relationships: TObjectList<TRelationship> read GetRelationships write SetRelationships;
    property KeepRelationships: Boolean read GetKeepRelationships write SetKeepRelationships;
    property RowIndex: Integer read GetRowIndex write SetRowIndex;
    property RowSpan: Integer read GetRowSpan write SetRowSpan;
    property SelectionStatus: TSelectionStatus read GetSelectionStatus write SetSelectionStatus;
    property Text: string read GetText write SetText;
    property TextType: TTextType read GetTextType write SetTextType;
  end;
  
implementation

{ TBlock }

constructor TBlock.Create;
begin
  inherited;
  FEntityTypes := TList<string>.Create;
  FRelationships := TObjectList<TRelationship>.Create;
end;

destructor TBlock.Destroy;
begin
  Relationships := nil;
  Query := nil;
  Geometry := nil;
  EntityTypes := nil;
  inherited;
end;

function TBlock.Obj: TBlock;
begin
  Result := Self;
end;

function TBlock.GetBlockType: TBlockType;
begin
  Result := FBlockType.ValueOrDefault;
end;

procedure TBlock.SetBlockType(const Value: TBlockType);
begin
  FBlockType := Value;
end;

function TBlock.IsSetBlockType: Boolean;
begin
  Result := FBlockType.HasValue;
end;

function TBlock.GetColumnIndex: Integer;
begin
  Result := FColumnIndex.ValueOrDefault;
end;

procedure TBlock.SetColumnIndex(const Value: Integer);
begin
  FColumnIndex := Value;
end;

function TBlock.IsSetColumnIndex: Boolean;
begin
  Result := FColumnIndex.HasValue;
end;

function TBlock.GetColumnSpan: Integer;
begin
  Result := FColumnSpan.ValueOrDefault;
end;

procedure TBlock.SetColumnSpan(const Value: Integer);
begin
  FColumnSpan := Value;
end;

function TBlock.IsSetColumnSpan: Boolean;
begin
  Result := FColumnSpan.HasValue;
end;

function TBlock.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TBlock.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TBlock.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TBlock.GetEntityTypes: TList<string>;
begin
  Result := FEntityTypes;
end;

procedure TBlock.SetEntityTypes(const Value: TList<string>);
begin
  if FEntityTypes <> Value then
  begin
    if not KeepEntityTypes then
      FEntityTypes.Free;
    FEntityTypes := Value;
  end;
end;

function TBlock.GetKeepEntityTypes: Boolean;
begin
  Result := FKeepEntityTypes;
end;

procedure TBlock.SetKeepEntityTypes(const Value: Boolean);
begin
  FKeepEntityTypes := Value;
end;

function TBlock.IsSetEntityTypes: Boolean;
begin
  Result := (FEntityTypes <> nil) and (FEntityTypes.Count > 0);
end;

function TBlock.GetGeometry: TGeometry;
begin
  Result := FGeometry;
end;

procedure TBlock.SetGeometry(const Value: TGeometry);
begin
  if FGeometry <> Value then
  begin
    if not KeepGeometry then
      FGeometry.Free;
    FGeometry := Value;
  end;
end;

function TBlock.GetKeepGeometry: Boolean;
begin
  Result := FKeepGeometry;
end;

procedure TBlock.SetKeepGeometry(const Value: Boolean);
begin
  FKeepGeometry := Value;
end;

function TBlock.IsSetGeometry: Boolean;
begin
  Result := FGeometry <> nil;
end;

function TBlock.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TBlock.SetId(const Value: string);
begin
  FId := Value;
end;

function TBlock.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TBlock.GetPage: Integer;
begin
  Result := FPage.ValueOrDefault;
end;

procedure TBlock.SetPage(const Value: Integer);
begin
  FPage := Value;
end;

function TBlock.IsSetPage: Boolean;
begin
  Result := FPage.HasValue;
end;

function TBlock.GetQuery: TQuery;
begin
  Result := FQuery;
end;

procedure TBlock.SetQuery(const Value: TQuery);
begin
  if FQuery <> Value then
  begin
    if not KeepQuery then
      FQuery.Free;
    FQuery := Value;
  end;
end;

function TBlock.GetKeepQuery: Boolean;
begin
  Result := FKeepQuery;
end;

procedure TBlock.SetKeepQuery(const Value: Boolean);
begin
  FKeepQuery := Value;
end;

function TBlock.IsSetQuery: Boolean;
begin
  Result := FQuery <> nil;
end;

function TBlock.GetRelationships: TObjectList<TRelationship>;
begin
  Result := FRelationships;
end;

procedure TBlock.SetRelationships(const Value: TObjectList<TRelationship>);
begin
  if FRelationships <> Value then
  begin
    if not KeepRelationships then
      FRelationships.Free;
    FRelationships := Value;
  end;
end;

function TBlock.GetKeepRelationships: Boolean;
begin
  Result := FKeepRelationships;
end;

procedure TBlock.SetKeepRelationships(const Value: Boolean);
begin
  FKeepRelationships := Value;
end;

function TBlock.IsSetRelationships: Boolean;
begin
  Result := (FRelationships <> nil) and (FRelationships.Count > 0);
end;

function TBlock.GetRowIndex: Integer;
begin
  Result := FRowIndex.ValueOrDefault;
end;

procedure TBlock.SetRowIndex(const Value: Integer);
begin
  FRowIndex := Value;
end;

function TBlock.IsSetRowIndex: Boolean;
begin
  Result := FRowIndex.HasValue;
end;

function TBlock.GetRowSpan: Integer;
begin
  Result := FRowSpan.ValueOrDefault;
end;

procedure TBlock.SetRowSpan(const Value: Integer);
begin
  FRowSpan := Value;
end;

function TBlock.IsSetRowSpan: Boolean;
begin
  Result := FRowSpan.HasValue;
end;

function TBlock.GetSelectionStatus: TSelectionStatus;
begin
  Result := FSelectionStatus.ValueOrDefault;
end;

procedure TBlock.SetSelectionStatus(const Value: TSelectionStatus);
begin
  FSelectionStatus := Value;
end;

function TBlock.IsSetSelectionStatus: Boolean;
begin
  Result := FSelectionStatus.HasValue;
end;

function TBlock.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TBlock.SetText(const Value: string);
begin
  FText := Value;
end;

function TBlock.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

function TBlock.GetTextType: TTextType;
begin
  Result := FTextType.ValueOrDefault;
end;

procedure TBlock.SetTextType(const Value: TTextType);
begin
  FTextType := Value;
end;

function TBlock.IsSetTextType: Boolean;
begin
  Result := FTextType.HasValue;
end;

end.
