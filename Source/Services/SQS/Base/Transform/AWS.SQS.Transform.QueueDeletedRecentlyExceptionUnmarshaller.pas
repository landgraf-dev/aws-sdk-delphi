unit AWS.SQS.Transform.QueueDeletedRecentlyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.QueueDeletedRecentlyException, 
  AWS.Internal.ErrorResponse;

type
  IQueueDeletedRecentlyExceptionUnmarshaller = IErrorResponseUnmarshaller<EQueueDeletedRecentlyException, TXmlUnmarshallerContext>;
  
  TQueueDeletedRecentlyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EQueueDeletedRecentlyException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IQueueDeletedRecentlyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EQueueDeletedRecentlyException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueDeletedRecentlyException; overload;
    class function Instance: IQueueDeletedRecentlyExceptionUnmarshaller; static;
  end;
  
implementation

{ TQueueDeletedRecentlyExceptionUnmarshaller }

function TQueueDeletedRecentlyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EQueueDeletedRecentlyException;
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

function TQueueDeletedRecentlyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EQueueDeletedRecentlyException;
var
  OriginalDepth: Integer;
  Response: EQueueDeletedRecentlyException;
begin
  Response := EQueueDeletedRecentlyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TQueueDeletedRecentlyExceptionUnmarshaller.Create;
begin
  FInstance := TQueueDeletedRecentlyExceptionUnmarshaller.Create;
end;

class function TQueueDeletedRecentlyExceptionUnmarshaller.Instance: IQueueDeletedRecentlyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
