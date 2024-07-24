unit AWS.SSM.Transform.TargetNotConnectedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.TargetNotConnectedException, 
  AWS.Internal.ErrorResponse;

type
  ITargetNotConnectedExceptionUnmarshaller = IErrorResponseUnmarshaller<ETargetNotConnectedException, TJsonUnmarshallerContext>;
  
  TTargetNotConnectedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETargetNotConnectedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITargetNotConnectedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETargetNotConnectedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETargetNotConnectedException; overload;
    class function Instance: ITargetNotConnectedExceptionUnmarshaller; static;
  end;
  
implementation

{ TTargetNotConnectedExceptionUnmarshaller }

function TTargetNotConnectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETargetNotConnectedException;
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

function TTargetNotConnectedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETargetNotConnectedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETargetNotConnectedException;
begin
  UnmarshalledObject := ETargetNotConnectedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTargetNotConnectedExceptionUnmarshaller.Create;
begin
  FInstance := TTargetNotConnectedExceptionUnmarshaller.Create;
end;

class function TTargetNotConnectedExceptionUnmarshaller.Instance: ITargetNotConnectedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
