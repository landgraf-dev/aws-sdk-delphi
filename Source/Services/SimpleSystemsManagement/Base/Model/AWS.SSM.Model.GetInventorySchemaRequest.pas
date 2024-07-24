unit AWS.SSM.Model.GetInventorySchemaRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetInventorySchemaRequest = class;
  
  IGetInventorySchemaRequest = interface
    function GetAggregator: Boolean;
    procedure SetAggregator(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSubType: Boolean;
    procedure SetSubType(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TGetInventorySchemaRequest;
    function IsSetAggregator: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSubType: Boolean;
    function IsSetTypeName: Boolean;
    property Aggregator: Boolean read GetAggregator write SetAggregator;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SubType: Boolean read GetSubType write SetSubType;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TGetInventorySchemaRequest = class(TAmazonSimpleSystemsManagementRequest, IGetInventorySchemaRequest)
  strict private
    FAggregator: Nullable<Boolean>;
    FMaxResults: Nullable<Integer>;
    FNextToken: Nullable<string>;
    FSubType: Nullable<Boolean>;
    FTypeName: Nullable<string>;
    function GetAggregator: Boolean;
    procedure SetAggregator(const Value: Boolean);
    function GetMaxResults: Integer;
    procedure SetMaxResults(const Value: Integer);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSubType: Boolean;
    procedure SetSubType(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TGetInventorySchemaRequest;
  public
    function IsSetAggregator: Boolean;
    function IsSetMaxResults: Boolean;
    function IsSetNextToken: Boolean;
    function IsSetSubType: Boolean;
    function IsSetTypeName: Boolean;
    property Aggregator: Boolean read GetAggregator write SetAggregator;
    property MaxResults: Integer read GetMaxResults write SetMaxResults;
    property NextToken: string read GetNextToken write SetNextToken;
    property SubType: Boolean read GetSubType write SetSubType;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TGetInventorySchemaRequest }

function TGetInventorySchemaRequest.Obj: TGetInventorySchemaRequest;
begin
  Result := Self;
end;

function TGetInventorySchemaRequest.GetAggregator: Boolean;
begin
  Result := FAggregator.ValueOrDefault;
end;

procedure TGetInventorySchemaRequest.SetAggregator(const Value: Boolean);
begin
  FAggregator := Value;
end;

function TGetInventorySchemaRequest.IsSetAggregator: Boolean;
begin
  Result := FAggregator.HasValue;
end;

function TGetInventorySchemaRequest.GetMaxResults: Integer;
begin
  Result := FMaxResults.ValueOrDefault;
end;

procedure TGetInventorySchemaRequest.SetMaxResults(const Value: Integer);
begin
  FMaxResults := Value;
end;

function TGetInventorySchemaRequest.IsSetMaxResults: Boolean;
begin
  Result := FMaxResults.HasValue;
end;

function TGetInventorySchemaRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetInventorySchemaRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetInventorySchemaRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetInventorySchemaRequest.GetSubType: Boolean;
begin
  Result := FSubType.ValueOrDefault;
end;

procedure TGetInventorySchemaRequest.SetSubType(const Value: Boolean);
begin
  FSubType := Value;
end;

function TGetInventorySchemaRequest.IsSetSubType: Boolean;
begin
  Result := FSubType.HasValue;
end;

function TGetInventorySchemaRequest.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TGetInventorySchemaRequest.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TGetInventorySchemaRequest.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
