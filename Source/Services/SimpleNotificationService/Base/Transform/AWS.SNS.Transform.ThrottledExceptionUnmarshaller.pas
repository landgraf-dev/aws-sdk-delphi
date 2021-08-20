unit AWS.SNS.Transform.ThrottledExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.ThrottledException, 
  AWS.Internal.ErrorResponse;

type
  IThrottledExceptionUnmarshaller = IErrorResponseUnmarshaller<EThrottledException, TXmlUnmarshallerContext>;
  
  TThrottledExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EThrottledException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IThrottledExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EThrottledException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottledException; overload;
    class function Instance: IThrottledExceptionUnmarshaller; static;
  end;
  
implementation

{ TThrottledExceptionUnmarshaller }

function TThrottledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EThrottledException;
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

function TThrottledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottledException;
var
  OriginalDepth: Integer;
  Response: EThrottledException;
begin
  Response := EThrottledException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TThrottledExceptionUnmarshaller.Create;
begin
  FInstance := TThrottledExceptionUnmarshaller.Create;
end;

class function TThrottledExceptionUnmarshaller.Instance: IThrottledExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
