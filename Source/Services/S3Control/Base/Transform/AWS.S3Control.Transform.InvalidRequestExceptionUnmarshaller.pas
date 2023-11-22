unit AWS.S3Control.Transform.InvalidRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.InvalidRequestException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidRequestException, TXmlUnmarshallerContext>;
  
  TInvalidRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidRequestException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidRequestException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRequestException; overload;
    class function Instance: IInvalidRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidRequestExceptionUnmarshaller }

function TInvalidRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidRequestException;
begin
  raise ENotImplemented.Create;
end;

function TInvalidRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRequestException;
var
  Response: EInvalidRequestException;
begin
  Response := EInvalidRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidRequestExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidRequestExceptionUnmarshaller.Create;
end;

class function TInvalidRequestExceptionUnmarshaller.Instance: IInvalidRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
