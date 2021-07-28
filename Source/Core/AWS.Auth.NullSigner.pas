unit AWS.Auth.NullSigner;

interface

uses
  AWS.Auth.Signer,
  AWS.Internal.Request,
  AWS.Runtime.ClientConfig;

type
  TNullSigner = class(TAbstractAWSSigner)
  public
    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); override;
    function Protocol: TClientProtocol; override;
  end;

implementation

{ TNullSigner }

function TNullSigner.Protocol: TClientProtocol;
begin
  Result := TClientProtocol.Unknown;
end;

procedure TNullSigner.Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId,
  AAWSSecretAccessKey: string);
begin
end;

end.
