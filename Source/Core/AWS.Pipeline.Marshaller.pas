unit AWS.Pipeline.Marshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts;

type
  TMarshaller = class(TPipelineHandler)
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  AWS.SDKUtils,
  AWS.Runtime.Model;

{ TMarshaller }

procedure TMarshaller.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TMarshaller.PreInvoke(AExecutionContext: TExecutionContext);
var
  RequestContext: TRequestContext;
  UserAgent: string;
  Method: string;
begin
  RequestContext := AExecutionContext.RequestContext;
  RequestContext.Request := RequestContext.Marshaller.Marshall(RequestContext.OriginalRequest);
  RequestContext.Request.AuthenticationRegion := RequestContext.ClientConfig.AuthenticationRegion;

  UserAgent := RequestContext.ClientConfig.UserAgent + ' ClientSync';
  if RequestContext.OriginalRequest is TAmazonWebServiceRequest then
     UserAgent := UserAgent + TAmazonWebServiceRequest(RequestContext.OriginalRequest).UserAgentAddition;
  if RequestContext.ClientConfig.UseAlternateUserAgentHeader then
    RequestContext.Request.Headers.AddOrSetValue(THeaderKeys.XAmzUserAgentHeader, UserAgent)
  else
    RequestContext.Request.Headers.AddOrSetValue(THeaderKeys.UserAgentHeader, UserAgent);

  Method := UpperCase(RequestContext.Request.HttpMethod);
  if (Method <> 'GET') and (Method <> 'DELETE') and (Method <> 'HEAD') then
  begin
    if not RequestContext.Request.Headers.ContainsKey(THeaderKeys.ContentTypeHeader) then
    begin
      if RequestContext.Request.UseQueryString then
        RequestContext.Request.Headers.Add(THeaderKeys.ContentTypeHeader, 'application/x-amz-json-1.0')
      else
        RequestContext.Request.Headers.Add(THeaderKeys.ContentTypeHeader, TAWSSDKUtils.UrlEncodedContent);
    end;
  end;
end;

end.
