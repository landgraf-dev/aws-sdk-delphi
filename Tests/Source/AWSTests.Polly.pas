unit AWSTests.Polly;

interface

uses
  AWSTests.TestBase,
  TestFramework,
  AWS.Polly,
  AWS.RegionEndpoints;

type
  TPollyTests = class(TAWSTestBase)
  private
    function GetMp3Request: ISynthesizeSpeechRequest;
  published
    procedure HappyCaseAPI;
  end;

implementation

{ TPollyTests }

function TPollyTests.GetMp3Request: ISynthesizeSpeechRequest;
begin
  Result := TSynthesizeSpeechRequest.Create;
  Result.VoiceId := TVoiceId.Joanna;
  Result.Text := 'Hello';
  Result.OutputFormat := TOutputFormat.Mp3;
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

initialization
  RegisterTest('AWS.Polly', TPollyTests.Suite);
end.
