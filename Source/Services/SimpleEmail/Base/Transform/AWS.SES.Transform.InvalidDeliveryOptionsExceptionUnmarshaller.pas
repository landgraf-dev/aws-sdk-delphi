unit AWS.SES.Transform.InvalidDeliveryOptionsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidDeliveryOptionsException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidDeliveryOptionsExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidDeliveryOptionsException, TXmlUnmarshallerContext>;
  
  TInvalidDeliveryOptionsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidDeliveryOptionsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidDeliveryOptionsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidDeliveryOptionsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeliveryOptionsException; overload;
    class function Instance: IInvalidDeliveryOptionsExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidDeliveryOptionsExceptionUnmarshaller }

function TInvalidDeliveryOptionsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidDeliveryOptionsException;
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

function TInvalidDeliveryOptionsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidDeliveryOptionsException;
var
  OriginalDepth: Integer;
  Response: EInvalidDeliveryOptionsException;
begin
  Response := EInvalidDeliveryOptionsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidDeliveryOptionsExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidDeliveryOptionsExceptionUnmarshaller.Create;
end;

class function TInvalidDeliveryOptionsExceptionUnmarshaller.Instance: IInvalidDeliveryOptionsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
