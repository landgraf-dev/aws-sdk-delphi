unit AWS.SNS.Transform.InternalErrorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.InternalErrorException, 
  AWS.Internal.ErrorResponse;

type
  IInternalErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EInternalErrorException, TXmlUnmarshallerContext>;
  
  TInternalErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInternalErrorException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInternalErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInternalErrorException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalErrorException; overload;
    class function Instance: IInternalErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TInternalErrorExceptionUnmarshaller }

function TInternalErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInternalErrorException;
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

function TInternalErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalErrorException;
var
  OriginalDepth: Integer;
  Response: EInternalErrorException;
begin
  Response := EInternalErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInternalErrorExceptionUnmarshaller.Create;
begin
  FInstance := TInternalErrorExceptionUnmarshaller.Create;
end;

class function TInternalErrorExceptionUnmarshaller.Instance: IInternalErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
