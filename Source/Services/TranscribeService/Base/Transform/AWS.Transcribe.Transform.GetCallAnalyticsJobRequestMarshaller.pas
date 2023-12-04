unit AWS.Transcribe.Transform.GetCallAnalyticsJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.GetCallAnalyticsJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetCallAnalyticsJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCallAnalyticsJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCallAnalyticsJobRequest>, IGetCallAnalyticsJobRequestMarshaller)
  strict private
    class var FInstance: IGetCallAnalyticsJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCallAnalyticsJobRequest): IRequest; overload;
    class function Instance: IGetCallAnalyticsJobRequestMarshaller; static;
  end;
  
implementation

{ TGetCallAnalyticsJobRequestMarshaller }

function TGetCallAnalyticsJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCallAnalyticsJobRequest(AInput));
end;

function TGetCallAnalyticsJobRequestMarshaller.Marshall(PublicRequest: TGetCallAnalyticsJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.GetCallAnalyticsJob');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2017-10-26');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetCallAnalyticsJobName then
        begin
          Context.Writer.WriteName('CallAnalyticsJobName');
          Context.Writer.WriteString(PublicRequest.CallAnalyticsJobName);
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

class constructor TGetCallAnalyticsJobRequestMarshaller.Create;
begin
  FInstance := TGetCallAnalyticsJobRequestMarshaller.Create;
end;

class function TGetCallAnalyticsJobRequestMarshaller.Instance: IGetCallAnalyticsJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
