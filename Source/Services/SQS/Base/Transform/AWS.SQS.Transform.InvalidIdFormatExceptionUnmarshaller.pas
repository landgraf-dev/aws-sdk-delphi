unit AWS.SQS.Transform.InvalidIdFormatExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.InvalidIdFormatException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidIdFormatExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidIdFormatException, TXmlUnmarshallerContext>;
  
  TInvalidIdFormatExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidIdFormatException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidIdFormatExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidIdFormatException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidIdFormatException; overload;
    class function Instance: IInvalidIdFormatExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidIdFormatExceptionUnmarshaller }

function TInvalidIdFormatExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidIdFormatException;
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

function TInvalidIdFormatExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidIdFormatException;
var
  OriginalDepth: Integer;
  Response: EInvalidIdFormatException;
begin
  Response := EInvalidIdFormatException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidIdFormatExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidIdFormatExceptionUnmarshaller.Create;
end;

class function TInvalidIdFormatExceptionUnmarshaller.Instance: IInvalidIdFormatExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
