unit AWS.SSM.Model.DeleteInventoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.InventoryDeletionSummary;

type
  TDeleteInventoryResponse = class;
  
  IDeleteInventoryResponse = interface(IAmazonWebServiceResponse)
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetDeletionSummary: TInventoryDeletionSummary;
    procedure SetDeletionSummary(const Value: TInventoryDeletionSummary);
    function GetKeepDeletionSummary: Boolean;
    procedure SetKeepDeletionSummary(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TDeleteInventoryResponse;
    function IsSetDeletionId: Boolean;
    function IsSetDeletionSummary: Boolean;
    function IsSetTypeName: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property DeletionSummary: TInventoryDeletionSummary read GetDeletionSummary write SetDeletionSummary;
    property KeepDeletionSummary: Boolean read GetKeepDeletionSummary write SetKeepDeletionSummary;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TDeleteInventoryResponse = class(TAmazonWebServiceResponse, IDeleteInventoryResponse)
  strict private
    FDeletionId: Nullable<string>;
    FDeletionSummary: TInventoryDeletionSummary;
    FKeepDeletionSummary: Boolean;
    FTypeName: Nullable<string>;
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetDeletionSummary: TInventoryDeletionSummary;
    procedure SetDeletionSummary(const Value: TInventoryDeletionSummary);
    function GetKeepDeletionSummary: Boolean;
    procedure SetKeepDeletionSummary(const Value: Boolean);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TDeleteInventoryResponse;
  public
    destructor Destroy; override;
    function IsSetDeletionId: Boolean;
    function IsSetDeletionSummary: Boolean;
    function IsSetTypeName: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property DeletionSummary: TInventoryDeletionSummary read GetDeletionSummary write SetDeletionSummary;
    property KeepDeletionSummary: Boolean read GetKeepDeletionSummary write SetKeepDeletionSummary;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TDeleteInventoryResponse }

destructor TDeleteInventoryResponse.Destroy;
begin
  DeletionSummary := nil;
  inherited;
end;

function TDeleteInventoryResponse.Obj: TDeleteInventoryResponse;
begin
  Result := Self;
end;

function TDeleteInventoryResponse.GetDeletionId: string;
begin
  Result := FDeletionId.ValueOrDefault;
end;

procedure TDeleteInventoryResponse.SetDeletionId(const Value: string);
begin
  FDeletionId := Value;
end;

function TDeleteInventoryResponse.IsSetDeletionId: Boolean;
begin
  Result := FDeletionId.HasValue;
end;

function TDeleteInventoryResponse.GetDeletionSummary: TInventoryDeletionSummary;
begin
  Result := FDeletionSummary;
end;

procedure TDeleteInventoryResponse.SetDeletionSummary(const Value: TInventoryDeletionSummary);
begin
  if FDeletionSummary <> Value then
  begin
    if not KeepDeletionSummary then
      FDeletionSummary.Free;
    FDeletionSummary := Value;
  end;
end;

function TDeleteInventoryResponse.GetKeepDeletionSummary: Boolean;
begin
  Result := FKeepDeletionSummary;
end;

procedure TDeleteInventoryResponse.SetKeepDeletionSummary(const Value: Boolean);
begin
  FKeepDeletionSummary := Value;
end;

function TDeleteInventoryResponse.IsSetDeletionSummary: Boolean;
begin
  Result := FDeletionSummary <> nil;
end;

function TDeleteInventoryResponse.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TDeleteInventoryResponse.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TDeleteInventoryResponse.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
