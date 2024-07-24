unit AWS.SSM.Model.TerminateSessionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TTerminateSessionResponse = class;
  
  ITerminateSessionResponse = interface(IAmazonWebServiceResponse)
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TTerminateSessionResponse;
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TTerminateSessionResponse = class(TAmazonWebServiceResponse, ITerminateSessionResponse)
  strict private
    FSessionId: Nullable<string>;
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TTerminateSessionResponse;
  public
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TTerminateSessionResponse }

function TTerminateSessionResponse.Obj: TTerminateSessionResponse;
begin
  Result := Self;
end;

function TTerminateSessionResponse.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TTerminateSessionResponse.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TTerminateSessionResponse.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
