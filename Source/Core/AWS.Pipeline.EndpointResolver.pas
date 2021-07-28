unit AWS.Pipeline.EndpointResolver;

interface

uses
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.ClientConfig,
  AWS.Internal.Request,
  AWS.SDKUtils;

type
  TEndpointResolver = class(TPipelineHandler)
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
    function DetermineEndpoint(ARequestContext: TRequestContext): IUri; overload;
    function DetermineEndpoint(AConfig: IClientConfig; ARequest: IRequest): IUri; overload;
  end;

implementation

{ TEndpointResolver }

function TEndpointResolver.DetermineEndpoint(AConfig: IClientConfig; ARequest: IRequest): IUri;
var
  Endpoint: IUri;
begin
  if ARequest.AlternateEndpoint <> nil then
    Endpoint := TUri.Create(TClientConfig.GetUrl(ARequest.AlternateEndpoint, AConfig.RegionEndpointServiceName,
      AConfig.UseHttp, AConfig.UseDualstackEndpoint))
  else
    Endpoint := TUri.Create(AConfig.DetermineServiceUrl);

  {TODO: HostPrefix not implemented}
//  Result := InjectHostPrefix(AConfig, ARequest, Endpoint);

  Result := Endpoint;
end;

function TEndpointResolver.DetermineEndpoint(ARequestContext: TRequestContext): IUri;
begin
  Result := DetermineEndpoint(ARequestContext.ClientConfig, ARequestContext.Request);
end;

procedure TEndpointResolver.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TEndpointResolver.PreInvoke(AExecutionContext: TExecutionContext);
begin
  if AExecutionContext.RequestContext.Request.Endpoint = nil then
    AExecutionContext.RequestContext.Request.Endpoint := DetermineEndpoint(AExecutionContext.RequestContext);
end;

end.
