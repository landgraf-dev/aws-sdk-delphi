unit AWS.SSM.Model.CreateOpsItemResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreateOpsItemResponse = class;
  
  ICreateOpsItemResponse = interface(IAmazonWebServiceResponse)
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function Obj: TCreateOpsItemResponse;
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
  TCreateOpsItemResponse = class(TAmazonWebServiceResponse, ICreateOpsItemResponse)
  strict private
    FOpsItemId: Nullable<string>;
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
  strict protected
    function Obj: TCreateOpsItemResponse;
  public
    function IsSetOpsItemId: Boolean;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
  end;
  
implementation

{ TCreateOpsItemResponse }

function TCreateOpsItemResponse.Obj: TCreateOpsItemResponse;
begin
  Result := Self;
end;

function TCreateOpsItemResponse.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TCreateOpsItemResponse.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TCreateOpsItemResponse.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

end.
