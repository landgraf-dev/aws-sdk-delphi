unit AWS.SSM.Transform.InvalidNotificationConfigExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidNotificationConfigException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidNotificationConfigExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidNotificationConfigException, TJsonUnmarshallerContext>;
  
  TInvalidNotificationConfigExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidNotificationConfigException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidNotificationConfigExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidNotificationConfigException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNotificationConfigException; overload;
    class function Instance: IInvalidNotificationConfigExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidNotificationConfigExceptionUnmarshaller }

function TInvalidNotificationConfigExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidNotificationConfigException;
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

function TInvalidNotificationConfigExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNotificationConfigException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidNotificationConfigException;
begin
  UnmarshalledObject := EInvalidNotificationConfigException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidNotificationConfigExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidNotificationConfigExceptionUnmarshaller.Create;
end;

class function TInvalidNotificationConfigExceptionUnmarshaller.Instance: IInvalidNotificationConfigExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
