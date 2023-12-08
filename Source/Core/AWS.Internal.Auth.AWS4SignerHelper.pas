unit AWS.Internal.Auth.AWS4SignerHelper;

interface

uses
  System.SysUtils,
  AWS.Enums,
  AWS.SDKUtils,
  AWS.Util.Crypto;

type
  TAWS4SignerConsts = class
  public const
    Scheme = 'AWS4';
    Algorithm = 'HMAC-SHA256';
    AWS4AlgorithmTag = Scheme + '-' + Algorithm;
    Credential = 'Credential';
    SignedHeaders = 'SignedHeaders';
    Signature = 'Signature';
    EmptyBodySha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855';
    StreamingBodySha256 = 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD';
    AWSChunkedEncoding = 'aws-chunked';
    UnsignedPayload = 'UNSIGNED-PAYLOAD';
    SignerAlgorithm = TSigningAlgorithm.HmacSHA256;
  end;

  TAWS4PreSignedUrlSignerConsts = class
  public const
    // 7 days is the maximum period for presigned url expiry with AWS4
    MaxAWS4PreSignedUrlExpiry: Int64 = 7 * 24 * 60 * 60;

    XAmzSignature = 'X-Amz-Signature';
    XAmzAlgorithm = 'X-Amz-Algorithm';
    XAmzCredential = 'X-Amz-Credential';
    XAmzExpires = 'X-Amz-Expires';
  end;

  TAWS4SignerUtils = class
  public
    class function ComputeHash(const AData: string): TArray<Byte>; overload; static;
    class function ComputeHash(const AData: TArray<Byte>): TArray<Byte>; overload; static;
    class function SignBlob(const Key: TArray<Byte>; const Data: string): TArray<Byte>; overload; static;
    class function SignBlob(const Key, Data: TArray<Byte>): TArray<Byte>; overload; static;
  end;

  TAWS4SigningResult = class
  strict private
    FAAwsAccessKeyId: string;
    FOriginalDateTime: TDateTime;
    FSignedHeaders: string;
    FScope: string;
    FSigningKey: TArray<Byte>;
    FSignature: TArray<Byte>;
  public
    constructor Create(const AAwsAccessKeyId: string; ASignedAt: TDateTime;
      const ASignedHeaders, AScope: string; const ASigningKey, ASignature: TArray<Byte>);
    function ForAuthorizationHeader: string;
    function ForQueryParameters: string;
    function AccessKeyId: string;
    function SignedHeaders: string;
    function Scope: string;
    function SigningKey: TArray<Byte>;
    function Signature: string;
    function SignatureBytes: TArray<Byte>;
    function ISO8601DateTime: string;
  end;

implementation

{ TAWS4SigningResult }

function TAWS4SigningResult.AccessKeyId: string;
begin
  Result := FAAwsAccessKeyId;
end;

constructor TAWS4SigningResult.Create(const AAwsAccessKeyId: string; ASignedAt: TDateTime; const ASignedHeaders,
  AScope: string; const ASigningKey, ASignature: TArray<Byte>);
begin
  FAAwsAccessKeyId := AAwsAccessKeyId;
  FOriginalDateTime := ASignedAt;
  FSignedHeaders := ASignedHeaders;
  FScope := AScope;
  FSigningKey := ASigningKey;
  FSignature := ASignature;
end;

function TAWS4SigningResult.ForAuthorizationHeader: string;
begin
  Result := TAWS4SignerConsts.AWS4AlgorithmTag;
  Result := Result + Format(' %s=%s/%s,', [TAWS4SignerConsts.Credential, AccessKeyId, Scope]);
  Result := Result + Format(' %s=%s,', [TAWS4SignerConsts.SignedHeaders, SignedHeaders]);
  Result := Result + Format(' %s=%s', [TAWS4SignerConsts.Signature, Signature]);
end;

function TAWS4SigningResult.ForQueryParameters: string;
begin
  Result := '';
  Result := Result + Format('%s=%s', [TAWS4PreSignedUrlSignerConsts.XAmzAlgorithm, TAWS4SignerConsts.AWS4AlgorithmTag]);
  Result := Result + Format('&%s=%s', [TAWS4PreSignedUrlSignerConsts.XAmzCredential, Format('%s/%s', [AccessKeyId, Scope])]);
  Result := Result + Format('&%s=%s', [THeaderKeys.XAmzDateHeader, ISO8601DateTime]);
  Result := Result + Format('&%s=%s', [THeaderKeys.XAmzSignedHeadersHeader, SignedHeaders]);
  Result := Result + Format('&%s=%s', [TAWS4PreSignedUrlSignerConsts.XAmzSignature, Signature]);
end;

function TAWS4SigningResult.ISO8601DateTime: string;
begin
  Result := FormatDateTime(TAWSSDKUtils.ISO8601BasicDateTimeFormat, FOriginalDateTime);
end;

function TAWS4SigningResult.Scope: string;
begin
  Result := FScope;
end;

function TAWS4SigningResult.Signature: string;
begin
  Result := TAWSSDKUtils.ToHex(FSignature, True);
end;

function TAWS4SigningResult.SignatureBytes: TArray<Byte>;
begin
  Result := FSignature;
end;

function TAWS4SigningResult.SignedHeaders: string;
begin
  Result := FSignedHeaders;
end;

function TAWS4SigningResult.SigningKey: TArray<Byte>;
begin
  Result := FSigningKey;
end;

{ TAWS4SignerUtils }

class function TAWS4SignerUtils.ComputeHash(const AData: TArray<Byte>): TArray<Byte>;
begin
  Result := TCryptoUtilFactory.CryptoInstance.ComputeSHA256Hash(AData);
end;

class function TAWS4SignerUtils.SignBlob(const Key, Data: TArray<Byte>): TArray<Byte>;
begin
  Result := TCryptoUtilFactory.CryptoInstance.HMACSignBinary(Data, Key, TAWS4SignerConsts.SignerAlgorithm);
end;

class function TAWS4SignerUtils.SignBlob(const Key: TArray<Byte>; const Data: string): TArray<Byte>;
begin
  Result := SignBlob(Key, TEncoding.UTF8.GetBytes(Data));
end;

class function TAWS4SignerUtils.ComputeHash(const AData: string): TArray<Byte>;
begin
  Result := ComputeHash(TEncoding.UTF8.GetBytes(AData));
end;

end.
