unit AWS.SSM.Model.GetInventorySchemaResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.InventoryItemSchema;

type
  TGetInventorySchemaResponse = class;
  
  IGetInventorySchemaResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSchemas: TObjectList<TInventoryItemSchema>;
    procedure SetSchemas(const Value: TObjectList<TInventoryItemSchema>);
    function GetKeepSchemas: Boolean;
    procedure SetKeepSchemas(const Value: Boolean);
    function Obj: TGetInventorySchemaResponse;
    function IsSetNextToken: Boolean;
    function IsSetSchemas: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Schemas: TObjectList<TInventoryItemSchema> read GetSchemas write SetSchemas;
    property KeepSchemas: Boolean read GetKeepSchemas write SetKeepSchemas;
  end;
  
  TGetInventorySchemaResponse = class(TAmazonWebServiceResponse, IGetInventorySchemaResponse)
  strict private
    FNextToken: Nullable<string>;
    FSchemas: TObjectList<TInventoryItemSchema>;
    FKeepSchemas: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSchemas: TObjectList<TInventoryItemSchema>;
    procedure SetSchemas(const Value: TObjectList<TInventoryItemSchema>);
    function GetKeepSchemas: Boolean;
    procedure SetKeepSchemas(const Value: Boolean);
  strict protected
    function Obj: TGetInventorySchemaResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSchemas: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Schemas: TObjectList<TInventoryItemSchema> read GetSchemas write SetSchemas;
    property KeepSchemas: Boolean read GetKeepSchemas write SetKeepSchemas;
  end;
  
implementation

{ TGetInventorySchemaResponse }

constructor TGetInventorySchemaResponse.Create;
begin
  inherited;
  FSchemas := TObjectList<TInventoryItemSchema>.Create;
end;

destructor TGetInventorySchemaResponse.Destroy;
begin
  Schemas := nil;
  inherited;
end;

function TGetInventorySchemaResponse.Obj: TGetInventorySchemaResponse;
begin
  Result := Self;
end;

function TGetInventorySchemaResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetInventorySchemaResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetInventorySchemaResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetInventorySchemaResponse.GetSchemas: TObjectList<TInventoryItemSchema>;
begin
  Result := FSchemas;
end;

procedure TGetInventorySchemaResponse.SetSchemas(const Value: TObjectList<TInventoryItemSchema>);
begin
  if FSchemas <> Value then
  begin
    if not KeepSchemas then
      FSchemas.Free;
    FSchemas := Value;
  end;
end;

function TGetInventorySchemaResponse.GetKeepSchemas: Boolean;
begin
  Result := FKeepSchemas;
end;

procedure TGetInventorySchemaResponse.SetKeepSchemas(const Value: Boolean);
begin
  FKeepSchemas := Value;
end;

function TGetInventorySchemaResponse.IsSetSchemas: Boolean;
begin
  Result := (FSchemas <> nil) and (FSchemas.Count > 0);
end;

end.
