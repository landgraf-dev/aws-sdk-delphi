unit AWS.SQS.Transform.ReceiptHandleIsInvalidExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.ReceiptHandleIsInvalidException, 
  AWS.Internal.ErrorResponse;

type
  IReceiptHandleIsInvalidExceptionUnmarshaller = IErrorResponseUnmarshaller<EReceiptHandleIsInvalidException, TXmlUnmarshallerContext>;
  
  TReceiptHandleIsInvalidExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EReceiptHandleIsInvalidException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReceiptHandleIsInvalidExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EReceiptHandleIsInvalidException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EReceiptHandleIsInvalidException; overload;
    class function Instance: IReceiptHandleIsInvalidExceptionUnmarshaller; static;
  end;
  
implementation

{ TReceiptHandleIsInvalidExceptionUnmarshaller }

function TReceiptHandleIsInvalidExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EReceiptHandleIsInvalidException;
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

function TReceiptHandleIsInvalidExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EReceiptHandleIsInvalidException;
var
  OriginalDepth: Integer;
  Response: EReceiptHandleIsInvalidException;
begin
  Response := EReceiptHandleIsInvalidException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TReceiptHandleIsInvalidExceptionUnmarshaller.Create;
begin
  FInstance := TReceiptHandleIsInvalidExceptionUnmarshaller.Create;
end;

class function TReceiptHandleIsInvalidExceptionUnmarshaller.Instance: IReceiptHandleIsInvalidExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
