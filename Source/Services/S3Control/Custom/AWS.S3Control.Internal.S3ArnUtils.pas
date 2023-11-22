unit AWS.S3Control.Internal.S3ArnUtils;

interface

uses
  System.SysUtils,
  AWS.Runtime.Exceptions;

type
  TS3ArnUtils = class
  public
    class function GetAccountIdBasedOnArn(const ARequestAccountId, AArnAccountId: string): string;
  end;

implementation

{ TS3ArnUtils }

class function TS3ArnUtils.GetAccountIdBasedOnArn(const ARequestAccountId, AArnAccountId: string): string;
begin
  if not string.IsNullOrEmpty(AArnAccountId) and not string.IsNullOrEmpty(ARequestAccountId)
    and not string.Equals(AArnAccountId, ARequestAccountId) then
    raise EAmazonClientException.Create('Account ID mismatch, the Account ID cannot be specified in an ARN and in the accountId field');

  if string.IsNullOrEmpty(AArnAccountId) and string.IsNullOrEmpty(ARequestAccountId) then
    raise EAmazonClientException.Create('Invalid ARN, Account ID not set');

  if ARequestAccountId <> '' then
    Result := ARequestAccountId
  else
    Result := AArnAccountId;
end;

end.
