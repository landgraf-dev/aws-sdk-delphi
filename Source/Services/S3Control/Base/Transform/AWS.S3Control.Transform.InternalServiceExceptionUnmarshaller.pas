unit AWS.S3Control.Transform.InternalServiceExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.InternalServiceException, 
  AWS.Internal.ErrorResponse;

type
  IInternalServiceExceptionUnmarshaller = IErrorResponseUnmarshaller<EInternalServiceException, TXmlUnmarshallerContext>;
  
  TInternalServiceExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInternalServiceException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInternalServiceExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInternalServiceException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServiceException; overload;
    class function Instance: IInternalServiceExceptionUnmarshaller; static;
  end;
  
implementation

{ TInternalServiceExceptionUnmarshaller }

function TInternalServiceExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInternalServiceException;
begin
  raise ENotImplemented.Create('TInternalServiceExceptionUnmarshaller.Unmarshall');
end;

function TInternalServiceExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServiceException;
var
  Response: EInternalServiceException;
begin
  Response := EInternalServiceException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInternalServiceExceptionUnmarshaller.Create;
begin
  FInstance := TInternalServiceExceptionUnmarshaller.Create;
end;

class function TInternalServiceExceptionUnmarshaller.Instance: IInternalServiceExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
