unit AWS.SQS.Transform.InvalidAttributeNameExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.InvalidAttributeNameException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAttributeNameExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAttributeNameException, TXmlUnmarshallerContext>;
  
  TInvalidAttributeNameExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAttributeNameException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAttributeNameExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidAttributeNameException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAttributeNameException; overload;
    class function Instance: IInvalidAttributeNameExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAttributeNameExceptionUnmarshaller }

function TInvalidAttributeNameExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidAttributeNameException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TInvalidAttributeNameExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAttributeNameException;
var
  OriginalDepth: Integer;
  Response: EInvalidAttributeNameException;
begin
  Response := EInvalidAttributeNameException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidAttributeNameExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAttributeNameExceptionUnmarshaller.Create;
end;

class function TInvalidAttributeNameExceptionUnmarshaller.Instance: IInvalidAttributeNameExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
