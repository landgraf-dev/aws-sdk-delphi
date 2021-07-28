unit AWS.SQS.Transform.MessageNotInflightExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.MessageNotInflightException, 
  AWS.Internal.ErrorResponse;

type
  IMessageNotInflightExceptionUnmarshaller = IErrorResponseUnmarshaller<EMessageNotInflightException, TXmlUnmarshallerContext>;
  
  TMessageNotInflightExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMessageNotInflightException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMessageNotInflightExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EMessageNotInflightException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageNotInflightException; overload;
    class function Instance: IMessageNotInflightExceptionUnmarshaller; static;
  end;
  
implementation

{ TMessageNotInflightExceptionUnmarshaller }

function TMessageNotInflightExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EMessageNotInflightException;
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

function TMessageNotInflightExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EMessageNotInflightException;
var
  OriginalDepth: Integer;
  Response: EMessageNotInflightException;
begin
  Response := EMessageNotInflightException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMessageNotInflightExceptionUnmarshaller.Create;
begin
  FInstance := TMessageNotInflightExceptionUnmarshaller.Create;
end;

class function TMessageNotInflightExceptionUnmarshaller.Instance: IMessageNotInflightExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
