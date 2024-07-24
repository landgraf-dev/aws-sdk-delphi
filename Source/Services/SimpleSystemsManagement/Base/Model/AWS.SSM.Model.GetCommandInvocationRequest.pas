unit AWS.SSM.Model.GetCommandInvocationRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetCommandInvocationRequest = class;
  
  IGetCommandInvocationRequest = interface
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetPluginName: string;
    procedure SetPluginName(const Value: string);
    function Obj: TGetCommandInvocationRequest;
    function IsSetCommandId: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetPluginName: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property PluginName: string read GetPluginName write SetPluginName;
  end;
  
  TGetCommandInvocationRequest = class(TAmazonSimpleSystemsManagementRequest, IGetCommandInvocationRequest)
  strict private
    FCommandId: Nullable<string>;
    FInstanceId: Nullable<string>;
    FPluginName: Nullable<string>;
    function GetCommandId: string;
    procedure SetCommandId(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetPluginName: string;
    procedure SetPluginName(const Value: string);
  strict protected
    function Obj: TGetCommandInvocationRequest;
  public
    function IsSetCommandId: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetPluginName: Boolean;
    property CommandId: string read GetCommandId write SetCommandId;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property PluginName: string read GetPluginName write SetPluginName;
  end;
  
implementation

{ TGetCommandInvocationRequest }

function TGetCommandInvocationRequest.Obj: TGetCommandInvocationRequest;
begin
  Result := Self;
end;

function TGetCommandInvocationRequest.GetCommandId: string;
begin
  Result := FCommandId.ValueOrDefault;
end;

procedure TGetCommandInvocationRequest.SetCommandId(const Value: string);
begin
  FCommandId := Value;
end;

function TGetCommandInvocationRequest.IsSetCommandId: Boolean;
begin
  Result := FCommandId.HasValue;
end;

function TGetCommandInvocationRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TGetCommandInvocationRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TGetCommandInvocationRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TGetCommandInvocationRequest.GetPluginName: string;
begin
  Result := FPluginName.ValueOrDefault;
end;

procedure TGetCommandInvocationRequest.SetPluginName(const Value: string);
begin
  FPluginName := Value;
end;

function TGetCommandInvocationRequest.IsSetPluginName: Boolean;
begin
  Result := FPluginName.HasValue;
end;

end.
