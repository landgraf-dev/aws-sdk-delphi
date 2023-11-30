unit AWS.Auth.S3Signer;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Generics.Defaults,
  AWS.Auth.Signer,
  AWS.Enums,
  AWS.Internal.Request,
  AWS.Runtime.ClientConfig,
  AWS.SDKUtils,
  AWS.Util.Crypto;

type
  TRegionDetectionUpdater = reference to procedure(Request: IRequest);

  TS3Signer = class(TAbstractAWSSigner)
  strict private
    class var SubResourcesSigningExclusion: THashSet<string>;
    class var SignableParameters: THashSet<string>;
  strict private
    FUseSigV4: Boolean;
    FRegionDetector: TRegionDetectionUpdater;
    class function BuildStringToSign(ARequest: IRequest): string;
    class function BuildCanonicalizedHeaders(AHeaders: TDictionary<string, string>): string;
    class function BuildCanonicalizedResource(ARequest: IRequest): string;

    class constructor Create;
    class destructor Destroy;
  public
    class procedure SignRequest(ARequest: IRequest; const AAwsAccessKeyId: string; const AAwsSecretAccessKey: string);
  public
    constructor Create; overload;
    constructor Create(AUseSigV4: Boolean; ARegionDetector: TRegionDetectionUpdater); overload;

    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); override;
    function Protocol: TClientProtocol; override;
  end;

implementation

{ TS3Signer }

constructor TS3Signer.Create;
begin
  Create(True, nil);
end;

class function TS3Signer.BuildCanonicalizedHeaders(AHeaders: TDictionary<string, string>): string;
begin
  // Refer "Constructing the CanonicalizedAmzHeaders element" section at https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html.
  var sb := TStringBuilder.Create(256);
  try
    // Steps 1 and Steps 2 requires all headers to be in lowercase and lexicographically sorted by header name.
    var Keys := TList<string>.Create(AHeaders.Keys.ToArray);
    try
      Keys.Sort(TComparer<string>.Construct(
        function(const S1, S2: string): Integer
        begin
          Result := CompareStr(LowerCase(S1), LowerCase(S2));
        end));
      for var key in Keys do
      begin
        var lowerKey := LowerCase(key);
        if not lowerKey.StartsWith('x-amz-', False) then
          Continue;

        // Step 5: Trim any spaces around the colon in the header (based on testing spaces at the end of value also needs to be removed).
        sb.Append(lowerKey + ':' + Trim(AHeaders[key]) + #10);
      end;

      Result := sb.ToString;
    finally
      Keys.Free;
    end;
  finally
    sb.Free;
  end;
end;

class function TS3Signer.BuildCanonicalizedResource(ARequest: IRequest): string;
begin
  // CanonicalResourcePrefix will hold the bucket name if we switched to virtual host addressing
  // during request preprocessing (where it would have been removed from ResourcePath)
  var sb := TStringBuilder.Create(ARequest.CanonicalResourcePrefix);
  if not string.IsNullOrEmpty(ARequest.ResourcePath) then
    sb.Append(TAWSSDKUtils.ResolveResourcePath(ARequest.ResourcePath, ARequest.PathResources))
  else
    sb.Append('/');

  // form up the set of all subresources and specific query parameters that must be
  // included in the canonical resource, then append them ordered by key to the
  // canonicalization
  var resourcesToSign := TDictionary<string, string>.Create(TIStringComparer.Ordinal);
  try
    if ARequest.SubResources.Count > 0 then
    begin
      for var subResource in ARequest.SubResources do
        if not SubResourcesSigningExclusion.Contains(subResource.Key) then
          resourcesToSign.Add(subResource.Key, subResource.Value);
    end;

    if ARequest.Parameters.Count > 0 then
    begin
      var parameters := ARequest.ParameterCollection.GetSortedParametersList();
      for var parameter in parameters do
        if (parameter.Value <> '') and SignableParameters.Contains(parameter.Key) then
          resourcesToSign.Add(parameter.Key, parameter.Value);
    end;

    var delim := '?';
    var resources := TList<TPair<string, string>>.Create;
    try
      for var kvp in resourcesToSign do
        resources.Add(kvp);

      resources.Sort(TComparer<TPair<string,string>>.Construct(
        function(const S1, S2: TPair<string, string>): Integer
        begin
          Result := CompareStr(S1.Key, S2.Key);
        end));

      for var resourceToSign in resources do
      begin
        sb.AppendFormat('%s%s', [delim, resourceToSign.Key]);
        if resourceToSign.Value <> '' then
          sb.AppendFormat('=%s', [resourceToSign.Value]);
        delim := '&';
      end;
    finally
      resources.Free;
    end;
    Result := sb.ToString;
  finally
    resourcesToSign.Free;
  end;
end;

class function TS3Signer.BuildStringToSign(ARequest: IRequest): string;
begin
  var sb := TStringBuilder.Create('', 256);
  try
    sb.Append(ARequest.HttpMethod);
    sb.Append(#10);

    var headers := ARequest.Headers;
    var parameters := ARequest.Parameters;

    if headers <> nil then
    begin
      var value: string;
      if headers.TryGetValue(THeaderKeys.ContentMD5Header, value) and (value <> '') then
        sb.Append(value);
      sb.Append(#10);

      if parameters.ContainsKey('ContentType') then
        sb.Append(parameters['ContentType'])
      else
      if headers.ContainsKey(THeaderKeys.ContentTypeHeader) then
        sb.Append(headers[THeaderKeys.ContentTypeHeader]);
      sb.Append(#10);
    end
    else
    begin
      // The headers are null, but we still need to append
      // the 2 newlines that are required by S3.
      // Without these, S3 rejects the signature.
      sb.Append(#10#10);
    end;

    if parameters.ContainsKey('Expires') then
    begin
      sb.Append(parameters['Expires']);
      if headers <> nil then
        headers.Remove(THeaderKeys.XAmzDateHeader);
    end;

    var headersAndParameters := TDictionary<string, string>.Create(headers);
    try
      for var key in parameters.Keys do
      begin
        // If there's a key that's both a header and a parameter then the header will take precedence.
        if not headersAndParameters.ContainsKey(key) then
            headersAndParameters.Add(key, parameters[key]);
      end;

      sb.Append(#10);
      sb.Append(BuildCanonicalizedHeaders(headersAndParameters));
    finally
      headersAndParameters.Free;
    end;

    var canonicalizedResource := BuildCanonicalizedResource(ARequest);
    if not string.IsNullOrEmpty(canonicalizedResource) then
    begin
      sb.Append(canonicalizedResource);
    end;

    Result := sb.ToString;
  finally
    sb.Free;
  end;
end;

class constructor TS3Signer.Create;
begin
  SubResourcesSigningExclusion := THashSet<string>.Create(TIStringComparer.Ordinal);
  SubResourcesSigningExclusion.Add('id');

  SignableParameters := THashSet<string>.Create(TIStringComparer.Ordinal);
  SignableParameters.Add('response-content-type');
  SignableParameters.Add('response-content-language');
  SignableParameters.Add('response-expires');
  SignableParameters.Add('response-cache-control');
  SignableParameters.Add('response-content-disposition');
  SignableParameters.Add('response-content-encodin');
end;

constructor TS3Signer.Create(AUseSigV4: Boolean; ARegionDetector: TRegionDetectionUpdater);
begin
  inherited Create;
  FUseSigV4 := AUseSigV4;
  FRegionDetector := ARegionDetector;
end;

class destructor TS3Signer.Destroy;
begin
  SubResourcesSigningExclusion.Free;
  SignableParameters.Free;
end;

function TS3Signer.Protocol: TClientProtocol;
begin
  Result := TClientProtocol.RestProtocol;
end;

procedure TS3Signer.Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string);
begin
//public override void Sign(IRequest request, IClientConfig clientConfig, RequestMetrics metrics,
//  string awsAccessKeyId, string awsSecretAccessKey)
  var signer := SelectSigner(Self, FUseSigV4, ARequest, AClientConfig);
  if signer is TAWS4Signer then
  begin
    var aws4Signer := signer as TAWS4Signer;
    if Assigned(FRegionDetector) then
      FRegionDetector(ARequest);

    var signingResult := aws4Signer.SignRequest(ARequest, AClientConfig, {metrics, }AAwsAccessKeyId, AAwsSecretAccessKey);
    ARequest.Headers.AddOrSetValue(THeaderKeys.AuthorizationHeader, signingResult.ForAuthorizationHeader);
    if ARequest.UseChunkEncoding then
      ARequest.AWS4SignerResult := signingResult;
  end
  else
    SignRequest(ARequest, {metrics, } AAwsAccessKeyId, AAwsSecretAccessKey);
end;

class procedure TS3Signer.SignRequest(ARequest: IRequest; const AAwsAccessKeyId, AAwsSecretAccessKey: string);
begin
  ARequest.Headers.AddOrSetValue(THeaderKeys.XAmzDateHeader, TAWSSDKUtils.FormattedCurrentTimestampRFC822);

  var stringToSign := BuildStringToSign(ARequest);
//  metrics.AddProperty(Metric.StringToSign, stringToSign);
  var auth := TCryptoUtilFactory.CryptoInstance.HMACSign(stringToSign, AAwsSecretAccessKey, TSigningAlgorithm.HmacSHA1);
  var authorization := 'AWS ' + AAwsAccessKeyId + ':' + auth;
  ARequest.Headers.AddOrSetValue(THeaderKeys.AuthorizationHeader, authorization);
end;

end.
