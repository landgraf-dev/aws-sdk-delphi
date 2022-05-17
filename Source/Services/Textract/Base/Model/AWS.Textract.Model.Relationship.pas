unit AWS.Textract.Model.Relationship;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Textract.Enums;

type
  TRelationship = class;
  
  IRelationship = interface
    function GetIds: TList<string>;
    procedure SetIds(const Value: TList<string>);
    function GetKeepIds: Boolean;
    procedure SetKeepIds(const Value: Boolean);
    function GetType: TRelationshipType;
    procedure SetType(const Value: TRelationshipType);
    function Obj: TRelationship;
    function IsSetIds: Boolean;
    function IsSetType: Boolean;
    property Ids: TList<string> read GetIds write SetIds;
    property KeepIds: Boolean read GetKeepIds write SetKeepIds;
    property &Type: TRelationshipType read GetType write SetType;
  end;
  
  TRelationship = class
  strict private
    FIds: TList<string>;
    FKeepIds: Boolean;
    FType: Nullable<TRelationshipType>;
    function GetIds: TList<string>;
    procedure SetIds(const Value: TList<string>);
    function GetKeepIds: Boolean;
    procedure SetKeepIds(const Value: Boolean);
    function GetType: TRelationshipType;
    procedure SetType(const Value: TRelationshipType);
  strict protected
    function Obj: TRelationship;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIds: Boolean;
    function IsSetType: Boolean;
    property Ids: TList<string> read GetIds write SetIds;
    property KeepIds: Boolean read GetKeepIds write SetKeepIds;
    property &Type: TRelationshipType read GetType write SetType;
  end;
  
implementation

{ TRelationship }

constructor TRelationship.Create;
begin
  inherited;
  FIds := TList<string>.Create;
end;

destructor TRelationship.Destroy;
begin
  Ids := nil;
  inherited;
end;

function TRelationship.Obj: TRelationship;
begin
  Result := Self;
end;

function TRelationship.GetIds: TList<string>;
begin
  Result := FIds;
end;

procedure TRelationship.SetIds(const Value: TList<string>);
begin
  if FIds <> Value then
  begin
    if not KeepIds then
      FIds.Free;
    FIds := Value;
  end;
end;

function TRelationship.GetKeepIds: Boolean;
begin
  Result := FKeepIds;
end;

procedure TRelationship.SetKeepIds(const Value: Boolean);
begin
  FKeepIds := Value;
end;

function TRelationship.IsSetIds: Boolean;
begin
  Result := (FIds <> nil) and (FIds.Count > 0);
end;

function TRelationship.GetType: TRelationshipType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TRelationship.SetType(const Value: TRelationshipType);
begin
  FType := Value;
end;

function TRelationship.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
