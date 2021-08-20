unit AWS.Polly.Transform.SynthesizeSpeechResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext;

type
  ISynthesizeSpeechResponseUnmarshaller = IResponseUnmarshaller;
  
  TSynthesizeSpeechResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISynthesizeSpeechResponseUnmarshaller)
  strict private
    class var FInstance: ISynthesizeSpeechResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: ISynthesizeSpeechResponseUnmarshaller; static;
  end;
  
implementation

{ TSynthesizeSpeechResponseUnmarshaller }

function TSynthesizeSpeechResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TSynthesizeSpeechResponse;
begin
  Response := TSynthesizeSpeechResponse.Create;
  try
    Response.AudioStream := AContext.Stream;
    if AContext.ResponseData.IsHeaderPresent('Content-Type') then
      Response.ContentType := AContext.ResponseData.GetHeaderValue('Content-Type');
    if AContext.ResponseData.IsHeaderPresent('x-amzn-RequestCharacters') then
      Response.RequestCharacters := StrToInt(AContext.ResponseData.GetHeaderValue('x-amzn-RequestCharacters'));
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TSynthesizeSpeechResponseUnmarshaller.Create;
begin
  FInstance := TSynthesizeSpeechResponseUnmarshaller.Create;
end;

class function TSynthesizeSpeechResponseUnmarshaller.Instance: ISynthesizeSpeechResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
