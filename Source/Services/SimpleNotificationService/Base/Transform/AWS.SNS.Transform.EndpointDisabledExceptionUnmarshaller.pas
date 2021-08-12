unit AWS.SNS.Transform.EndpointDisabledExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.EndpointDisabledException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEndpointDisabledExceptionUnmarshaller = IErrorResponseUnmarshaller<EEndpointDisabledException, TXmlUnmarshallerContext>;
  
  TEndpointDisabledExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EEndpointDisabledException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEndpointDisabledExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EEndpointDisabledException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEndpointDisabledException; overload;
    class function Instance: IEndpointDisabledExceptionUnmarshaller; static;
  end;
  
implementation

{ TEndpointDisabledExceptionUnmarshaller }

function TEndpointDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EEndpointDisabledException;
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

function TEndpointDisabledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEndpointDisabledException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EEndpointDisabledException;
begin
  Response := EEndpointDisabledException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TEndpointDisabledExceptionUnmarshaller.Create;
begin
  FInstance := TEndpointDisabledExceptionUnmarshaller.Create;
end;

class function TEndpointDisabledExceptionUnmarshaller.Instance: IEndpointDisabledExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
