unit AWS.S3Control.Transform.TooManyRequestsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.TooManyRequestsException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyRequestsExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyRequestsException, TXmlUnmarshallerContext>;
  
  TTooManyRequestsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyRequestsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyRequestsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyRequestsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyRequestsException; overload;
    class function Instance: ITooManyRequestsExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyRequestsExceptionUnmarshaller }

function TTooManyRequestsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyRequestsException;
begin
  raise ENotImplemented.Create;
end;

function TTooManyRequestsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyRequestsException;
var
  Response: ETooManyRequestsException;
begin
  Response := ETooManyRequestsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TTooManyRequestsExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyRequestsExceptionUnmarshaller.Create;
end;

class function TTooManyRequestsExceptionUnmarshaller.Instance: ITooManyRequestsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
