unit AWS.SSM.Model.GetOpsItemRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetOpsItemRequest = class;
  
  IGetOpsItemRequest = interface
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function Obj: TGetOpsItemRequest;
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
  TGetOpsItemRequest = class(TAmazonSimpleSystemsManagementRequest, IGetOpsItemRequest)
  strict private
    FOpsItemId: Nullable<string>;
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  strict protected
    function Obj: TGetOpsItemRequest;
  public
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ TGetOpsItemRequest }

function TGetOpsItemRequest.Obj: TGetOpsItemRequest;
begin
  Result := Self;
end;

function TGetOpsItemRequest.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TGetOpsItemRequest.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TGetOpsItemRequest.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.
