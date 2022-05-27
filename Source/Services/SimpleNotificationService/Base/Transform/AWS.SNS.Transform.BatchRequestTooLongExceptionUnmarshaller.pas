unit AWS.SNS.Transform.BatchRequestTooLongExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.BatchRequestTooLongException, 
  AWS.Internal.ErrorResponse;

type
  IBatchRequestTooLongExceptionUnmarshaller = IErrorResponseUnmarshaller<EBatchRequestTooLongException, TXmlUnmarshallerContext>;
  
  TBatchRequestTooLongExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBatchRequestTooLongException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBatchRequestTooLongExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EBatchRequestTooLongException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBatchRequestTooLongException; overload;
    class function Instance: IBatchRequestTooLongExceptionUnmarshaller; static;
  end;
  
implementation

{ TBatchRequestTooLongExceptionUnmarshaller }

function TBatchRequestTooLongExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EBatchRequestTooLongException;
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

function TBatchRequestTooLongExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBatchRequestTooLongException;
var
  OriginalDepth: Integer;
  Response: EBatchRequestTooLongException;
begin
  Response := EBatchRequestTooLongException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBatchRequestTooLongExceptionUnmarshaller.Create;
begin
  FInstance := TBatchRequestTooLongExceptionUnmarshaller.Create;
end;

class function TBatchRequestTooLongExceptionUnmarshaller.Instance: IBatchRequestTooLongExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
