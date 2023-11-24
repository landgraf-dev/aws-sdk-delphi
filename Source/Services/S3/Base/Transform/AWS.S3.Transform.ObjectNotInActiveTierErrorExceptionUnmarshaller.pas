unit AWS.S3.Transform.ObjectNotInActiveTierErrorExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.ObjectNotInActiveTierErrorException, 
  AWS.Internal.ErrorResponse;

type
  IObjectNotInActiveTierErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EObjectNotInActiveTierErrorException, TXmlUnmarshallerContext>;
  
  TObjectNotInActiveTierErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EObjectNotInActiveTierErrorException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectNotInActiveTierErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EObjectNotInActiveTierErrorException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EObjectNotInActiveTierErrorException; overload;
    class function Instance: IObjectNotInActiveTierErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TObjectNotInActiveTierErrorExceptionUnmarshaller }

function TObjectNotInActiveTierErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EObjectNotInActiveTierErrorException;
begin
  raise ENotImplemented.Create('TObjectNotInActiveTierErrorExceptionUnmarshaller.Unmarshall');
end;

function TObjectNotInActiveTierErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EObjectNotInActiveTierErrorException;
var
  Response: EObjectNotInActiveTierErrorException;
begin
  Response := EObjectNotInActiveTierErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TObjectNotInActiveTierErrorExceptionUnmarshaller.Create;
begin
  FInstance := TObjectNotInActiveTierErrorExceptionUnmarshaller.Create;
end;

class function TObjectNotInActiveTierErrorExceptionUnmarshaller.Instance: IObjectNotInActiveTierErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
