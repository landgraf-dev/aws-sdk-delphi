unit AWS.S3Control.Transform.IdempotencyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.IdempotencyException, 
  AWS.Internal.ErrorResponse;

type
  IIdempotencyExceptionUnmarshaller = IErrorResponseUnmarshaller<EIdempotencyException, TXmlUnmarshallerContext>;
  
  TIdempotencyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EIdempotencyException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIdempotencyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EIdempotencyException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EIdempotencyException; overload;
    class function Instance: IIdempotencyExceptionUnmarshaller; static;
  end;
  
implementation

{ TIdempotencyExceptionUnmarshaller }

function TIdempotencyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EIdempotencyException;
begin
  raise ENotImplemented.Create;
end;

function TIdempotencyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EIdempotencyException;
var
  Response: EIdempotencyException;
begin
  Response := EIdempotencyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TIdempotencyExceptionUnmarshaller.Create;
begin
  FInstance := TIdempotencyExceptionUnmarshaller.Create;
end;

class function TIdempotencyExceptionUnmarshaller.Instance: IIdempotencyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
