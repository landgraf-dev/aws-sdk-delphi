unit AWS.SSM.Model.DeleteInventoryRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDeleteInventoryRequest = class;
  
  IDeleteInventoryRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDryRun: Boolean;
    procedure SetDryRun(const Value: Boolean);
    function GetSchemaDeleteOption: TInventorySchemaDeleteOption;
    procedure SetSchemaDeleteOption(const Value: TInventorySchemaDeleteOption);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TDeleteInventoryRequest;
    function IsSetClientToken: Boolean;
    function IsSetDryRun: Boolean;
    function IsSetSchemaDeleteOption: Boolean;
    function IsSetTypeName: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DryRun: Boolean read GetDryRun write SetDryRun;
    property SchemaDeleteOption: TInventorySchemaDeleteOption read GetSchemaDeleteOption write SetSchemaDeleteOption;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TDeleteInventoryRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteInventoryRequest)
  strict private
    FClientToken: Nullable<string>;
    FDryRun: Nullable<Boolean>;
    FSchemaDeleteOption: Nullable<TInventorySchemaDeleteOption>;
    FTypeName: Nullable<string>;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDryRun: Boolean;
    procedure SetDryRun(const Value: Boolean);
    function GetSchemaDeleteOption: TInventorySchemaDeleteOption;
    procedure SetSchemaDeleteOption(const Value: TInventorySchemaDeleteOption);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TDeleteInventoryRequest;
  public
    function IsSetClientToken: Boolean;
    function IsSetDryRun: Boolean;
    function IsSetSchemaDeleteOption: Boolean;
    function IsSetTypeName: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DryRun: Boolean read GetDryRun write SetDryRun;
    property SchemaDeleteOption: TInventorySchemaDeleteOption read GetSchemaDeleteOption write SetSchemaDeleteOption;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TDeleteInventoryRequest }

function TDeleteInventoryRequest.Obj: TDeleteInventoryRequest;
begin
  Result := Self;
end;

function TDeleteInventoryRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TDeleteInventoryRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TDeleteInventoryRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TDeleteInventoryRequest.GetDryRun: Boolean;
begin
  Result := FDryRun.ValueOrDefault;
end;

procedure TDeleteInventoryRequest.SetDryRun(const Value: Boolean);
begin
  FDryRun := Value;
end;

function TDeleteInventoryRequest.IsSetDryRun: Boolean;
begin
  Result := FDryRun.HasValue;
end;

function TDeleteInventoryRequest.GetSchemaDeleteOption: TInventorySchemaDeleteOption;
begin
  Result := FSchemaDeleteOption.ValueOrDefault;
end;

procedure TDeleteInventoryRequest.SetSchemaDeleteOption(const Value: TInventorySchemaDeleteOption);
begin
  FSchemaDeleteOption := Value;
end;

function TDeleteInventoryRequest.IsSetSchemaDeleteOption: Boolean;
begin
  Result := FSchemaDeleteOption.HasValue;
end;

function TDeleteInventoryRequest.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TDeleteInventoryRequest.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TDeleteInventoryRequest.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
