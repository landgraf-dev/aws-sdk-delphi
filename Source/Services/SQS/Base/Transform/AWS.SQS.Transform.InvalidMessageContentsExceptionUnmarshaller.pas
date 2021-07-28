unit AWS.SQS.Transform.InvalidMessageContentsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.InvalidMessageContentsException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidMessageContentsExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidMessageContentsException, TXmlUnmarshallerContext>;
  
  TInvalidMessageContentsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidMessageContentsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidMessageContentsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidMessageContentsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidMessageContentsException; overload;
    class function Instance: IInvalidMessageContentsExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidMessageContentsExceptionUnmarshaller }

function TInvalidMessageContentsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidMessageContentsException;
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

function TInvalidMessageContentsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidMessageContentsException;
var
  OriginalDepth: Integer;
  Response: EInvalidMessageContentsException;
begin
  Response := EInvalidMessageContentsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidMessageContentsExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidMessageContentsExceptionUnmarshaller.Create;
end;

class function TInvalidMessageContentsExceptionUnmarshaller.Instance: IInvalidMessageContentsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
