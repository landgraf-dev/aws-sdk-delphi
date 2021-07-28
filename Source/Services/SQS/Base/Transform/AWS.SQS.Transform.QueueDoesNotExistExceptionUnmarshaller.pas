unit AWS.SQS.Transform.QueueDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.QueueDoesNotExistException, 
  AWS.Internal.ErrorResponse;

type
  IQueueDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EQueueDoesNotExistException, TXmlUnmarshallerContext>;
  
  TQueueDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EQueueDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IQueueDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EQueueDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueDoesNotExistException; overload;
    class function Instance: IQueueDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TQueueDoesNotExistExceptionUnmarshaller }

function TQueueDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EQueueDoesNotExistException;
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

function TQueueDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueDoesNotExistException;
var
  OriginalDepth: Integer;
  Response: EQueueDoesNotExistException;
begin
  Response := EQueueDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TQueueDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TQueueDoesNotExistExceptionUnmarshaller.Create;
end;

class function TQueueDoesNotExistExceptionUnmarshaller.Instance: IQueueDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
