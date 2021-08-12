unit AWS.SNS.Transform.PlatformApplicationDisabledExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.PlatformApplicationDisabledException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPlatformApplicationDisabledExceptionUnmarshaller = IErrorResponseUnmarshaller<EPlatformApplicationDisabledException, TXmlUnmarshallerContext>;
  
  TPlatformApplicationDisabledExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EPlatformApplicationDisabledException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPlatformApplicationDisabledExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EPlatformApplicationDisabledException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EPlatformApplicationDisabledException; overload;
    class function Instance: IPlatformApplicationDisabledExceptionUnmarshaller; static;
  end;
  
implementation

{ TPlatformApplicationDisabledExceptionUnmarshaller }

function TPlatformApplicationDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EPlatformApplicationDisabledException;
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

function TPlatformApplicationDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EPlatformApplicationDisabledException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EPlatformApplicationDisabledException;
begin
  Response := EPlatformApplicationDisabledException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TPlatformApplicationDisabledExceptionUnmarshaller.Create;
begin
  FInstance := TPlatformApplicationDisabledExceptionUnmarshaller.Create;
end;

class function TPlatformApplicationDisabledExceptionUnmarshaller.Instance: IPlatformApplicationDisabledExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
