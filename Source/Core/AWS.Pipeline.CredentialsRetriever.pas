unit AWS.Pipeline.CredentialsRetriever;

interface

uses
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Credentials;

type
  TCredentialsRetriever = class(TPipelineHandler)
  strict private
    FCredentials: IAWSCredentials;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    constructor Create(ACredentials: IAWSCredentials);
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TCredentialsRetriever }

constructor TCredentialsRetriever.Create(ACredentials: IAWSCredentials);
begin
  inherited Create;
  FCredentials := ACredentials;
end;

procedure TCredentialsRetriever.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TCredentialsRetriever.PreInvoke(AExecutionContext: TExecutionContext);
var
  IC: IImmutableCredentials;
begin
  if (FCredentials <> nil) and not (FCredentials is TAnonymousAWSCredentials) then
    IC := FCredentials.GetCredentials;
  AExecutionContext.RequestContext.ImmutableCredentials := IC;
end;

end.
