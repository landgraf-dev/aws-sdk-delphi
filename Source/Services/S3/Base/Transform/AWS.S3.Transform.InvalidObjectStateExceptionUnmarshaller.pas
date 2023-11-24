unit AWS.S3.Transform.InvalidObjectStateExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.InvalidObjectStateException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidObjectStateExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidObjectStateException, TXmlUnmarshallerContext>;
  
  TInvalidObjectStateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidObjectStateException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidObjectStateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidObjectStateException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidObjectStateException; overload;
    class function Instance: IInvalidObjectStateExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidObjectStateExceptionUnmarshaller }

function TInvalidObjectStateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidObjectStateException;
begin
  raise ENotImplemented.Create('TInvalidObjectStateExceptionUnmarshaller.Unmarshall');
end;

function TInvalidObjectStateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidObjectStateException;
var
  Response: EInvalidObjectStateException;
begin
  Response := EInvalidObjectStateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessTier') then
        begin
          var unmarshaller := TStringUnmarshaller.Instance;
          Response.AccessTier := unmarshaller.Unmarshall(AContext);
        end;
        if AContext.TestExpression('StorageClass') then
        begin
          var unmarshaller := TStringUnmarshaller.Instance;
          Response.StorageClass := unmarshaller.Unmarshall(AContext);
        end;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidObjectStateExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidObjectStateExceptionUnmarshaller.Create;
end;

class function TInvalidObjectStateExceptionUnmarshaller.Instance: IInvalidObjectStateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
