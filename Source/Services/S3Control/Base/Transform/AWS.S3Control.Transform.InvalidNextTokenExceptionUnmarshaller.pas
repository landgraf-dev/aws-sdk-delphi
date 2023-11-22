unit AWS.S3Control.Transform.InvalidNextTokenExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.InvalidNextTokenException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidNextTokenExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidNextTokenException, TXmlUnmarshallerContext>;
  
  TInvalidNextTokenExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidNextTokenException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidNextTokenExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidNextTokenException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNextTokenException; overload;
    class function Instance: IInvalidNextTokenExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidNextTokenExceptionUnmarshaller }

function TInvalidNextTokenExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidNextTokenException;
begin
  raise ENotImplemented.Create;
end;

function TInvalidNextTokenExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidNextTokenException;
var
  Response: EInvalidNextTokenException;
begin
  Response := EInvalidNextTokenException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidNextTokenExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidNextTokenExceptionUnmarshaller.Create;
end;

class function TInvalidNextTokenExceptionUnmarshaller.Instance: IInvalidNextTokenExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
