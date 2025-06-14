unit AWS.SDKUtils;

{$I AWS.inc}

interface

uses
  System.Generics.Collections, System.Classes, System.IniFiles, System.SysUtils, System.StrUtils, System.DateUtils,
{$IFDEF USE_SPARKLE}
  Sparkle.Http.Client,
  {$IFDEF MSWINDOWS}
  Sparkle.WinHttp.Engine,
  {$ENDIF}
{$ELSE}
  System.Net.HttpClient,
{$ENDIF}
  AWS.Enums,
  AWS.Internal.ParameterCollection,
  AWS.Internal.IRegionEndpoint,
  AWS.Lib.HttpHeaders,
  AWS.Lib.Uri,
  AWS.Lib.Utils,
  AWS.Util.Crypto,
  AWS.Util.Streams;

type
  IUri = AWS.Lib.Uri.IUri;
  TUri = AWS.Lib.Uri.TUri;

  TProfileIniFile = class(TMemIniFile)
  strict private
    const ProfileMarker = 'profile';
    const ProfileMarkerLength = Length(ProfileMarker);
  strict private
    FProfileMarkerRequired: Boolean;
    function IsProfileSection(const SectionName: string; var ProfileName: string): Boolean;
  public
    constructor Create(const AFileName: string; AProfileMarkerRequired: Boolean); reintroduce;
    procedure ReadSections(Strings: TStrings); override;
    function TryGetSection(const Section: string; Strings: TStrings): Boolean;
    property ProfileMarkerRequired: Boolean read FProfileMarkerRequired write FProfileMarkerRequired;
  end;

  TAWSSDKUtils = class
  strict private
    const Slash = '/';
    const EncodedSlash = '%2F';
    const DefaultMarshallerVersion = 2;
  public
    const ISO8601BasicDateFormat = 'yyyymmdd';
    const ISO8601BasicDateTimeFormat = 'yyyymmdd"T"hhnnss"Z"';
    const ISO8601DateFormat = 'yyyy-mm-dd"T"hh:nn:ss.zzz"Z"';
    const DefaultBufferSize = 8192;
    const UrlEncodedContent = 'application/x-www-form-urlencoded; charset=utf-8';
    const RFC822DateFormat = 'ddd, dd MMM yyyy HH:mm:ss "GMT"';
    const GMTDateFormat = 'ddd, dd MMM yyyy HH:mm:ss "GMT"';

    const ValidUrlCharacters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.~';
    const ValidUrlCharactersRFC1738 = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.';
  strict private
    class var FUserAgent: string;
    class var FRFC822FormatSettings: TFormatSettings;
    class var FRFCEncodingSchemes: TDictionary<Integer, string>;
    class var FValidPathCharacters: string;
  strict private
    class function DetermineValidPathCharacters: string;
  public
    // Functions for internal use
    class constructor Create;
    class destructor Destroy;
    class function GetParametersAsString(AParameterCollection: TParameterCollection): string;

    class procedure CopyStream(Source, Dest: TStream); overload; static;
    class procedure CopyStream(Source, Dest: TStream; const BufferSize: Integer); overload; static;
    class function StreamToString(Source: TStream; Encoding: TEncoding = nil): string; static;
    class function StreamToBytes(Source: TStream): TArray<Byte>; static;
    class function GetExtension(const Path: string): string;
    class procedure Sleep(MS: Integer); static;
    class function TryRfc822ToDateTime(const S: string; var D: TDateTime): Boolean; static;
    class function Rfc822ToDateTime(const S: string): TDateTime; static;
    class function EncodeBase64(const Input: TArray<Byte>): string; static;
    class function DecodeBase64(const Input: string): TArray<Byte>; static;
    class function SecondsBetween(const ANow, AThen: TDateTime): Int64;
  public
    class function ResolveResourcePath(const AResourcePath: string;
      APathResources: TDictionary<string, string>): string;

    /// <summary>
    /// Splits the resourcePath at / into segments then resolves any keys with the path resource values. Greedy
    /// key values will be split into multiple segments at each /.
    /// </summary>
    /// <param name="AResourcePath">The patterned resourcePath</param>
    /// <param name="APathResources">The key/value lookup for the patterned resourcePath</param>
    /// <returns>A list of path segments where all keys in the resourcePath have been resolved to one or more path segment values</returns>
    class function SplitResourcePathIntoSegments(const AResourcePath: string;
      APathResources: TDictionary<string, string>): TArray<string>;

    /// <summary>
    /// Joins all path segments with the / character and encodes each segment before joining.
    /// </summary>
    /// <param name="APathSegments">The segments of a URL path split at each / character</param>
    /// <param name="APath">If the path property is specified,
    /// the accepted path characters {/+:} are not encoded.</param>
    /// <returns>A joined URL with encoded segments</returns>
    class function JoinResourcePathSegments(APathSegments: TArray<string>; APath: Boolean): string;

    /// <summary>
    /// Attempt to infer the service name for a request (in short form, eg 'iam') from the
    /// service endpoint.
    /// </summary>
    /// <param name="AUrl">Endpoint to the service to be called</param>
    /// <returns>
    /// Short-form name of the service parsed from the endpoint; empty string if it cannot
    /// be determined
    /// </returns>
    class function DetermineService(AUrl: string): string; static;

    /// <summary>
    /// Attempt to infer the region for a service request based on the endpoint
    /// </summary>
    /// <param name="AUrl">Endpoint to the service to be called</param>
    /// <returns>
    /// Region parsed from the endpoint; DefaultRegion (or DefaultGovRegion)
    /// if it cannot be determined/is not explicit
    /// </returns>
    class function DetermineRegion(AUrl: string): string; static;

    /// <summary>
    /// URL encodes a string per RFC3986. If the path property is specified,
    /// the accepted path characters {/+:} are not encoded.
    /// </summary>
    /// <param name="AData">The string to encode</param>
    /// <param name="APath">Whether the string is a URL path or not</param>
    /// <returns>The encoded string</returns>
    class function UrlEncode(const AData: string; APath: Boolean): string; overload; static;

    /// <summary>
    /// URL encodes a string per the specified RFC. If the path property is specified,
    /// the accepted path characters {/+:} are not encoded.
    /// </summary>
    /// <param name="RfcNumber">RFC number determing safe characters</param>
    /// <param name="Data">The string to encode</param>
    /// <param name="Path">Whether the string is a URL path or not</param>
    /// <returns>The encoded string</returns>
    /// <remarks>
    /// Currently recognised RFC versions are 1738 (Dec '94) and 3986 (Jan '05).
    /// If the specified RFC is not recognised, 3986 is used by default.
    /// </remarks>
    class function UrlEncode(RfcNumber: integer; const Data: string; Path: Boolean): string; overload; static;

    /// <summary>
    /// Helper function to format a byte array into string
    /// </summary>
    /// <param name="AData">The data blob to process</param>
    /// <param name="ALowercase">If true, returns hex digits in lower case form</param>
    /// <returns>String version of the data</returns>
    class function ToHex(const AData: TArray<Byte>; ALowerCase: Boolean): string; static;

    /// <summary>
    /// Returns the canonicalized resource path for the service endpoint
    /// </summary>
    /// <param name="AEndpoint">Endpoint URL for the request</param>
    /// <param name="AResourcePath">Resource path for the request</param>
    /// <param name="ADetectPreEncode">If true pre URL encode path segments if necessary.
    /// S3 is currently the only service that does not expect pre URL encoded segments.</param>
    /// <param name="APathResources">Dictionary of key/value parameters containing the values for the ResourcePath key replacements</param>
    /// <param name="AMarshallerVersion">The version of the marshaller that constructed the request object.</param>
    /// <remarks>
    /// If AResourcePath begins or ends with slash, the resulting canonicalized
    /// path will follow suit.
    /// </remarks>
    /// <returns>Canonicalized resource path for the endpoint</returns>
    class function CanonicalizeResourcePath(AEndpoint: IUri; AResourcePath: string;
      ADetectPreEncode: Boolean; APathResources: TDictionary<string, string>;
      AMarshallerVersion: Integer): string; overload; static;

    class function CanonicalizeResourcePath(AEndpoint: IUri; const AResourcePath: string): string; overload; static;

    /// <summary>
    /// Utility method that accepts a string and replaces white spaces with a space.
    /// </summary>
    /// <param name="data"></param>
    /// <returns></returns>
    class function CompressSpaces(const AData: string): string; static;

    class function UrlEncodeSlash(const Value: string): string; static;

    /// <summary>
    /// Executes an HTTP request and returns the response as a string.
    /// </summary>
    /// <param name="AUri">The URI to make the request to</param>
    /// <param name="ARequestType">The request type: GET, PUT, POST</param>
    /// <param name="AContent">null or the content to send with the request</param>
    /// <param name="ATimeout">Timeout for the request in milliseconds</param>
    /// <param name="AHeaders">null or any headers to send with the request</param>
    /// <returns>The response as a string.</returns>
    class function ExecuteHttpRequest(const AUri, ARequestType, AContent: string;
      ATimeoutMS: Integer; AHeaders: THttpHeaders): string; static;

    /// <summary>
    /// Formats the current date as ISO 8601 timestamp
    /// </summary>
    /// <returns>An ISO 8601 formatted string representation
    /// of the current date and time
    /// </returns>
    class function FormattedCurrentTimestampRFC822: string;

    /// <summary>
    /// Gets the RFC822 formatted timestamp that is minutesFromNow
    /// in the future.
    /// </summary>
    /// <param name="minutesFromNow">The number of minutes from the current instant
    /// for which the timestamp is needed.</param>
    /// <returns>The ISO8601 formatted future timestamp.</returns>
    class function GetFormattedTimestampRFC822(MinutesFromNow: Integer): string;

    /// <summary>
    /// Returns DateTime.UtcNow + ManualClockCorrection when
    /// <seealso cref="TAWSConfigs.ManualClockCorrection"/> is set.
    /// This value should be used instead of DateTime.UtcNow to factor in manual clock correction
    /// </summary>
    class function CorrectedUtcNow: TDateTime;

    /// <summary>
    /// Generates an MD5 Digest for the string-based content
    /// </summary>
    /// <param name="content">The content for which the MD5 Digest needs
    /// to be computed.
    /// </param>
    /// <param name="fBase64Encode">Whether the returned checksum should be
    /// base64 encoded.
    /// </param>
    /// <returns>A string representation of the hash with or w/o base64 encoding
    /// </returns>
    class function GenerateChecksumForContent(const Content: string; Base64Encode: Boolean): string; static;

    /// <summary>
    /// Generates an MD5 Digest for the stream specified
    /// </summary>
    /// <param name="Input">The Stream for which the MD5 Digest needs
    /// to be computed.</param>
    /// <returns>A string representation of the hash with base64 encoding
    /// </returns>
    class function GenerateMD5ChecksumForStream(Input: TStream): string; static;

    /// <summary>
    /// Convert a hex string to bytes
    /// </summary>
    /// <param name="Hex">Hexadecimal string</param>
    /// <returns>Byte array corresponding to the hex string.</returns>
    class function HexStringToBytes(const Hex: string): TArray<Byte>; static;

    /// <summary>
    /// Convert bytes to a hex string
    /// </summary>
    /// <param name="Value">Bytes to convert.</param>
    /// <returns>Hexadecimal string representing the byte array.</returns>
    class function BytesToHexString(const Value: TArray<Byte>): string; static;
  end;

  THeaderKeys = class
    public const IfModifiedSinceHeader = 'If-Modified-Since';
    public const IfMatchHeader = 'If-Match';
    public const IfNoneMatchHeader = 'If-None-Match';
    public const IfUnmodifiedSinceHeader = 'If-Unmodified-Since';
    public const ConfirmSelfBucketAccess = 'x-amz-confirm-remove-self-bucket-access';
    public const ContentRangeHeader = 'Content-Range';
    public const ContentTypeHeader = 'Content-Type';
    public const ContentLengthHeader = 'Content-Length';
    public const ContentMD5Header = 'Content-MD5';
    public const ContentEncodingHeader = 'Content-Encoding';
    public const ContentDispositionHeader = 'Content-Disposition';
    public const ETagHeader = 'ETag';
    public const Expires = 'Expires';
    public const AuthorizationHeader = 'Authorization';
    public const HostHeader = 'host';
    public const UserAgentHeader = 'User-Agent';
    public const LocationHeader = 'location';
    public const DateHeader = 'Date';
    public const RangeHeader = 'Range';
    public const ExpectHeader = 'Expect';
    public const AcceptHeader = 'Accept';
    public const ConnectionHeader = 'Connection';
    public const StatusHeader = 'Status';
    public const XHttpMethodOverrideHeader = 'X-HTTP-Method-Override';
    public const TransferEncodingHeader = 'transfer-encoding';

    public const RequestIdHeader = 'x-amzn-RequestId';
    public const XAmzId2Header = 'x-amz-id-2';
    public const XAmzCloudFrontIdHeader = 'X-Amz-Cf-Id';
    public const XAmzRequestIdHeader = 'x-amz-request-id';
    public const XAmzDateHeader = 'X-Amz-Date';
    public const XAmzErrorType = 'x-amzn-ErrorType';
    public const XAmznErrorMessage = 'x-amzn-error-message';
    public const XAmzSignedHeadersHeader = 'X-Amz-SignedHeaders';
    public const XAmzContentSha256Header = 'X-Amz-Content-SHA256';
    public const XAmzDecodedContentLengthHeader = 'X-Amz-Decoded-Content-Length';
    public const XAmzSecurityTokenHeader = 'x-amz-security-token';
    public const XAmzAuthorizationHeader = 'X-Amzn-Authorization';
    public const XAmzNonceHeader = 'x-amz-nonce';
    public const XAmzServerSideEncryptionHeader = 'x-amz-server-side-encryption';
    public const XAmzServerSideEncryptionAwsKmsKeyIdHeader = 'x-amz-server-side-encryption-aws-kms-key-id';
    public const XAmzBucketRegion = 'x-amz-bucket-region';
    public const XAmzAccountId = 'x-amz-account-id';
    public const XAmzOutpostId = 'x-amz-outpost-id';
    public const XAmzApiVersion = 'x-amz-api-version';

    public const XAmzSSECustomerAlgorithmHeader = 'x-amz-server-side-encryption-customer-algorithm';
    public const XAmzSSECustomerKeyHeader = 'x-amz-server-side-encryption-customer-key';
    public const XAmzSSECustomerKeyMD5Header = 'x-amz-server-side-encryption-customer-key-MD5';

    public const XAmzCopySourceSSECustomerAlgorithmHeader = 'x-amz-copy-source-server-side-encryption-customer-algorithm';
    public const XAmzCopySourceSSECustomerKeyHeader = 'x-amz-copy-source-server-side-encryption-customer-key';
    public const XAmzCopySourceSSECustomerKeyMD5Header = 'x-amz-copy-source-server-side-encryption-customer-key-MD5';

    public const XAmzStorageClassHeader = 'x-amz-storage-class';
    public const XAmzWebsiteRedirectLocationHeader = 'x-amz-website-redirect-location';
    public const XAmzContentLengthHeader = 'x-amz-content-length';
    public const XAmzAclHeader = 'x-amz-acl';
    public const XAmzCopySourceHeader = 'x-amz-copy-source';
    public const XAmzCopySourceRangeHeader = 'x-amz-copy-source-range';
    public const XAmzCopySourceIfMatchHeader = 'x-amz-copy-source-if-match';
    public const XAmzCopySourceIfModifiedSinceHeader = 'x-amz-copy-source-if-modified-since';
    public const XAmzCopySourceIfNoneMatchHeader = 'x-amz-copy-source-if-none-match';
    public const XAmzCopySourceIfUnmodifiedSinceHeader = 'x-amz-copy-source-if-unmodified-since';
    public const XAmzMetadataDirectiveHeader = 'x-amz-metadata-directive';
    public const XAmzMfaHeader = 'x-amz-mfa';
    public const XAmzVersionIdHeader = 'x-amz-version-id';
    public const XAmzUserAgentHeader = 'x-amz-user-agent';
    public const XAmzAbortDateHeader = 'x-amz-abort-date';
    public const XAmzAbortRuleIdHeader = 'x-amz-abort-rule-id';
    public const XAmznTraceIdHeader = 'x-amzn-trace-id';

    public const XAwsEc2MetadataTokenTtlSeconds = 'x-aws-ec2-metadata-token-ttl-seconds';
    public const XAwsEc2MetadataToken = 'x-aws-ec2-metadata-token';

    public const AmzSdkInvocationId = 'amz-sdk-invocation-id';
    public const AmzSdkRequest = 'amz-sdk-request';
  end;

  EWebException = class(Exception)
  strict private
    FStatusCode: Integer;
    FUrl: string;
  public
    constructor Create(const AUrl: string; AStatusCode: Integer);
    property Url: string read FUrl;
    property StatusCode: Integer read FStatusCode;
  end;

implementation

uses
  AWS.Configs,
  AWS.Internal.RegionFinder,
  AWS.Internal.SDKUtils;

{ TProfileIniFile }

constructor TProfileIniFile.Create(const AFileName: string; AProfileMarkerRequired: Boolean);
begin
  inherited Create(AFileName);
  FProfileMarkerRequired := AProfileMarkerRequired;
end;

function TProfileIniFile.IsProfileSection(const SectionName: string; var ProfileName: string): Boolean;
begin
  ProfileName := SectionName;
  if not StartsStr(ProfileMarker, ProfileName) then
    Exit(False);

  Delete(ProfileName, 1, ProfileMarkerLength);
  if (ProfileName = '') or ((ProfileName[1] <> ' ') and (ProfileName[1] <> #9)) then
    Exit(False);

  ProfileName := TrimLeft(ProfileName);
  Result := True;
end;

procedure TProfileIniFile.ReadSections(Strings: TStrings);
var
  I: Integer;
  ProfileName: string;
begin
  inherited ReadSections(Strings);
  if not FProfileMarkerRequired then Exit;

  I := 0;
  while I < Strings.Count do
  begin
    if IsProfileSection(Strings[I], ProfileName) then
    begin
      Strings[I] := ProfileName;
      Inc(I);
    end
    else
      Strings.Delete(I);
  end;
end;

function TProfileIniFile.TryGetSection(const Section: string; Strings: TStrings): Boolean;
var
  SectionNames: TStrings;
  SectionName, ProfileName: string;
begin
  Result := False;
  if not FProfileMarkerRequired then
  begin
    Result := SectionExists(Section);
    if Result then
      ReadSectionValues(Section, Strings);
  end;

  if not Result then
  begin
    SectionNames := TStringList.Create;
    try
      inherited ReadSections(SectionNames);
      for SectionName in SectionNames do
        if IsProfileSection(SectionName, ProfileName) then
          if SameText(ProfileName, Section) then
          begin
            ReadSectionValues(SectionName, Strings);
            Exit(True);
          end;
    finally
      SectionNames.Free;
    end;
  end;

end;

{ TAWSSDKUtils }

class function TAWSSDKUtils.CanonicalizeResourcePath(AEndpoint: IUri; AResourcePath: string;
  ADetectPreEncode: Boolean; APathResources: TDictionary<string, string>; AMarshallerVersion: Integer): string;
var
  Path: string;
  EncodedSegments: TArray<string>;
  SegmentIndex: Integer;
//  PathWasPreEncoded: Boolean;
begin
  if AEndpoint <> nil then
  begin
    Path := AEndpoint.AbsolutePath;
    if Path = '/' then
      Path := '';
    if (Length(AResourcePath) > 0) and (AResourcePath[1] = Slash) then
      Delete(AResourcePath, 1, 1);
    if AResourcePath <> '' then
      Path := Path + Slash + AResourcePath;
    AResourcePath := Path;
  end;

  if AResourcePath = '' then
    Exit(Slash);

  EncodedSegments := TAWSSDKUtils.SplitResourcePathIntoSegments(AResourcePath, APathResources);
//  PathWasPreEncoded := False;
  if ADetectPreEncode then
  begin
    if AEndpoint = nil then
      raise EArgumentNilException.Create('A non-null endpoint is necessary to decide whether or not to pre URL encode.');

    {TODO: Check S3 special case}
    for SegmentIndex := 0 to Length(EncodedSegments) - 1 do
      EncodedSegments[SegmentIndex] := StringReplace(
        UrlEncode(EncodedSegments[SegmentIndex], True),
        Slash, EncodedSlash, [rfReplaceAll]);
//    PathWasPreEncoded := True;
  end;

  Result := TAWSSDKUtils.JoinResourcePathSegments(EncodedSegments, False);

  {TODO: Logger Debug}

end;

class function TAWSSDKUtils.BytesToHexString(const Value: TArray<Byte>): string;
begin
  Result := ToHex(Value, False);
end;

class function TAWSSDKUtils.CanonicalizeResourcePath(AEndpoint: IUri; const AResourcePath: string): string;
begin
  Result := CanonicalizeResourcePath(AEndpoint, AResourcePath, False, nil, DefaultMarshallerVersion);
end;

class function TAWSSDKUtils.CompressSpaces(const AData: string): string;
var
  Start, Index: Integer;
  Len: Integer;
begin
  Result := '';
  if AData = '' then
    Exit;
  Len := Length(AData);

  Start := 1;
  Index := 1;
  while Index <= Len do
  begin
    if AData[Index] = ' ' then
    begin
      Result := Result + Copy(AData, Start, Index - Start + 1);

      // Skip further whitespaces
      repeat
        Inc(Index);
      until (Index > Len) or (AData[Index] <> ' ');
      Start := Index;
    end
    else
      Inc(Index);
  end;
  Result := Result + Copy(AData, Start, Index - Start + 1);
end;

class procedure TAWSSDKUtils.CopyStream(Source, Dest: TStream; const BufferSize: Integer);
var
  Buffer: TArray<Byte>;
  BytesRead: Integer;
begin
  SetLength(Buffer, BufferSize);
  repeat
    BytesRead := Source.Read(Buffer[0], BufferSize);
    if BytesRead = 0 then Exit;
    Dest.Write(Buffer[0], BytesRead);
  until False;
end;

class procedure TAWSSDKUtils.CopyStream(Source, Dest: TStream);
begin
  CopyStream(Source, Dest, DefaultBufferSize);
end;

class function TAWSSDKUtils.CorrectedUtcNow: TDateTime;
begin
  var localNow := TAWSConfigs.UtcNowSource();
  if TAWSConfigs.ManualClockCorrection.HasValue then
    localNow := localNow + TAWSConfigs.ManualClockCorrection.Value;
  Result := localNow;
end;

class constructor TAWSSDKUtils.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('');
  FRFC822FormatSettings := TFormatSettings.Invariant;
  FRFC822FormatSettings.ShortDateFormat := 'dd mmm yyyy';
  FRFCEncodingSchemes := TDictionary<Integer, string>.Create;
  FRFCEncodingSchemes.Add(3986, ValidUrlCharacters);
  FRFCEncodingSchemes.Add(1738, ValidUrlCharactersRFC1738);
  FValidPathCharacters := DetermineValidPathCharacters;
end;

type
  TPacket = packed record
    a: array[0..3] of Byte;
  end;

class function TAWSSDKUtils.DecodeBase64(const Input: string): TArray<Byte>;
begin
  Result := AWS.Lib.Utils.DecodeBase64(Input);
end;

class destructor TAWSSDKUtils.Destroy;
begin
  FRFCEncodingSchemes.Free;
end;

class function TAWSSDKUtils.DetermineRegion(AUrl: string): string;
var
  RegionEndpoint: IRegionEndpoint;
begin
  RegionEndpoint := TRegionFinder.Instance.FindRegion(AUrl);
  if RegionEndpoint <> nil then
    Result := RegionEndpoint.RegionName
  else
    Result := '';
end;

class function TAWSSDKUtils.DetermineService(AUrl: string): string;
var
  DelimIndex: Integer;
  UrlParts: TArray<string>;
  ServicePart: string;
  Hyphenated: Integer;
  Service: string;
begin
  DelimIndex := Pos('//', AUrl);
  if DelimIndex > 0 then
    AUrl := Copy(AUrl, DelimIndex + 2);

  UrlParts := TArray<string>(SplitString(AUrl, '.'));
  if Length(UrlParts) = 0 then
    Exit('');

  ServicePart := UrlParts[0];
  Hyphenated := Pos('-', ServicePart);
  if Hyphenated > 0 then
    Service := Copy(ServicePart, 1, Hyphenated - 1)
  else
    Service := ServicePart;

  // Check for SQS : return "sqs" incase service is determined to be "queue" as per the URL.
  if SameText(Service, 'queue') then
    Result := 'sqs'
  else
    Result := 'service';
end;

class function TAWSSDKUtils.DetermineValidPathCharacters: string;
const
  BasePathCharacters = '/:''()!*[]$';
begin
  Result := BasePathCharacters;
//  Result := '';
//  for var C in BasePathCharacters do
//  begin
//    var escaped := Uri.EscapeUriString(C);
//    if (escaped.Length = 1) and (escaped[1] = C) then
//      Result := Result + C;
//  end;
end;

class function TAWSSDKUtils.EncodeBase64(const Input: TArray<Byte>): string;
begin
  Result := AWS.Lib.Utils.EncodeBase64(Input);
end;

class function TAWSSDKUtils.ExecuteHttpRequest(const AUri, ARequestType, AContent: string; ATimeoutMS: Integer;
  AHeaders: THttpHeaders): string;
{$IFDEF USE_SPARKLE}
var
  Client: THttpClient;
  Request: THttpRequest;
  Response: THttpResponse;
  HeaderInfo: THttpHeaderInfo;
begin
  Client := THttpClient.Create;
  try
{$IFDEF MSWINDOWS}
    TWinHttpEngine(Client.Engine).ProxyMode := THttpProxyMode.Auto;
{$ENDIF}
    // Create the request
    Request := Client.CreateRequest;
    try
      Request.Uri := AUri;
      if ATimeoutMS > 0 then
        Request.Timeout := ATimeoutMS;
      Request.Headers.AddValue(THeaderKeys.UserAgentHeader, FUserAgent);
      for HeaderInfo in AHeaders.AllHeaders do
        Request.Headers.AddValue(HeaderInfo.Name, HeaderInfo.Value);

      // Build the request
      Request.Method := ARequestType;
      if AContent <> '' then
        Request.SetContent(TEncoding.UTF8.GetBytes(AContent));

      // Get response
      Response := Client.Send(Request);
      try
        if Response.StatusCode >= 400 then
          raise EWebException.Create(Request.Uri, Response.StatusCode);
        Result := TEncoding.UTF8.GetString(Response.ContentAsBytes);
      finally
        Response.Free;
      end;
    finally
      Request.Free;
    end;
  finally
    Client.Free;
  end;
end;
{$ELSE}
var
  Client: THttpClient;
  Request: IHttpRequest;
  Response: IHttpResponse;
  HeaderInfo: THttpHeaderInfo;
begin
  Client := THttpClient.Create;
  try
    // Create the request
    Request := Client.GetRequest(ARequestType, AUri);
    if ATimeoutMS > 0 then
    begin
      Client.ConnectionTimeout := ATimeoutMS;
      Client.ResponseTimeout := ATimeoutMS;
{$IFDEF DELPHISYDNEY_LVL}
      Client.SendTimeout := ATimeoutMS;
{$ENDIF}
    end;
    Request.SetHeaderValue(THeaderKeys.UserAgentHeader, FUserAgent);
    for HeaderInfo in AHeaders.AllHeaders do
      Request.SetHeaderValue(HeaderInfo.Name, HeaderInfo.Value);

    // Build the request
    if AContent <> '' then
      Request.SourceStream := TBytesStream.Create(TEncoding.UTF8.GetBytes(AContent));
    // Get response
    try
      Response := Client.Execute(Request);
      if Response.StatusCode >= 400 then
        raise EWebException.Create(AUri, Response.StatusCode);
      Result := TEncoding.UTF8.GetString(StreamToBytes(Response.ContentStream));
    finally
{$IFNDEF AUTOREFCOUNT}
      Request.SourceStream.Free;
{$ENDIF}
    end;
  finally
    Client.Free;
  end;
end;
{$ENDIF}

class function TAWSSDKUtils.FormattedCurrentTimestampRFC822: string;
begin
  Result := GetFormattedTimestampRFC822(0);
end;

class function TAWSSDKUtils.GenerateChecksumForContent(const Content: string; Base64Encode: Boolean): string;
begin
  // Convert the input string to a byte array and compute the hash.
  var hashed := TCryptoUtilFactory.CryptoInstance.ComputeMD5Hash(TEncoding.UTF8.GetBytes(Content));

 if Base64Encode then
   // Convert the hash to a Base64 Encoded string and return it
   Result := TAWSSDKUtils.EncodeBase64(hashed)
 else
   Result := TCryptoUtilFactory.CryptoInstance.HashAsString(hashed, True);
end;

class function TAWSSDKUtils.GenerateMD5ChecksumForStream(Input: TStream): string;
begin
//  string hash = null;

  if not CanSeek(Input) then
    raise EInvalidOpException.Create('Input stream must be seekable');

  // Use an MD5 instance to compute the hash for the stream
  var hashed := TCryptoUtilFactory.CryptoInstance.ComputeMD5Hash(Input);

  // Convert the hash to a Base64 Encoded string and return it
  Result := TAWSSDKUtils.EncodeBase64(hashed);

  // Now that the hash has been generated, reset the stream to its origin so that the stream's data can be processed
  Input.Position := 0;
end;

class function TAWSSDKUtils.GetExtension(const Path: string): string;
begin
  if Path = '' then Exit('');
  var length := Path.Length;
  var index := length - 1;

  while index >= 0 do
  begin
    var ch := path.Chars[index];
    if ch = '.' then
    begin
      if index <> length - 1 then
        Exit(path.Substring(index, length - index))
      else
        Exit('');
    end
    else
    if (ch = '\') or (ch = '/') or (ch = ':') then
      Break;
    Dec(index);
  end;
  Result := '';
end;

class function TAWSSDKUtils.GetFormattedTimestampRFC822(MinutesFromNow: Integer): string;
begin
  var dateTime := IncMinute(TAWSSDKUtils.CorrectedUtcNow, minutesFromNow);
  Result := FormatDateTime(TAWSSDKUtils.RFC822DateFormat, dateTime);
end;

class function TAWSSDKUtils.GetParametersAsString(AParameterCollection: TParameterCollection): string;
var
  SortedParameters: TParameterPairArray;
  Kvp: TParameterPair;
  Data: string;
begin
  Data := '';
  SortedParameters := AParameterCollection.GetSortedParametersList;
  for Kvp in SortedParameters do
    if Kvp.Value <> '' then
      Data := Data + Kvp.Key + '=' + AWS.Lib.Utils.PercentEncode(Kvp.Value) + '&';
  if Data <> '' then
    Delete(Data, Length(Data), 1);
  Result := Data;
end;

class function TAWSSDKUtils.HexStringToBytes(const Hex: string): TArray<Byte>;
begin
  if string.IsNullOrEmpty(Hex) or ((Hex.Length mod 2) = 1) then
    raise EArgumentOutOfRangeException.Create('hex');

  var count := 0;
  SetLength(Result, Hex.Length div 2);
  var I := 0;
  while i < Hex.Length do
  begin
    var sub := Hex.Substring(I, 2);
    Result[Count] := Byte(StrToInt('$' + sub));
    Inc(count);
    Inc(I, 2);
  end;
end;

class function TAWSSDKUtils.JoinResourcePathSegments(APathSegments: TArray<string>; APath: Boolean): string;
var
  PathSegment: string;
  Segment: string;
begin
  Result := '';
  for PathSegment in APathSegments do
  begin
    Segment := AWS.Lib.Utils.PercentEncode(PathSegment);
    if APath then
      Segment := StringReplace(Segment, '/', '%2F', [rfReplaceAll]);
    Result := Result + Segment + '/';
  end;
  Delete(Result, Length(Result), 1);
end;

class function TAWSSDKUtils.ResolveResourcePath(const AResourcePath: string;
  APathResources: TDictionary<string, string>): string;
begin
  if AResourcePath = '' then
    Result := AResourcePath
  else
    Result := JoinResourcePathSegments(
      SplitResourcePathIntoSegments(AResourcePath, APathResources), True);
end;

class function TAWSSDKUtils.Rfc822ToDateTime(const S: string): TDateTime;
begin
  if not TryRfc822ToDateTime(S, Result) then
    raise EConvertError.CreateFmt('Invalid RFC822 date format: "%s"', [S]);
end;

class function TAWSSDKUtils.SecondsBetween(const ANow, AThen: TDateTime): Int64;
begin
  // Different from regular Delphi version, this one returns negative numbers if ANow is lower then AThen.
  Result := (DateTimeToMilliseconds(ANow) - DateTimeToMilliseconds(AThen)) div (MSecsPerSec);
end;

class procedure TAWSSDKUtils.Sleep(MS: Integer);
begin
  System.SysUtils.Sleep(MS);
end;

class function TAWSSDKUtils.SplitResourcePathIntoSegments(const AResourcePath: string;
  APathResources: TDictionary<string, string>): TArray<string>;
var
  PathSegments: TArray<string>;
  ResolvedSegments: TList<string>;
  Segment: string;
begin
  PathSegments := TArray<string>(SplitString(AResourcePath, '/'));
  if (APathResources = nil) or (APathResources.Count = 0) then
    Exit(PathSegments);

  ResolvedSegments := TList<string>.Create;
  try
    for Segment in PathSegments do
    begin
      if not APathResources.ContainsKey(Segment) then
      begin
        ResolvedSegments.Add(Segment);
        Continue;
      end;

      //Determine if the path is greedy. If greedy the segment will be split at each / into multiple segments.
      if EndsStr('+}', Segment) then
        ResolvedSegments.AddRange(SplitString(APathResources[Segment], '/'))
      else
        ResolvedSegments.Add(APathResources[Segment]);
    end;
    Result := ResolvedSegments.ToArray;
  finally
    ResolvedSegments.Free;
  end;
end;

class function TAWSSDKUtils.StreamToBytes(Source: TStream): TArray<Byte>;
var
  BytesStream: TBytesStream;
begin
  BytesStream := TBytesStream.Create;
  try
    CopyStream(Source, BytesStream);
    Result := Copy(BytesStream.Bytes, 0, BytesStream.Size);
  finally
    BytesStream.Free;
  end;
end;

class function TAWSSDKUtils.StreamToString(Source: TStream; Encoding: TEncoding): string;
begin
  if Encoding = nil then
    Encoding := TEncoding.UTF8;
  var Reader := TStreamReader.Create(Source, Encoding, False);
  try
    Result := Reader.ReadToEnd;
  finally
    Reader.Free;
  end;
end;

type
  TB2HArray = array[0..15] of Byte;

class function TAWSSDKUtils.ToHex(const AData: TArray<Byte>; ALowerCase: Boolean): string;
const
  B2HConvertUp: TB2HArray = (
    $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $41, $42, $43, $44, $45, $46);
  B2HConvertLow: TB2HArray = (
    $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $61, $62, $63, $64, $65, $66);
var
  B2H: TB2HArray;
  I: Integer;
begin
  if ALowerCase then
    B2H := B2HConvertLow
  else
    B2H := B2HConvertUp;

  SetLength(Result, Length(AData) * 2);
  for I := 0 to Length(AData) - 1 do
  begin
    Result[I * 2 + 1] := Chr(B2H[AData[I] shr 4]);
    Result[I * 2 + 2] := Chr(B2H[AData[I] and $0F]);
  end;
end;

class function TAWSSDKUtils.TryRfc822ToDateTime(const S: string; var D: TDateTime): Boolean;
begin
  var Len := Length(S);
  if Len <> 29 then Exit(False);
  if S[4] <> ',' then Exit(False);
  if not S.EndsWith(' GMT') then Exit(False);
  Result := TryStrToDateTime(Copy(S, 5, 20), D, FRFC822FormatSettings);
  if Result then
    D := TTimeZone.Local.ToLocalTime(D);
end;

class function TAWSSDKUtils.UrlEncode(const AData: string; APath: Boolean): string;
begin
  Result := UrlEncode(3986, AData, APath);
end;

class function TAWSSDKUtils.UrlEncode(RfcNumber: integer; const Data: string; Path: Boolean): string;
begin
  Result := '';
  var validChars: string;
  if not FRFCEncodingSchemes.TryGetValue(RfcNumber, validChars) then
    validChars := ValidUrlCharacters;

  var unreservedChars := validChars;
  if Path then
    unreservedChars := unreservedChars + FValidPathCharacters;

  for var symbol in TEncoding.UTF8.GetBytes(Data) do
  begin
    if unreservedChars.IndexOf(Chr(symbol)) <> -1 then
      Result := Result + Chr(symbol)
    else
      Result := Result + '%' + IntToHex(Symbol, 2);
  end;
end;

class function TAWSSDKUtils.UrlEncodeSlash(const Value: string): string;
begin
  if Value = '' then
    Result := ''
  else
    Result := StringReplace(Value, Slash, EncodedSlash, [rfReplaceAll]);
end;

{ EWebException }

constructor EWebException.Create(const AUrl: string; AStatusCode: Integer);
begin
  FUrl := AUrl;
  FStatusCode := AStatusCode;
  inherited CreateFmt('Request error for "%s", status code: %d', [AUrl, AStatusCode]);
end;

end.
