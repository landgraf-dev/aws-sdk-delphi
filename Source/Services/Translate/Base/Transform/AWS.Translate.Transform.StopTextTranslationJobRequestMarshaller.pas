unit AWS.Translate.Transform.StopTextTranslationJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Translate.Model.StopTextTranslationJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IStopTextTranslationJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TStopTextTranslationJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TStopTextTranslationJobRequest>, IStopTextTranslationJobRequestMarshaller)
  strict private
    class var FInstance: IStopTextTranslationJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TStopTextTranslationJobRequest): IRequest; overload;
    class function Instance: IStopTextTranslationJobRequestMarshaller; static;
  end;
  
implementation

{ TStopTextTranslationJobRequestMarshaller }

function TStopTextTranslationJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TStopTextTranslationJobRequest(AInput));
end;

function TStopTextTranslationJobRequestMarshaller.Marshall(PublicRequest: TStopTextTranslationJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.Translate');
  Request.Headers.Add('X-Amz-Target', 'AWSShineFrontendService_20170701.StopTextTranslationJob');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-07-01');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetJobId then
        begin
          Context.Writer.WriteName('JobId');
          Context.Writer.WriteString(PublicRequest.JobId);
        end;
        Writer.WriteEndObject;
        Writer.Flush;
        var Snippet: string := Stream.DataString;
        Request.Content := TEncoding.UTF8.GetBytes(Snippet);
      finally
        Context.Free;
      end;
    finally
      Writer.Free;
    end;
  finally
    Stream.Free;
  end;
  Result := Request;
end;

class constructor TStopTextTranslationJobRequestMarshaller.Create;
begin
  FInstance := TStopTextTranslationJobRequestMarshaller.Create;
end;

class function TStopTextTranslationJobRequestMarshaller.Instance: IStopTextTranslationJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
