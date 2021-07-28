unit AWS.Pipeline.Signer;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Credentials;

type
  TSigner = class(TPipelineHandler)
  strict private
    class function ShouldSign(ARequestContext: TRequestContext): Boolean; static;
    class procedure SignRequest(ARequestContext: TRequestContext); static;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  AWS.Auth.NullSigner,
  AWS.Auth.Signer,
  AWS.SDKUtils,
  AWS.Runtime.Exceptions;

{ TSigner }

procedure TSigner.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TSigner.PreInvoke(AExecutionContext: TExecutionContext);
begin
  if ShouldSign(AExecutionContext.RequestContext) then
  begin
    SignRequest(AExecutionContext.RequestContext);
    AExecutionContext.RequestContext.IsSigned := True;
  end;
end;

class function TSigner.ShouldSign(ARequestContext: TRequestContext): Boolean;
begin
  Result := not ARequestContext.IsSigned or ARequestContext.ClientConfig.ResignRetries;
end;

class procedure TSigner.SignRequest(ARequestContext: TRequestContext);
var
  ImmutableCredentials: IImmutableCredentials;
begin
  ImmutableCredentials := ARequestContext.ImmutableCredentials;
  if ImmutableCredentials = nil then
    Exit;

  if ImmutableCredentials.UseToken and not ((ARequestContext.Signer as TObject) is TNullSigner) then
  begin
    case ARequestContext.Signer.Protocol of
      TClientProtocol.QueryStringProtocol:
        ARequestContext.Request.Parameters.Add('SecurityToken', ImmutableCredentials.Token);
      TClientProtocol.RestProtocol:
        ARequestContext.Request.Parameters.Add(THeaderKeys.XAmzSecurityTokenHeader, ImmutableCredentials.Token);
    else
      raise EInvalidDataException.Create('Cannot determine protocol');
    end;
  end;
  ARequestContext.Signer.Sign(ARequestContext.Request, ARequestContext.ClientConfig,
    ImmutableCredentials.AccessKey, ImmutableCredentials.SecretKey);
end;

end.
