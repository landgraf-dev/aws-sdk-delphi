unit AWS.SES.Transform.InvalidCloudWatchDestinationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidCloudWatchDestinationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidCloudWatchDestinationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidCloudWatchDestinationException, TXmlUnmarshallerContext>;
  
  TInvalidCloudWatchDestinationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidCloudWatchDestinationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidCloudWatchDestinationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidCloudWatchDestinationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidCloudWatchDestinationException; overload;
    class function Instance: IInvalidCloudWatchDestinationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidCloudWatchDestinationExceptionUnmarshaller }

function TInvalidCloudWatchDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidCloudWatchDestinationException;
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

function TInvalidCloudWatchDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidCloudWatchDestinationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidCloudWatchDestinationException;
begin
  Response := EInvalidCloudWatchDestinationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('EventDestinationName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.EventDestinationName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidCloudWatchDestinationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidCloudWatchDestinationExceptionUnmarshaller.Create;
end;

class function TInvalidCloudWatchDestinationExceptionUnmarshaller.Instance: IInvalidCloudWatchDestinationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
