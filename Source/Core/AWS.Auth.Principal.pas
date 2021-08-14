unit AWS.Auth.Principal;

interface

uses
  System.SysUtils;

type
  TPrincipal = class
  public const
    /// <summary>
    /// The default Principal provider for AWS accounts.
    /// </summary>
    AWS_PROVIDER = 'AWS';

    /// <summary>
    /// Principal provider for Canonical User IDs.
    /// </summary>
    CANONICAL_USER_PROVIDER = 'CanonicalUser';

    /// <summary>
    /// Principal provider for federated users (using a SAML identity provider)
    /// </summary>
    FEDERATED_PROVIDER = 'Federated';

    /// <summary>
    /// Principal provider for assume role policies that will be assumed by an AWS service
    /// (e.g. 'ec2.amazonaws.com').
    /// </summary>
    SERVICE_PROVIDER = 'Service';

    /// <summary>
    /// Dummy principal provider for anonynous.
    /// </summary>
    ANONYMOUS_PROVIDER = '__ANONYMOUS__';
  strict private
    FId: string;
    FProvider: string;
  public
    constructor Create(const AAccountId: string); overload;
    constructor Create(const AProvider, AId: string); overload;
    constructor Create(const AProvider, AId: string; AStripHyphen: Boolean); overload;
    property Id: string read FId;
    property Provider: string read FProvider write FProvider;
  end;

implementation

{ TPrincipal }

constructor TPrincipal.Create(const AProvider, AId: string);
begin
  Create(AProvider, AId, AProvider = AWS_PROVIDER);
end;

constructor TPrincipal.Create(const AAccountId: string);
begin
  if AAccountId = '' then
    raise EArgumentNilException.Create('AAccountId cannot be empty');
  Create(AWS_PROVIDER, AAccountId);
end;

constructor TPrincipal.Create(const AProvider, AId: string; AStripHyphen: Boolean);
begin
  inherited Create;
  FProvider := AProvider;
  FId := AId;
  if AStripHyphen then
    FId := StringReplace(FId, '-', '', [rfReplaceAll]);
end;

end.
