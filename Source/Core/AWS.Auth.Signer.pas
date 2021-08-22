unit AWS.Auth.Signer;

{$I AWS.inc}

interface

uses
  System.Generics.Defaults, System.Generics.Collections, System.SysUtils, System.StrUtils,
  System.DateUtils,
  Bcl.Collections,
  AWS.Runtime.ClientConfig,
  AWS.Internal.Request,
  AWS.SDKUtils,
  AWS.RegionEndpoint;

type
  TClientProtocol = (Unknown, QueryStringProtocol, RestProtocol);

  TAbstractAWSSigner = class
  public
    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); virtual; abstract;
    function Protocol: TClientProtocol; virtual; abstract;
  end;

  TAWS4SigningResult = record
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

  /// <summary>
  /// AWS4 protocol signer for service calls that transmit authorization in the header field "Authorization".
  /// </summary>
  TAWS4Signer = class(TAbstractAWSSigner)
  public const
    Scheme = 'AWS4';
    Algorithm = 'HMAC-SHA256';
    AWS4AlgorithmTag = Scheme + '-' + Algorithm;
    Terminator = 'aws4_request';
    Credential = 'Credential';
    SignedHeaders = 'SignedHeaders';
    Signature = 'Signature';
    EmptyBodySha256 = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855';
    StreamingBodySha256 = 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD';
    AWSChunkedEncoding = 'aws-chunked';
    UnsignedPayload = 'UNSIGNED-PAYLOAD';
    SignerAlgorithm = TSigningAlgorithm.HmacSHA256;
    class var TerminatorBytes: TArray<Byte>;
    class var FHeadersToIgnoreWhenSigning: HashSet<string>;
  strict private
    class constructor Create;
    class destructor Destroy;
    class procedure ValidateRequest(ARequest: IRequest); static;
    class procedure CleanHeaders(AHeaders: TDictionary<string, string>); static;
    class function GetRequestPayloadBytes(ARequest: IRequest): TArray<Byte>; static;
    class procedure SetPayloadSignatureHeader(ARequest: IRequest; const APayloadHash: string); static;
    class function CanonicalizeRequestHelper(AEndpoint: IUri; const AResourcePath, AHttpMethod: string;
      ASortedHeaders: TOrderedDictionary<string, string>; const ACanonicalQueryString, APrecomputedBodyHash: string;
      APathResources: TDictionary<string, string>; AMarshallerVersion: Integer;
      ADetectPreEncode: Boolean): string; static;
  strict protected
    class function DetermineService(AClientConfig: IClientConfig): string; static;
    class function GetParametersToCanonicalize(ARequest: IRequest): TArray<TPair<string, string>>; static;
    class function CanonicalizeQueryParameters(const AParameters: TArray<TPair<string, string>>): string; overload; static;
    class function CanonicalizeQueryParameters(const AParameters: TArray<TPair<string, string>>;
      AUriEncodeParameters: Boolean): string; overload; static;
    class procedure SortAndPruneHeaders(ARequestHeaders: TDictionary<string, string>;
      ASortedHeaders: TOrderedDictionary<string, string>);
    class function CanonicalizeRequest(AEndpoint: IUri; const AResourcePath, AHttpMethod: string;
      ASortedHeaders: TOrderedDictionary<string, string>; const ACanonicalQueryString, APrecomputedBodyHash: string;
      APathResources: TDictionary<string, string>; AMarshallerVersion: Integer;
      const AService: string): string; static;
      class function CanonicalizeHeaders(ASortedHeaders: TOrderedDictionary<string, string>): string; static;
      class function CanonicalizeHeaderNames(ASortedHeaders: TOrderedDictionary<string, string>): string; static;
  public
    class function InitializeHeaders(AHeaders: TDictionary<string, string>;
      const ARequestEndpoint: IUri): TDateTime; overload; static;
    class function InitializeHeaders(AHeaders: TDictionary<string, string>;
      const ARequestEndpoint: IUri; ARequestDateTime: TDateTime): TDateTime; overload; static;
    class function DetermineSigningRegion(AClientConfig: IClientConfig; const AServiceName: string;
      AAlternateEndpoint: IRegionEndpointEx; ARequest: IRequest): string; static;
    class function SetRequestBodyHash(ARequest: IRequest; ASignPayload: Boolean): string; static;
    class function ComputeSignature(const AAWSAccessKey, AAWSSecretAccessKey, ARegion: string;
      ASignedAt: TDateTime; const AService, ASignedHeaders, ACanonicalRequest: string): TAWS4SigningResult; static;
    class function ComputeHash(const AData: string): TArray<Byte>; overload; static;
    class function ComputeHash(const AData: TArray<Byte>): TArray<Byte>; overload; static;
    class function ComposeSigningKey(const AAwsSecretAccessKey, ARegion, ADate, AService: string): TArray<Byte>; static;
    class function ComputeKeyedHash(AAlgorithm: TSigningAlgorithm;
      const AKey, AData: TArray<Byte>): TArray<Byte>; overload; static;
//    class function DoFormatDateTime(ADt: TDateTime; const AFormatString: string): string; static;
  strict private
    FSignPayload: Boolean;
  public
    constructor Create(ASignPayload: Boolean = True);
    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); override;
    function SignRequest(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string): TAWS4SigningResult;
    function Protocol: TClientProtocol; override;
    property SignPayload: Boolean read FSignPayload;
  end;

  TAWS4PreSignedUrlSigner = class(TAWS4Signer)
  private const
    // 7 days is the maximum period for presigned url expiry with AWS4
    MaxAWS4PreSignedUrlExpiry: Int64 = 7 * 24 * 60 * 60;

    XAmzSignature = 'X-Amz-Signature';
    XAmzAlgorithm = 'X-Amz-Algorithm';
    XAmzCredential = 'X-Amz-Credential';
    XAmzExpires = 'X-Amz-Expires';
  private
    class function IsServiceUsingUnsignedPayload(const AService: string): Boolean; static;
  public
    /// <summary>
    /// Calculates the AWS4 signature for a presigned url.
    /// </summary>
    /// <param name="ARequest">
    /// The request to compute the signature for. Additional headers mandated by the AWS4 protocol
    /// ('host' and 'x-amz-date') will be added to the request before signing. If the Expires parameter
    /// is present, it is renamed to 'X-Amz-Expires' before signing.
    /// </param>
    /// <param name="AClientConfig">
    /// Adding supporting data for the service call required by the signer (notably authentication
    /// region, endpoint and service name).
    /// </param>
    /// <param name="AAwsAccessKeyId">
    /// The AWS public key for the account making the service call.
    /// </param>
    /// <param name="AAwsSecretAccessKey">
    /// The AWS secret key for the account making the call, in clear text
    /// </param>
    /// <exception cref="Amazon.Runtime.SignatureException">
    /// If any problems are encountered while signing the request.
    /// </exception>
    /// <remarks>
    /// Parameters passed as part of the resource path should be uri-encoded prior to
    /// entry to the signer. Parameters passed in the request.Parameters collection should
    /// be not be encoded; encoding will be done for these parameters as part of the
    /// construction of the canonical request.
    /// </remarks>
    function SignRequest(ARequest: IRequest; AClientConfig: IClientConfig;
      const AAwsAccessKeyId, AAwsSecretAccessKey: string): TAWS4SigningResult; overload;

    /// <summary>
    /// Calculates the AWS4 signature for a presigned url.
    /// </summary>
    /// <param name="ARequest">
    /// The request to compute the signature for. Additional headers mandated by the AWS4 protocol
    /// ('host' and 'x-amz-date') will be added to the request before signing. If the Expires parameter
    /// is present, it is renamed to 'X-Amz-Expires' before signing.
    /// </param>
    /// <param name="AClientConfig">
    /// Adding supporting data for the service call required by the signer (notably authentication
    /// region, endpoint and service name).
    /// </param>
    /// <param name="AAwsAccessKeyId">
    /// The AWS public key for the account making the service call.
    /// </param>
    /// <param name="AAwsSecretAccessKey">
    /// The AWS secret key for the account making the call, in clear text
    /// </param>
    /// <param name="AService">
    /// The service to sign for
    /// </param>
    /// <param name="AOverrideSigningRegion">
    /// The region to sign to, if null then the region the client is configured for will be used.
    /// </param>
    /// <exception cref="Amazon.Runtime.SignatureException">
    /// If any problems are encountered while signing the request.
    /// </exception>
    /// <remarks>
    /// Parameters passed as part of the resource path should be uri-encoded prior to
    /// entry to the signer. Parameters passed in the request.Parameters collection should
    /// be not be encoded; encoding will be done for these parameters as part of the
    /// construction of the canonical request.
    ///
    /// The X-Amz-Content-SHA256 is cleared out of the request.
    /// If the request is for S3 then the UNSIGNED_PAYLOAD value is used to generate the canonical request.
    /// If the request isn't for S3 then the empty body SHA is used to generate the canonical request.
    /// </remarks>
    class function SignRequest(ARequest: IRequest; AClientConfig: IClientConfig; const AAwsAccessKeyId,
      AAwsSecretAccessKey, AService, AOverrideSigningRegion: string): TAWS4SigningResult; overload; static;
  end;

implementation

uses
  AWS.Runtime.Exceptions,
  AWS.Util.Crypto,
  AWS.Internal.IRegionEndpoint;

{ TAWS4Signer }

class constructor TAWS4Signer.Create;
begin
  TerminatorBytes := TEncoding.UTF8.GetBytes(Terminator);
  FHeadersToIgnoreWhenSigning := HashSet<string>.Create(TIStringComparer.Ordinal);
  FHeadersToIgnoreWhenSigning.Add(THeaderKeys.XAmznTraceIdHeader);
  FHeadersToIgnoreWhenSigning.Add(THeaderKeys.TransferEncodingHeader);
  FHeadersToIgnoreWhenSigning.Add(THeaderKeys.AmzSdkInvocationId);
  FHeadersToIgnoreWhenSigning.Add(THeaderKeys.AmzSdkRequest);
end;

class function TAWS4Signer.CanonicalizeQueryParameters(const AParameters: TArray<TPair<string, string>>): string;
begin
  Result := CanonicalizeQueryParameters(AParameters, True);
end;

class function TAWS4Signer.CanonicalizeHeaderNames(ASortedHeaders: TOrderedDictionary<string, string>): string;
var
  Entry: TPair<string, string>;
begin
  Result := '';
  for Entry in ASortedHeaders do
  begin
    if Result <> '' then
      Result := Result + ';';
    Result := Result + LowerCase(Entry.Key);
  end;
end;

class function TAWS4Signer.CanonicalizeHeaders(ASortedHeaders: TOrderedDictionary<string, string>): string;
const
  sLF = #10;
var
  Entry: TPair<string, string>;
begin
  Result := '';
  for Entry in ASortedHeaders do
    Result := Result + LowerCase(Entry.Key) + ':' +
      Trim(TAWSSDKUtils.CompressSpaces(Entry.Value)) + sLF;
end;

class function TAWS4Signer.CanonicalizeQueryParameters(const AParameters: TArray<TPair<string, string>>;
  AUriEncodeParameters: Boolean): string;
var
  SortedParameters: TList<TPair<string, string>>;
  Param: TPair<string, string>;
begin
  Result := '';
  if Length(AParameters) = 0 then
    Exit;

  SortedParameters := TList<TPair<string, string>>.Create;
  try
    SortedParameters.AddRange(AParameters);
    SortedParameters.Sort(TComparer<TPair<string, string>>.Construct(
      function(const Left, Right: TPair<string, string>): Integer
      begin
        Result := CompareStr(Left.Key, Right.Key);
        if Result = 0 then
          Result := CompareStr(Left.Value, Right.Value);
      end));

    for Param in SortedParameters do
    begin
      if Result <> '' then
        Result := Result + '&';
      if AUriEncodeParameters then
        Result := Result + TAWSSDKUtils.UrlEncode(Param.Key, False) + '=' +
          TAWSSDKUtils.UrlEncode(Param.Value, False)
      else
        Result := Result + Param.Key + '=' + Param.Value;
    end;
  finally
    SortedParameters.Free;
  end;
end;

class function TAWS4Signer.CanonicalizeRequest(AEndpoint: IUri; const AResourcePath, AHttpMethod: string;
  ASortedHeaders: TOrderedDictionary<string, string>; const ACanonicalQueryString, APrecomputedBodyHash: string;
  APathResources: TDictionary<string, string>; AMarshallerVersion: Integer; const AService: string): string;
begin
  Result := CanonicalizeRequestHelper(AEndpoint, AResourcePath, AHttpMethod, ASortedHeaders,
    ACanonicalQueryString, APrecomputedBodyHash, APathResources, AMarshallerVersion, AService <> 's3');
end;

class function TAWS4Signer.CanonicalizeRequestHelper(AEndpoint: IUri; const AResourcePath, AHttpMethod: string;
  ASortedHeaders: TOrderedDictionary<string, string>; const ACanonicalQueryString, APrecomputedBodyHash: string;
  APathResources: TDictionary<string, string>; AMarshallerVersion: Integer; ADetectPreEncode: Boolean): string;
const
  sLF = #10;
var
  ContentHash: string;
begin
  Result := '';
  Result := Result + AHttpMethod + sLF;
  Result := Result + TAWSSDKUtils.CanonicalizeResourcePath(AEndpoint, AResourcePath,
    ADetectPreEncode, APathResources, AMarshallerVersion) + sLF;
  Result := Result + ACanonicalQueryString + sLF;
  Result := Result + CanonicalizeHeaders(ASortedHeaders) + sLF;
  Result := Result + CanonicalizeHeaderNames(ASortedHeaders) + sLF;
  if APrecomputedBodyHash <> '' then
    Result := Result + APrecomputedBodyHash
  else
  if ASortedHeaders.TryGetValue(THeaderKeys.XAmzContentSha256Header, ContentHash) then
    Result := Result + ContentHash;
end;

class procedure TAWS4Signer.CleanHeaders(AHeaders: TDictionary<string, string>);
begin
  AHeaders.Remove(THeaderKeys.AuthorizationHeader);
  AHeaders.Remove(THeaderKeys.XAmzContentSha256Header);

  if AHeaders.ContainsKey(THeaderKeys.XAmzDecodedContentLengthHeader) then
  begin
    AHeaders.AddOrSetValue(THeaderKeys.ContentLengthHeader,
      AHeaders[THeaderKeys.XAmzDecodedContentLengthHeader]);
    AHeaders.Remove(THeaderKeys.XAmzDecodedContentLengthHeader);
  end;
end;

class function TAWS4Signer.ComposeSigningKey(const AAwsSecretAccessKey, ARegion, ADate, AService: string): TArray<Byte>;
var
  KSecret: string;
  HashDate: TArray<Byte>;
  HashRegion: TArray<Byte>;
  HashService: TArray<Byte>;
begin
  try
    KSecret := Scheme + AAwsSecretAccessKey;
    HashDate := ComputeKeyedHash(SignerAlgorithm, TEncoding.UTF8.GetBytes(KSecret), TEncoding.UTF8.GetBytes(ADate));
    HashRegion := ComputeKeyedHash(SignerAlgorithm, HashDate, TEncoding.UTF8.GetBytes(ARegion));
    HashService := ComputeKeyedHash(SignerAlgorithm, HashRegion, TEncoding.UTF8.GetBytes(AService));
    Result := ComputeKeyedHash(SignerAlgorithm, HashService, TerminatorBytes);
  finally
    FillChar(KSecret[1], Length(KSecret) * 2, 0);
  end;
end;

class function TAWS4Signer.ComputeHash(const AData: TArray<Byte>): TArray<Byte>;
begin
  Result := TCryptoUtilFactory.CryptoInstance.ComputeSHA256Hash(AData);
end;

class function TAWS4Signer.ComputeKeyedHash(AAlgorithm: TSigningAlgorithm; const AKey,
  AData: TArray<Byte>): TArray<Byte>;
begin
  Result := TCryptoUtilFactory.CryptoInstance.HMACSignBinary(AData, AKey, AAlgorithm);
end;

class function TAWS4Signer.ComputeHash(const AData: string): TArray<Byte>;
begin
  Result := ComputeHash(TEncoding.UTF8.GetBytes(AData));
end;

class function TAWS4Signer.ComputeSignature(const AAWSAccessKey, AAWSSecretAccessKey, ARegion: string;
  ASignedAt: TDateTime; const AService, ASignedHeaders, ACanonicalRequest: string): TAWS4SigningResult;
var
  DateStamp: string;
  Scope: string;
  StringToSign: string;
  Key: TArray<Byte>;
  Signature: TArray<Byte>;
begin
  DateStamp := FormatDateTime(TAWSSDKUtils.ISO8601BasicDateFormat, ASignedAt);
  Scope := Format('%s/%s/%s/%s', [DateStamp, ARegion, AService, Terminator]);

  StringToSign := Format('%s-%s'#10'%s'#10'%s'#10,
    [Scheme,
     Algorithm,
     FormatDateTime(TAWSSDKUtils.ISO8601BasicDateTimeFormat, ASignedAt),
     Scope]);

  StringToSign := StringToSign + TAWSSDKUtils.ToHex(ComputeHash(ACanonicalRequest), True);
  Key := ComposeSigningKey(AAWSSecretAccessKey, ARegion, DateStamp, AService);
  Signature := ComputeKeyedHash(SignerAlgorithm, Key, TEncoding.UTF8.GetBytes(StringToSign));
  Result := TAWS4SigningResult.Create(AAWSAccessKey, ASignedAt, ASignedHeaders, Scope,
    Key, Signature);
end;

constructor TAWS4Signer.Create(ASignPayload: Boolean);
begin
  inherited Create;
  FSignPayload := ASignPayload;
end;

class destructor TAWS4Signer.Destroy;
begin
  FHeadersToIgnoreWhenSigning.Free;
end;

class function TAWS4Signer.DetermineService(AClientConfig: IClientConfig): string;
begin
  if AClientConfig.AuthenticationServiceName <> '' then
    Result := AClientConfig.AuthenticationServiceName
  else
    Result := TAWSSDKUtils.DetermineService(AClientConfig.DetermineServiceUrl);
end;

class function TAWS4Signer.DetermineSigningRegion(AClientConfig: IClientConfig; const AServiceName: string;
  AAlternateEndpoint: IRegionEndpointEx; ARequest: IRequest): string;
var
  ServiceEndpoint: IEndpoint;
  AuthenticationRegion: string;
  ParsedRegion: string;
  Endpoint: IRegionEndpointEx;
begin
  if AAlternateEndpoint <> nil then
  begin
    ServiceEndpoint := AAlternateEndpoint.GetEndpointForService(AServiceName, AClientConfig.UseDualstackEndpoint);
    if ServiceEndpoint.AuthRegion <> '' then
      Exit(ServiceEndpoint.AuthRegion);

    Exit(AAlternateEndpoint.SystemName);
  end;

  AuthenticationRegion := AClientConfig.AuthenticationRegion;
  if (ARequest <> nil) and (ARequest.AuthenticationRegion <> '') then
    AuthenticationRegion := ARequest.AuthenticationRegion;

  if AuthenticationRegion <> '' then
    Exit(LowerCase(AuthenticationRegion));

  if AClientConfig.ServiceURL <> '' then
  begin
    ParsedRegion := TAWSSDKUtils.DetermineRegion(AClientConfig.ServiceURL);
    if ParsedRegion <> '' then
      Exit(LowerCase(ParsedRegion));
  end;

  Endpoint := AClientConfig.RegionEndpoint;
  if Endpoint <> nil then
  begin
    ServiceEndpoint := Endpoint.GetEndpointForService(AServiceName, AClientConfig.UseDualstackEndpoint);
    if ServiceEndpoint.AuthRegion <> '' then
      Exit(ServiceEndpoint.AuthRegion);

    {TODO: Check if the region is overridden in the endpoints.json file}
    //

    Exit(Endpoint.SystemName);
  end;

  Result := '';
end;

//class function TAWS4Signer.DoFormatDateTime(ADt: TDateTime; const AFormatString: string): string;
//begin
//  Result := FormatDateTime(AFormatString, TTimeZone.Local.ToUniversalTime(ADt));
//end;

class function TAWS4Signer.GetParametersToCanonicalize(ARequest: IRequest): TArray<TPair<string, string>>;
var
  ParametersToCanonicalize: TList<TPair<string, string>>;
  SubResource: TPair<string, string>;
  QueryParameter: TPair<string, string>;
begin
  ParametersToCanonicalize := TList<TPair<string, string>>.Create;
  try
    for SubResource in ARequest.SubResources do
      ParametersToCanonicalize.Add(SubResource);

    if ARequest.UseQueryString then
    begin
      for QueryParameter in ARequest.ParameterCollection.GetSortedParametersList do
        if QueryParameter.Value <> '' then
          ParametersToCanonicalize.Add(QueryParameter);
    end;
    Result := ParametersToCanonicalize.ToArray;
  finally
    ParametersToCanonicalize.Free;
  end;
end;

class function TAWS4Signer.GetRequestPayloadBytes(ARequest: IRequest): TArray<Byte>;
var
  Content: string;
begin
  if Length(ARequest.Content) > 0 then
    Result := ARequest.Content
  else
  begin
    if not ARequest.UseQueryString then
      Content := TAWSSDKUtils.GetParametersAsString(ARequest.ParameterCollection);
    Result := TEncoding.UTF8.GetBytes(Content);
  end;
end;

class function TAWS4Signer.InitializeHeaders(AHeaders: TDictionary<string, string>; const ARequestEndpoint: IUri;
  ARequestDateTime: TDateTime): TDateTime;
var
  HostHeader: string;
begin
  // clean up any prior signature in the headers if resigning
  CleanHeaders(AHeaders);

  if not (AHeaders.ContainsKey(THeaderKeys.HostHeader)) then
  begin
    HostHeader := ARequestEndpoint.Authority;
    AHeaders.Add(THeaderKeys.HostHeader, HostHeader);
  end;
  AHeaders.AddOrSetValue(THeaderKeys.XAmzDateHeader,
    FormatDateTime(TAWSSDKUtils.ISO8601BasicDateTimeFormat, ARequestDateTime));
  Result := ARequestDateTime;
end;

class function TAWS4Signer.InitializeHeaders(AHeaders: TDictionary<string, string>;
  const ARequestEndpoint: IUri): TDateTime;
begin
  {TODO: Clock skew correction not implemented}
  Result := InitializeHeaders(AHeaders, ARequestEndpoint, TTimeZone.Local.ToUniversalTime(Now));
end;

function TAWS4Signer.Protocol: TClientProtocol;
begin
  Result := TClientProtocol.RestProtocol;
end;

class procedure TAWS4Signer.SetPayloadSignatureHeader(ARequest: IRequest; const APayloadHash: string);
begin
  ARequest.Headers.AddOrSetValue(THeaderKeys.XAmzContentSha256Header, APayloadHash);
end;

class function TAWS4Signer.SetRequestBodyHash(ARequest: IRequest; ASignPayload: Boolean): string;
var
  ComputedContentHash: string;
  PayloadBytes: TArray<Byte>;
  PayloadHashBytes: TArray<Byte>;
begin
  {TODO: Allows Disabled payload signing}
//  if ARequest.DisablePayloadSigning or not ASignPayload then
//    Exit(SetPayloadSignatureHeader(ARequest, UnsignedPayload);

  // if the body hash has been precomputed and already placed in the header, just extract and return it
  if ARequest.Headers.TryGetValue(THeaderKeys.XAmzContentSha256Header, ComputedContentHash) and
    not ARequest.UseChunkEncoding then
    Exit(ComputedContentHash);

  // otherwise continue to calculate the hash and set it in the headers before returning
  if ARequest.UseChunkEncoding then
    {TODO: Support chunk encoding}
    raise EInvalidOpException.Create('ChunkEncoding not yet supported.')
  else
  begin
    if ARequest.ContentStream <> nil then
      ComputedContentHash := ARequest.ComputeContentStreamHash
    else
    begin
      PayloadBytes := GetRequestPayloadBytes(ARequest);
      PayloadHashBytes := TCryptoUtilFactory.CryptoInstance.ComputeSHA256Hash(PayloadBytes);
      ComputedContentHash := TAWSSDKUtils.ToHex(PayloadHashBytes, True);
    end;
  end;

  if ComputedContentHash = '' then
    ComputedContentHash := UnsignedPayload;

  SetPayloadSignatureHeader(ARequest, ComputedContentHash);
  Result := ComputedContentHash;
end;

procedure TAWS4Signer.Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId,
  AAWSSecretAccessKey: string);
var
  SigningResult: TAWS4SigningResult;
begin
  SigningResult := SignRequest(ARequest, AClientConfig, AAWSAccessKeyId, AAWSSecretAccessKey);
  ARequest.Headers.AddOrSetValue(THeaderKeys.AuthorizationHeader, SigningResult.ForAuthorizationHeader);
end;

function TAWS4Signer.SignRequest(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId,
  AAWSSecretAccessKey: string): TAWS4SigningResult;
var
  SignedAt: TDateTime;
  Service: string;
  ParametersToCanonicalize: TArray<TPair<string, string>>;
  CanonicalParameters: string;
  BodyHash: string;
  SortedHeaders: TOrderedDictionary<string, string>;
  CanonicalRequest: string;
begin
  ValidateRequest(ARequest);
  SignedAt := InitializeHeaders(ARequest.Headers, ARequest.Endpoint);
  if ARequest.OverrideSigningServiceName <> '' then
    Service := ARequest.OverrideSigningServiceName
  else
    Service := DetermineService(AClientConfig);
  ARequest.DeterminedSigningRegion := DetermineSigningRegion(AClientConfig, Service,
    ARequest.AlternateEndpoint, ARequest);

  ParametersToCanonicalize := GetParametersToCanonicalize(ARequest);
  CanonicalParameters := CanonicalizeQueryParameters(ParametersToCanonicalize);
  BodyHash := SetRequestBodyHash(ARequest, SignPayload);
  SortedHeaders := TOrderedDictionary<string, string>.Create;
  try
    SortAndPruneHeaders(ARequest.Headers, SortedHeaders);
    CanonicalRequest := CanonicalizeRequest(ARequest.Endpoint, ARequest.ResourcePath,
      ARequest.HttpMethod, SortedHeaders, CanonicalParameters, BodyHash,
      ARequest.PathResources, ARequest.MarshallerVersion, Service);
    Result := ComputeSignature(AAwsAccessKeyId, AAwsSecretAccessKey, ARequest.DeterminedSigningRegion,
      SignedAt, Service, CanonicalizeHeaderNames(SortedHeaders), CanonicalRequest);
  finally
    SortedHeaders.Free;
  end;
end;

class procedure TAWS4Signer.SortAndPruneHeaders(ARequestHeaders: TDictionary<string, string>;
  ASortedHeaders: TOrderedDictionary<string, string>);
var
  Header, TempHeader: TPair<string, string>;
  HeaderList: TList<TPair<string, string>>;
begin
  HeaderList := TList<TPair<string, string>>.Create;
  try
    for Header in ARequestHeaders do
      if not FHeadersToIgnoreWhenSigning.Contains(Header.Key) then
      begin
        TempHeader.Key := LowerCase(Header.Key);
        TempHeader.Value := Header.Value;
        HeaderList.Add(TempHeader);
      end;
    HeaderList.Sort(TComparer<TPair<string, string>>.Construct(
      function(const Left, Right: TPair<string, string>): Integer
      begin
        Result := CompareStr(Left.Key, Right.Key);
      end));
    for Header in HeaderList do
      ASortedHeaders.Add(Header.Key, Header.Value);
  finally
    HeaderList.Free;
  end;
end;

class procedure TAWS4Signer.ValidateRequest(ARequest: IRequest);
begin
  // Before we sign the request, we need to validate if the request is being
  // sent over https when DisablePayloadSigning is true.
  if ARequest.DisablePayloadSigning and not SameText(ARequest.Endpoint.Scheme, 'https') then
    raise EAmazonClientException.Create('When DisablePayloadSigning is true, the request must be sent over HTTPS.');
end;

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
  Result := TAWS4Signer.AWS4AlgorithmTag;
  Result := Result + Format(' %s=%s/%s,', [TAWS4Signer.Credential, AccessKeyId, Scope]);
  Result := Result + Format(' %s=%s,', [TAWS4Signer.SignedHeaders, SignedHeaders]);
  Result := Result + Format(' %s=%s', [TAWS4Signer.Signature, Signature]);
end;

function TAWS4SigningResult.ForQueryParameters: string;
begin
  Result := '';
  Result := Result + Format('%s=%s', [TAWS4PreSignedUrlSigner.XAmzAlgorithm, TAWS4Signer.AWS4AlgorithmTag]);
  Result := Result + Format('&%s=%s', [TAWS4PreSignedUrlSigner.XAmzCredential, Format('%s/%s', [AccessKeyId, Scope])]);
  Result := Result + Format('&%s=%s', [THeaderKeys.XAmzDateHeader, ISO8601DateTime]);
  Result := Result + Format('&%s=%s', [THeaderKeys.XAmzSignedHeadersHeader, SignedHeaders]);
  Result := Result + Format('&%s=%s', [TAWS4PreSignedUrlSigner.XAmzSignature, Signature]);
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

{ AWS4PreSignedUrlSigner }

function TAWS4PreSignedUrlSigner.SignRequest(ARequest: IRequest; AClientConfig: IClientConfig; const AAwsAccessKeyId,
  AAwsSecretAccessKey: string): TAWS4SigningResult;
var
  Service: string;
begin
  Service := 's3';
  if ARequest.OverrideSigningServiceName <> '' then
    Service := ARequest.OverrideSigningServiceName;
  Result := SignRequest(ARequest, AClientConfig, AAwsAccessKeyId, AAwsSecretAccessKey, Service, '');
end;

class function TAWS4PreSignedUrlSigner.IsServiceUsingUnsignedPayload(const AService: string): Boolean;
begin
  Result := SameText(AService, 's3') or SameText(AService, 's3-object-lambda');
end;

class function TAWS4PreSignedUrlSigner.SignRequest(ARequest: IRequest; AClientConfig: IClientConfig; const AAwsAccessKeyId,
  AAwsSecretAccessKey, AService, AOverrideSigningRegion: string): TAWS4SigningResult;
var
  HostHeader: string;
  SignedAt: TDatetime;
  Region: string;
  SortedHeaders: TOrderedDictionary<string, string>;
  ParametersToCanonicalize: TArray<TPair<string, string>>;
  Index: Integer;
  XAmzCredentialValue: string;
  CanonicalQueryParameters: string;
  BodyHash: string;
  CanonicalRequest: string;
  CanonicalizedHeaderNames: string;
begin
  // clean up any prior signature in the headers if resigning
  ARequest.Headers.Remove(THeaderKeys.AuthorizationHeader);
  if not ARequest.Headers.ContainsKey(THeaderKeys.HostHeader) then
  begin
    HostHeader := ARequest.Endpoint.Host;
    {TODO: Review this}
//    if not ARequest.Endpoint.IsDefaultPort then
//      HostHeader := HostHeader + ':' + ARequest.Endpoint.Port;
    ARequest.Headers.Add(THeaderKeys.HostHeader, HostHeader);
  end;

  {TODO: Review clock skew correction}
  SignedAt := TTimeZone.Local.ToUniversalTime(Now);
  if AOverrideSigningRegion <> '' then
    Region := AOverrideSigningRegion
  else
    Region := DetermineSigningRegion(AClientConfig, AService, ARequest.AlternateEndpoint, ARequest);

  // AWS4 presigned urls got S3 are expected to contain a 'UNSIGNED-PAYLOAD' magic string
  // during signing (other services use the empty-body sha)
  if ARequest.Headers.ContainsKey(THeaderKeys.XAmzContentSha256Header) then
    ARequest.Headers.Remove(THeaderKeys.XAmzContentSha256Header);

  SortedHeaders := TOrderedDictionary<string, string>.Create;
  try
    SortAndPruneHeaders(ARequest.Headers, SortedHeaders);
    CanonicalizedHeaderNames := CanonicalizeHeaderNames(SortedHeaders);
    ParametersToCanonicalize := GetParametersToCanonicalize(ARequest);

    Index := Length(ParametersToCanonicalize);
    SetLength(ParametersToCanonicalize, Index + 4);

    ParametersToCanonicalize[Index] := TPair<string,string>
      .Create(XAmzAlgorithm, AWS4AlgorithmTag);

    XAmzCredentialValue := Format('%s/%s/%s/%s/%s',
      [AAwsAccessKeyId, FormatDateTime(TAWSSDKUtils.ISO8601BasicDateFormat, SignedAt),
       Region, AService, Terminator]);
    Inc(Index);
    parametersToCanonicalize[Index] := TPair<string,string>
      .Create(XAmzCredential, xAmzCredentialValue);

    Inc(Index);
    parametersToCanonicalize[Index] := TPair<string,string>
      .Create(
        THeaderKeys.XAmzDateHeader,
        FormatDateTime(TAWSSDKUtils.ISO8601BasicDateTimeFormat, SignedAt));

    Inc(Index);
    parametersToCanonicalize[Index] := TPair<string,string>
      .Create(THeaderKeys.XAmzSignedHeadersHeader, CanonicalizedHeaderNames);

    CanonicalQueryParameters := CanonicalizeQueryParameters(ParametersToCanonicalize);

    if IsServiceUsingUnsignedPayload(AService) then
      BodyHash := UnsignedPayload
    else
      BodyHash := EmptyBodySha256;

    CanonicalRequest := CanonicalizeRequest(ARequest.Endpoint, ARequest.ResourcePath,
      ARequest.HttpMethod, SortedHeaders, CanonicalQueryParameters, BodyHash,
      ARequest.PathResources, ARequest.MarshallerVersion, AService);

    Result := ComputeSignature(AAwsAccessKeyId, AAwsSecretAccessKey, Region,
      SignedAt, AService, CanonicalizedHeaderNames, CanonicalRequest);
  finally
    SortedHeaders.Free;
  end;
end;

end.
