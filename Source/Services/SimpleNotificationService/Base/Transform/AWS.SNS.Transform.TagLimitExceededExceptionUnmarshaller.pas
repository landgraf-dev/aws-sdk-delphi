unit AWS.SNS.Transform.TagLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.TagLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ITagLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ETagLimitExceededException, TXmlUnmarshallerContext>;
  
  TTagLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETagLimitExceededException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITagLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETagLimitExceededException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETagLimitExceededException; overload;
    class function Instance: ITagLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TTagLimitExceededExceptionUnmarshaller }

function TTagLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETagLimitExceededException;
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

function TTagLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETagLimitExceededException;
var
  OriginalDepth: Integer;
  Response: ETagLimitExceededException;
begin
  Response := ETagLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTagLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TTagLimitExceededExceptionUnmarshaller.Create;
end;

class function TTagLimitExceededExceptionUnmarshaller.Instance: ITagLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
