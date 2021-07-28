unit AWS.SQS.Transform.PurgeQueueInProgressExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.PurgeQueueInProgressException, 
  AWS.Internal.ErrorResponse;

type
  IPurgeQueueInProgressExceptionUnmarshaller = IErrorResponseUnmarshaller<EPurgeQueueInProgressException, TXmlUnmarshallerContext>;
  
  TPurgeQueueInProgressExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EPurgeQueueInProgressException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPurgeQueueInProgressExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EPurgeQueueInProgressException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EPurgeQueueInProgressException; overload;
    class function Instance: IPurgeQueueInProgressExceptionUnmarshaller; static;
  end;
  
implementation

{ TPurgeQueueInProgressExceptionUnmarshaller }

function TPurgeQueueInProgressExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EPurgeQueueInProgressException;
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

function TPurgeQueueInProgressExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EPurgeQueueInProgressException;
var
  OriginalDepth: Integer;
  Response: EPurgeQueueInProgressException;
begin
  Response := EPurgeQueueInProgressException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TPurgeQueueInProgressExceptionUnmarshaller.Create;
begin
  FInstance := TPurgeQueueInProgressExceptionUnmarshaller.Create;
end;

class function TPurgeQueueInProgressExceptionUnmarshaller.Instance: IPurgeQueueInProgressExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
