unit AWS.SSM.Model.ResumeSessionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TResumeSessionRequest = class;
  
  IResumeSessionRequest = interface
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
    function Obj: TResumeSessionRequest;
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
  TResumeSessionRequest = class(TAmazonSimpleSystemsManagementRequest, IResumeSessionRequest)
  strict private
    FSessionId: Nullable<string>;
    function GetSessionId: string;
    procedure SetSessionId(const Value: string);
  strict protected
    function Obj: TResumeSessionRequest;
  public
    function IsSetSessionId: Boolean;
    property SessionId: string read GetSessionId write SetSessionId;
  end;
  
implementation

{ TResumeSessionRequest }

function TResumeSessionRequest.Obj: TResumeSessionRequest;
begin
  Result := Self;
end;

function TResumeSessionRequest.GetSessionId: string;
begin
  Result := FSessionId.ValueOrDefault;
end;

procedure TResumeSessionRequest.SetSessionId(const Value: string);
begin
  FSessionId := Value;
end;

function TResumeSessionRequest.IsSetSessionId: Boolean;
begin
  Result := FSessionId.HasValue;
end;

end.
