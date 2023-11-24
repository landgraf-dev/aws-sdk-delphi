unit AWS.S3.Transform.ObjectAlreadyInActiveTierErrorExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.ObjectAlreadyInActiveTierErrorException, 
  AWS.Internal.ErrorResponse;

type
  IObjectAlreadyInActiveTierErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EObjectAlreadyInActiveTierErrorException, TXmlUnmarshallerContext>;
  
  TObjectAlreadyInActiveTierErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EObjectAlreadyInActiveTierErrorException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectAlreadyInActiveTierErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EObjectAlreadyInActiveTierErrorException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EObjectAlreadyInActiveTierErrorException; overload;
    class function Instance: IObjectAlreadyInActiveTierErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TObjectAlreadyInActiveTierErrorExceptionUnmarshaller }

function TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EObjectAlreadyInActiveTierErrorException;
begin
  raise ENotImplemented.Create('TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Unmarshall');
end;

function TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EObjectAlreadyInActiveTierErrorException;
var
  Response: EObjectAlreadyInActiveTierErrorException;
begin
  Response := EObjectAlreadyInActiveTierErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Create;
begin
  FInstance := TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Create;
end;

class function TObjectAlreadyInActiveTierErrorExceptionUnmarshaller.Instance: IObjectAlreadyInActiveTierErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
