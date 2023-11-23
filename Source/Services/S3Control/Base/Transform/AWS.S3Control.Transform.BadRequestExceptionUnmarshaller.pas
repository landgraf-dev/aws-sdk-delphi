unit AWS.S3Control.Transform.BadRequestExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.BadRequestException, 
  AWS.Internal.ErrorResponse;

type
  IBadRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EBadRequestException, TXmlUnmarshallerContext>;
  
  TBadRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBadRequestException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBadRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EBadRequestException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBadRequestException; overload;
    class function Instance: IBadRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TBadRequestExceptionUnmarshaller }

function TBadRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EBadRequestException;
begin
  raise ENotImplemented.Create('TBadRequestExceptionUnmarshaller.Unmarshall');
end;

function TBadRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBadRequestException;
var
  Response: EBadRequestException;
begin
  Response := EBadRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBadRequestExceptionUnmarshaller.Create;
begin
  FInstance := TBadRequestExceptionUnmarshaller.Create;
end;

class function TBadRequestExceptionUnmarshaller.Instance: IBadRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
