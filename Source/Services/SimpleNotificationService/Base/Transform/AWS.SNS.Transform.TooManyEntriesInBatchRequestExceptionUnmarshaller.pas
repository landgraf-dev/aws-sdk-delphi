unit AWS.SNS.Transform.TooManyEntriesInBatchRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.TooManyEntriesInBatchRequestException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyEntriesInBatchRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyEntriesInBatchRequestException, TXmlUnmarshallerContext>;
  
  TTooManyEntriesInBatchRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyEntriesInBatchRequestException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyEntriesInBatchRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyEntriesInBatchRequestException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyEntriesInBatchRequestException; overload;
    class function Instance: ITooManyEntriesInBatchRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyEntriesInBatchRequestExceptionUnmarshaller }

function TTooManyEntriesInBatchRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyEntriesInBatchRequestException;
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

function TTooManyEntriesInBatchRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyEntriesInBatchRequestException;
var
  OriginalDepth: Integer;
  Response: ETooManyEntriesInBatchRequestException;
begin
  Response := ETooManyEntriesInBatchRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTooManyEntriesInBatchRequestExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyEntriesInBatchRequestExceptionUnmarshaller.Create;
end;

class function TTooManyEntriesInBatchRequestExceptionUnmarshaller.Instance: ITooManyEntriesInBatchRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
