unit AWS.SSM.Model.PutInventoryResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TPutInventoryResponse = class;
  
  IPutInventoryResponse = interface(IAmazonWebServiceResponse)
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function Obj: TPutInventoryResponse;
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
  TPutInventoryResponse = class(TAmazonWebServiceResponse, IPutInventoryResponse)
  strict private
    FMessage: Nullable<string>;
    function GetMessage: string;
    procedure SetMessage(const Value: string);
  strict protected
    function Obj: TPutInventoryResponse;
  public
    function IsSetMessage: Boolean;
    property Message: string read GetMessage write SetMessage;
  end;
  
implementation

{ TPutInventoryResponse }

function TPutInventoryResponse.Obj: TPutInventoryResponse;
begin
  Result := Self;
end;

function TPutInventoryResponse.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TPutInventoryResponse.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TPutInventoryResponse.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

end.
