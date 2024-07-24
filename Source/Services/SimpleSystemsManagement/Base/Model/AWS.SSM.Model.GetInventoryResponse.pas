unit AWS.SSM.Model.GetInventoryResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InventoryResultEntity, 
  AWS.Nullable;

type
  TGetInventoryResponse = class;
  
  IGetInventoryResponse = interface(IAmazonWebServiceResponse)
    function GetEntities: TObjectList<TInventoryResultEntity>;
    procedure SetEntities(const Value: TObjectList<TInventoryResultEntity>);
    function GetKeepEntities: Boolean;
    procedure SetKeepEntities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetInventoryResponse;
    function IsSetEntities: Boolean;
    function IsSetNextToken: Boolean;
    property Entities: TObjectList<TInventoryResultEntity> read GetEntities write SetEntities;
    property KeepEntities: Boolean read GetKeepEntities write SetKeepEntities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetInventoryResponse = class(TAmazonWebServiceResponse, IGetInventoryResponse)
  strict private
    FEntities: TObjectList<TInventoryResultEntity>;
    FKeepEntities: Boolean;
    FNextToken: Nullable<string>;
    function GetEntities: TObjectList<TInventoryResultEntity>;
    procedure SetEntities(const Value: TObjectList<TInventoryResultEntity>);
    function GetKeepEntities: Boolean;
    procedure SetKeepEntities(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TGetInventoryResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEntities: Boolean;
    function IsSetNextToken: Boolean;
    property Entities: TObjectList<TInventoryResultEntity> read GetEntities write SetEntities;
    property KeepEntities: Boolean read GetKeepEntities write SetKeepEntities;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetInventoryResponse }

constructor TGetInventoryResponse.Create;
begin
  inherited;
  FEntities := TObjectList<TInventoryResultEntity>.Create;
end;

destructor TGetInventoryResponse.Destroy;
begin
  Entities := nil;
  inherited;
end;

function TGetInventoryResponse.Obj: TGetInventoryResponse;
begin
  Result := Self;
end;

function TGetInventoryResponse.GetEntities: TObjectList<TInventoryResultEntity>;
begin
  Result := FEntities;
end;

procedure TGetInventoryResponse.SetEntities(const Value: TObjectList<TInventoryResultEntity>);
begin
  if FEntities <> Value then
  begin
    if not KeepEntities then
      FEntities.Free;
    FEntities := Value;
  end;
end;

function TGetInventoryResponse.GetKeepEntities: Boolean;
begin
  Result := FKeepEntities;
end;

procedure TGetInventoryResponse.SetKeepEntities(const Value: Boolean);
begin
  FKeepEntities := Value;
end;

function TGetInventoryResponse.IsSetEntities: Boolean;
begin
  Result := (FEntities <> nil) and (FEntities.Count > 0);
end;

function TGetInventoryResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetInventoryResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetInventoryResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
