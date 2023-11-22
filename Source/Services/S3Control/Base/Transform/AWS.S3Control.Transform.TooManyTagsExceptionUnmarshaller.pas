unit AWS.S3Control.Transform.TooManyTagsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.TooManyTagsException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyTagsExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyTagsException, TXmlUnmarshallerContext>;
  
  TTooManyTagsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyTagsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyTagsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyTagsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyTagsException; overload;
    class function Instance: ITooManyTagsExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyTagsExceptionUnmarshaller }

function TTooManyTagsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETooManyTagsException;
begin
  raise ENotImplemented.Create;
end;

function TTooManyTagsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyTagsException;
var
  Response: ETooManyTagsException;
begin
  Response := ETooManyTagsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTooManyTagsExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyTagsExceptionUnmarshaller.Create;
end;

class function TTooManyTagsExceptionUnmarshaller.Instance: ITooManyTagsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
