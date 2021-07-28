unit AWS.SQS.Transform.QueueNameExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.QueueNameExistsException, 
  AWS.Internal.ErrorResponse;

type
  IQueueNameExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EQueueNameExistsException, TXmlUnmarshallerContext>;
  
  TQueueNameExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EQueueNameExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IQueueNameExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EQueueNameExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueNameExistsException; overload;
    class function Instance: IQueueNameExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TQueueNameExistsExceptionUnmarshaller }

function TQueueNameExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EQueueNameExistsException;
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

function TQueueNameExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueNameExistsException;
var
  OriginalDepth: Integer;
  Response: EQueueNameExistsException;
begin
  Response := EQueueNameExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TQueueNameExistsExceptionUnmarshaller.Create;
begin
  FInstance := TQueueNameExistsExceptionUnmarshaller.Create;
end;

class function TQueueNameExistsExceptionUnmarshaller.Instance: IQueueNameExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
