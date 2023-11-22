unit AWS.Polly.SynthesizeSpeechUtil;

interface

uses
  System.SysUtils,
  AWS.RegionEndpoint,
  AWS.Polly.Model.SynthesizeSpeechRequest,
  AWS.Runtime.Credentials;

type
  TSynthesizeSpeechUtil = class
  strict private const
    HTTPS = 'https';
    HTTPGet = 'GET';
    XAmzExpires = 'X-Amz-Expires';
    PollyServiceName = 'polly';
    FifteenMinutes = 15 * 60;
  public
    /// <summary>
    /// Generate a presigned URL based on a <see cref="SynthesizeSpeechRequest"/>
    /// using the default configured credentials.
    /// </summary>
    /// <param name="ARegion">The region for the URL.</param>
    /// <param name="ARequest">The request to base the presigned URL on.</param>
    /// <returns></returns>
    class function GeneratePresignedUrl(ARegion: IRegionEndpointEx;
      ARequest: ISynthesizeSpeechRequest): string; overload; static;

    /// <summary>
    /// Generate a presigned URL based on a <see cref="SynthesizeSpeechRequest"/>.
    /// </summary>
    /// <param name="ACredentials">The credentials to use in the presigned URL.</param>
    /// <param name="ARegion">The region for the URL.</param>
    /// <param name="ARequest">The request to base the presigned URL on.</param>
    /// <returns></returns>
    class function GeneratePresignedUrl(ACredentials: IAWSCredentials; ARegion: IRegionEndpointEx;
      ARequest: ISynthesizeSpeechRequest): string; overload; static;
 end;

implementation

uses
  AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller,
  AWS.Internal.Request,
  AWS.Runtime.Model,
  Sparkle.Uri,
  AWS.Auth.Signer,
  AWS.Internal.Auth.AWS4SigningResult,
  AWS.Runtime.Client;

{ TSynthesizeSpeechUtil }

class function TSynthesizeSpeechUtil.GeneratePresignedUrl(ARegion: IRegionEndpointEx;
  ARequest: ISynthesizeSpeechRequest): string;
begin
  Result := GeneratePresignedUrl(TFallbackCredentialsFactory.GetCredentials, ARegion, ARequest);
end;

class function TSynthesizeSpeechUtil.GeneratePresignedUrl(ACredentials: IAWSCredentials; ARegion: IRegionEndpointEx;
  ARequest: ISynthesizeSpeechRequest): string;
var
  Marshaller: ISynthesizeSpeechRequestMarshaller;
  Request: IRequest;
  ImmutableCredentials: IImmutableCredentials;
  SigningResult: TAWS4SigningResult;
begin
  Marshaller := TSynthesizeSpeechRequestMarshaller.Create;
  Request := Marshaller.Marshall(ARequest as TAmazonWebServiceRequest);
  Request.UseQueryString := True;
  Request.HttpMethod := 'GET';
  Request.Endpoint := TUri.Create(Format('https://%s',
    [ARegion.GetEndpointForService(PollyServiceName, False).HostName]));
  Request.Parameters.Add(XAmzExpires, IntToStr(FifteenMinutes));

  if ARequest.IsSetLexiconNames then
    Request.ParameterCollection.Add('LexiconNames', ARequest.LexiconNames);
  if ARequest.IsSetOutputFormat then
    Request.Parameters.Add('OutputFormat', ARequest.OutputFormat.Value);
  if ARequest.IsSetSampleRate then
    Request.Parameters.Add('SampleRate', ARequest.SampleRate);
  if ARequest.IsSetText then
    Request.Parameters.Add('Text', ARequest.Text);
  if ARequest.IsSetTextType then
    Request.Parameters.Add('TextType', ARequest.TextType.Value);
  if ARequest.IsSetVoiceId then
    Request.Parameters.Add('VoiceId', ARequest.VoiceId.Value);
  if ARequest.IsSetSpeechMarkTypes then
    Request.ParameterCollection.Add('SpeechMarkTypes', ARequest.SpeechMarkTypes);
  if ARequest.IsSetLanguageCode then
    Request.ParameterCollection.Add('LanguageCode', ARequest.LanguageCode.Value);

  ImmutableCredentials := ACredentials.GetCredentials;
  if ImmutableCredentials.UseToken then
    // Don't use HeaderKeys.XAmzSecurityTokenHeader because Polly treats this as case-sensitive
    Request.Parameters.Add('X-Amz-Security-Token', ImmutableCredentials.Token);

  // Only the host header should be signed, and the signer adds that.
  // So clear out headers.
  Request.Headers.Clear;

  // Create presigned URL and assign it
  SigningResult := TAWS4PreSignedUrlSigner.SignRequest(Request, nil,
    ImmutableCredentials.AccessKey, ImmutableCredentials.SecretKey, PollyServiceName, ARegion.SystemName);

  {TODO: Review use of AbsoluteUri, ComposeUrl returnign IUri instead of string}
  Result := TAmazonServiceClient.ComposeUrl(Request) + '&' + SigningResult.ForQueryParameters;
end;

end.
