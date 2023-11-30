unit AWS.SNS.Model.GetSMSSandboxAccountStatusResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetSMSSandboxAccountStatusResponse = class;
  
  IGetSMSSandboxAccountStatusResponse = interface(IAmazonWebServiceResponse)
    function GetIsInSandbox: Boolean;
    procedure SetIsInSandbox(const Value: Boolean);
    function Obj: TGetSMSSandboxAccountStatusResponse;
    function IsSetIsInSandbox: Boolean;
    property IsInSandbox: Boolean read GetIsInSandbox write SetIsInSandbox;
  end;
  
  TGetSMSSandboxAccountStatusResponse = class(TAmazonWebServiceResponse, IGetSMSSandboxAccountStatusResponse)
  strict private
    FIsInSandbox: Nullable<Boolean>;
    function GetIsInSandbox: Boolean;
    procedure SetIsInSandbox(const Value: Boolean);
  strict protected
    function Obj: TGetSMSSandboxAccountStatusResponse;
  public
    function IsSetIsInSandbox: Boolean;
    property IsInSandbox: Boolean read GetIsInSandbox write SetIsInSandbox;
  end;
  
implementation

{ TGetSMSSandboxAccountStatusResponse }

function TGetSMSSandboxAccountStatusResponse.Obj: TGetSMSSandboxAccountStatusResponse;
begin
  Result := Self;
end;

function TGetSMSSandboxAccountStatusResponse.GetIsInSandbox: Boolean;
begin
  Result := FIsInSandbox.ValueOrDefault;
end;

procedure TGetSMSSandboxAccountStatusResponse.SetIsInSandbox(const Value: Boolean);
begin
  FIsInSandbox := Value;
end;

function TGetSMSSandboxAccountStatusResponse.IsSetIsInSandbox: Boolean;
begin
  Result := FIsInSandbox.HasValue;
end;

end.
