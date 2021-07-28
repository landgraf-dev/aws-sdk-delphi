unit AWS.SQS.Transform.UnsupportedOperationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.UnsupportedOperationException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedOperationExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedOperationException, TXmlUnmarshallerContext>;
  
  TUnsupportedOperationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedOperationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedOperationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EUnsupportedOperationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedOperationException; overload;
    class function Instance: IUnsupportedOperationExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedOperationExceptionUnmarshaller }

function TUnsupportedOperationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EUnsupportedOperationException;
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

function TUnsupportedOperationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedOperationException;
var
  OriginalDepth: Integer;
  Response: EUnsupportedOperationException;
begin
  Response := EUnsupportedOperationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedOperationExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedOperationExceptionUnmarshaller.Create;
end;

class function TUnsupportedOperationExceptionUnmarshaller.Instance: IUnsupportedOperationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
