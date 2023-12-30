unit AWSTests.Polly;

interface

uses
  System.SysUtils, System.Net.HttpClient, System.JSON, System.StrUtils,
  TestFramework,
  AWSTests.TestBase,
  AWS.Polly,
  AWS.RegionEndpoints,
  AWS.SDKUtils;

type
  TPollyTests = class(TAWSTestBase)
  private
    function GetMp3Request: ISynthesizeSpeechRequest;
    function GetSpeechMarkRequest: ISynthesizeSpeechRequest;
    procedure AssertSpeechMarks(data: TJSONObject);
    function AssertPresignedUrl(const AUrl: string): TArray<Byte>;
    function ParseJsonStream(const Json: string): TJSONObject;
    {TODO: Presigned with session token}
//    procedure PresignedUrlWithSessionToken;
  published
    procedure HappyCaseAPI;
    procedure APIWithSpeechMarks;
    procedure HappyCasePresignedUrl;
    procedure PresignedUrlWithSpeechMarks;
    procedure EnsureIsUrlEncoded;
  end;

implementation

uses
  AWS.Polly.SynthesizeSpeechUtil,
  AWS.Runtime.HttpRequestMessageFactory;

{ TPollyTests }

procedure TPollyTests.APIWithSpeechMarks;
var
  Client: IAmazonPolly;
  Response: ISynthesizeSpeechResponse;
  Data: TJSONObject;
begin
  Client := TAmazonPollyClient.Create(TRegionEndpoints.USWest2);
  Response := Client.SynthesizeSpeech(GetSpeechMarkRequest);
  CheckEquals(200, Response.HttpStatusCode);
  Data := ParseJsonStream(TEncoding.UTF8.GetString(TAWSSDKUtils.StreamToBytes(Response.AudioStream)));
  try
    AssertSpeechMarks(Data);
  finally
    Data.Free;
  end;
end;

function TPollyTests.AssertPresignedUrl(const AUrl: string): TArray<Byte>;
var
  WebClient: THttpClient;
  Resp: IHttpResponse;
begin
  // download using the PreSigned URL in a totally independent WebClient
  WebClient := THttpClient.Create;
  try
    Resp := WebClient.Execute(WebClient.GetRequest('Get', AUrl));
    SetLength(Result, Resp.ContentStream.Size);
    Resp.ContentStream.Read(Result[0], Length(Result));
    CheckEquals(200, Resp.StatusCode);
  finally
    WebClient.Free;
  end;

  // make sure there are no exceptions, and that there's something there
  Check(Length(Result) > 0, 'Empty response');
end;

procedure TPollyTests.AssertSpeechMarks(data: TJSONObject);
begin
  Check(data.GetValue('time') <> nil, 'time');
  Check(data.GetValue('type') <> nil, 'type');
  Check(data.GetValue('start') <> nil, 'start');
  Check(data.GetValue('end') <> nil, 'end');
  Check(data.GetValue('value') <> nil, 'value');
end;

procedure TPollyTests.EnsureIsUrlEncoded;
var
  Request: ISynthesizeSpeechRequest;
begin
  Request := GetMp3Request;
  Request.Text := 'hello == hello'; // we will get an exception if the == isn't encoded
  AssertPreSignedUrl(TSynthesizeSpeechUtil.GeneratePresignedUrl(TRegionEndpoints.USWest2, Request));
end;

function TPollyTests.GetMp3Request: ISynthesizeSpeechRequest;
begin
  Result := TSynthesizeSpeechRequest.Create;
  Result.VoiceId := TVoiceId.Joanna;
  Result.Text := 'Hello';
  Result.OutputFormat := TOutputFormat.Mp3;
end;

function TPollyTests.GetSpeechMarkRequest: ISynthesizeSpeechRequest;
begin
  Result := TSynthesizeSpeechRequest.Create;
  Result.VoiceId := TVoiceId.Joanna;
  Result.Text := 'Hello';
  Result.OutputFormat := TOutputFormat.Json;
  Result.SpeechMarkTypes.Add('word');
  Result.SpeechMarkTypes.Add('sentence');
end;

procedure TPollyTests.HappyCaseAPI;
var
  Client: IAmazonPolly;
  Response: ISynthesizeSpeechResponse;
  Value: Byte;
begin
  Client := TAmazonPollyClient.Create(TRegionEndpoints.USWest2);
  Response := Client.SynthesizeSpeech(GetMp3Request);
  CheckEquals(200, Response.HttpStatusCode);
  CheckEquals(1, Response.AudioStream.Read(Value, 1));
end;

procedure TPollyTests.HappyCasePresignedUrl;
begin
  AssertPreSignedUrl(TSynthesizeSpeechUtil.GeneratePresignedUrl(
    TRegionEndpoints.USWest2, GetMp3Request));
end;

function TPollyTests.ParseJsonStream(const Json: string): TJSONObject;
var
  Objects: TArray<string>;
begin
  Objects := TArray<string>(SplitString(Json, #10));
  if Length(Objects) > 0 then
    Result := TJSONObject.ParseJSONValue(Objects[0]) as TJSONObject
  else
    Result := nil;
end;

procedure TPollyTests.PresignedUrlWithSpeechMarks;
var
  Data: TArray<Byte>;
  JObj: TJSONObject;
begin
  Data := AssertPreSignedUrl(
    TSynthesizeSpeechUtil.GeneratePresignedUrl(TRegionEndpoints.USWest2,
    GetSpeechMarkRequest));
  JObj := ParseJsonStream(TEncoding.UTF8.GetString(Data));
  try
    AssertSpeechMarks(JObj);
  finally
    JObj.Free;
  end;
end;

initialization
  RegisterTest('AWS.Polly', TPollyTests.Suite);
end.
