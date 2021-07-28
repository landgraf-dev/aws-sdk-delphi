unit AWS.Pipeline.Unmarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Transform.UnmarshallerContext,
  AWS.Runtime.Model;

type
  TUnmarshaller = class(TPipelineHandler)
  strict private
    FSupportsResponseLogging: Boolean;
    procedure Unmarshall(AExecutionContext: TExecutionContext);
    function UnmarshallResponse(AContext: TUnmarshallerContext;
      ARequestContext: TRequestContext): TAmazonWebServiceResponse;
    class function ShouldLogResponseBody(ASupportsResponseLogging: Boolean;
      ARequestContext: TRequestContext): Boolean; static;
  public
    constructor Create(ASupportsResponseLogging: Boolean);
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  AWS.SDKUtils,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Runtime.Exceptions;

{ TUnmarshaller }

constructor TUnmarshaller.Create(ASupportsResponseLogging: Boolean);
begin
  inherited Create;
  FSupportsResponseLogging := ASupportsResponseLogging;
end;

procedure TUnmarshaller.InvokeSync(AExecutionContext: TExecutionContext);
begin
  inherited InvokeSync(AExecutionContext);
  if AExecutionContext.ResponseContext.HttpResponse.IsSuccessStatusCode then
    Unmarshall(AExecutionContext);
end;

class function TUnmarshaller.ShouldLogResponseBody(ASupportsResponseLogging: Boolean;
  ARequestContext: TRequestContext): Boolean;
begin
  {TODO: Take config into consideration to decide for response logging}
//  Result := ASupportsResponseLogging and (ARequestContext.ClientConfig.LogResponse
//    or (AWSConfigs.LoggingConfig.LogResponses = TResponseLoggingOption.Always);

  Result := ASupportsResponseLogging;
end;

procedure TUnmarshaller.Unmarshall(AExecutionContext: TExecutionContext);
var
  RequestContext: TRequestContext;
  ResponseContext: TResponseContext;
  Unmarshaller: IResponseUnmarshaller;
  ReadEntireResponse: Boolean;
  Context: TUnmarshallerContext;
  RequestId: string;
  Body: string;
begin
  RequestContext := AExecutionContext.RequestContext;
  ResponseContext := AExecutionContext.ResponseContext;
  Unmarshaller := RequestContext.Unmarshaller;
  ReadEntireResponse := FSupportsResponseLogging;
  Context := (Unmarshaller as TResponseUnmarshaller).CreateContext(ResponseContext.HttpResponse,
    ReadEntireResponse, ResponseContext.HttpResponse.ResponseBody.OpenResponse,
    False);
  try
    try
      ResponseContext.Response := UnmarshallResponse(Context, RequestContext);
    except
      on E: Exception do
      begin
        if (E is EAmazonServiceException) or (E is EAmazonClientException) then
          raise;

        // Else, there was an issue with the response body, throw AmazonUnmarshallingException
        RequestId := ResponseContext.HttpResponse.GetHeaderValue(THeaderKeys.RequestIdHeader);
        Body := Context.ResponseBody;
        raise EAmazonUnmarshallingException.Create(RequestId, '', Body, E, ResponseContext.HttpResponse.StatusCode);
      end;
    end;
  finally
    Context.Free;
  end;
end;

function TUnmarshaller.UnmarshallResponse(AContext: TUnmarshallerContext;
  ARequestContext: TRequestContext): TAmazonWebServiceResponse;
var
  Unmarshaller: IResponseUnmarshaller;
  LogResponseBody: Boolean;
  Response: TAmazonWebServiceResponse;
begin
  try
    Unmarshaller := ARequestContext.Unmarshaller;
    Response := nil;
    try
      Response := Unmarshaller.UnmarshallResponse(AContext);

      {TODO: ResponseMetadata metrics}

      AContext.ValidateCRC32IfAvailable;
      Result := Response;
      Response := nil;
    finally
      Response.Free;
    end;
  finally
    LogResponseBody := ShouldLogResponseBody(FSupportsResponseLogging, ARequestContext);
    {TODO: Set the truncated size to LogResponsesSizeLimit}
    if LogResponseBody then
      Logger.Debug(Format('Received response (truncated to %d bytes): [%s]',
        [1024 {AWSConfigs.LoggingConfig.LogResponsesSizeLimit}, AContext.ResponseBody]));
  end;
end;

end.
