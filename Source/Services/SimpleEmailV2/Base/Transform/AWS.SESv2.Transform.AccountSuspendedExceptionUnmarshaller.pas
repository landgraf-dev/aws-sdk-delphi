unit AWS.SESv2.Transform.AccountSuspendedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Model.AccountSuspendedException, 
  AWS.Internal.ErrorResponse;

type
  IAccountSuspendedExceptionUnmarshaller = IErrorResponseUnmarshaller<EAccountSuspendedException, TJsonUnmarshallerContext>;
  
  TAccountSuspendedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAccountSuspendedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAccountSuspendedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAccountSuspendedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAccountSuspendedException; overload;
    class function Instance: IAccountSuspendedExceptionUnmarshaller; static;
  end;
  
implementation

{ TAccountSuspendedExceptionUnmarshaller }

function TAccountSuspendedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAccountSuspendedException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TAccountSuspendedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAccountSuspendedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAccountSuspendedException;
begin
  UnmarshalledObject := EAccountSuspendedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAccountSuspendedExceptionUnmarshaller.Create;
begin
  FInstance := TAccountSuspendedExceptionUnmarshaller.Create;
end;

class function TAccountSuspendedExceptionUnmarshaller.Instance: IAccountSuspendedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
