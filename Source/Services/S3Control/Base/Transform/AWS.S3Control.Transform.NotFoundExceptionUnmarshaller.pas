unit AWS.S3Control.Transform.NotFoundExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.NotFoundException, 
  AWS.Internal.ErrorResponse;

type
  INotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<ENotFoundException, TXmlUnmarshallerContext>;
  
  TNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENotFoundException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENotFoundException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException; overload;
    class function Instance: INotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TNotFoundExceptionUnmarshaller }

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENotFoundException;
begin
  raise ENotImplemented.Create('TNotFoundExceptionUnmarshaller.Unmarshall');
end;

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException;
var
  Response: ENotFoundException;
begin
  Response := ENotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TNotFoundExceptionUnmarshaller.Create;
end;

class function TNotFoundExceptionUnmarshaller.Instance: INotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
