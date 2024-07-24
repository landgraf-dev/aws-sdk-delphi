unit AWS.SSM.Model.TerminateSessionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TTerminateSessionRequest = class;
  
  ITerminateSessionRequest = interface
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TTerminateSessionRequest;
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TTerminateSessionRequest = class(TAmazonSimpleSystemsManagementRequest, ITerminateSessionRequest)
  strict private
    FSessionId: Nullable<string>;
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TTerminateSessionRequest;
  public
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TTerminateSessionRequest }

function TTerminateSessionRequest.Obj: TTerminateSessionRequest;
begin
  Result := Self;
end;

function TTerminateSessionRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TTerminateSessionRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TTerminateSessionRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
