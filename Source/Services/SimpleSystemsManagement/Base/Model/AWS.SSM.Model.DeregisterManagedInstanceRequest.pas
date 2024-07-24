unit AWS.SSM.Model.DeregisterManagedInstanceRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeregisterManagedInstanceRequest = class;
  
  IDeregisterManagedInstanceRequest = interface
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function Obj: TDeregisterManagedInstanceRequest;
    function IsSetInstanceId: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
  TDeregisterManagedInstanceRequest = class(TAmazonSimpleSystemsManagementRequest, IDeregisterManagedInstanceRequest)
  strict private
    FInstanceId: Nullable<string>;
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
  strict protected
    function Obj: TDeregisterManagedInstanceRequest;
  public
    function IsSetInstanceId: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
  end;
  
implementation

{ TDeregisterManagedInstanceRequest }

function TDeregisterManagedInstanceRequest.Obj: TDeregisterManagedInstanceRequest;
begin
  Result := Self;
end;

function TDeregisterManagedInstanceRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TDeregisterManagedInstanceRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TDeregisterManagedInstanceRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

end.
