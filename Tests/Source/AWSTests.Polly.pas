unit AWSTests.Polly;

interface

uses
  System.SysUtils, System.Net.HttpClient,
  AWSTests.TestBase,
  TestFramework,
  Bcl.Json,
  Bcl.Json.Classes,
  AWS.Polly,
  AWS.RegionEndpoints;

type
  TPollyTests = class(TAWSTestBase)
  private
    function GetMp3Request: ISynthesizeSpeechRequest;
    function GetSpeechMarkRequest: ISynthesizeSpeechRequest;
    procedure AssertSpeechMarks(data: TJObject);
    function AssertPresignedUrl(const AUrl: string): TArray<Byte>;
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
  Data: TJObject;
begin
  Client := TAmazonPollyClient.Create(TRegionEndpoints.USWest2);
  Response := Client.SynthesizeSpeech(GetSpeechMarkRequest);
  CheckEquals(200, Response.HttpStatusCode);
  Data := TJson.Deserialize<TJObject>(Response.AudioStream);
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

procedure TPollyTests.AssertSpeechMarks(data: TJObject);
begin
  Check(data.Contains('time'), 'time');
  Check(data.Contains('type'), 'type');
  Check(data.Contains('start'), 'start');
  Check(data.Contains('end'), 'end');
  Check(data.Contains('value'), 'value');
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

procedure TPollyTests.PresignedUrlWithSpeechMarks;
var
  Data: TArray<Byte>;
  JObj: TJObject;
begin
  Data := AssertPreSignedUrl(
    TSynthesizeSpeechUtil.GeneratePresignedUrl(TRegionEndpoints.USWest2,
    GetSpeechMarkRequest));
  JObj := TJson.Deserialize<TJObject>(TEncoding.UTF8.GetString(Data));
  try
    AssertSpeechMarks(JObj);
  finally
    JObj.Free;
  end;
end;

initialization
  RegisterTest('AWS.Polly', TPollyTests.Suite);
end.
