unit AWS.Transcribe.Transform.DeleteCallAnalyticsJobRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IDeleteCallAnalyticsJobRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteCallAnalyticsJobRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteCallAnalyticsJobRequest>, IDeleteCallAnalyticsJobRequestMarshaller)
  strict private
    class var FInstance: IDeleteCallAnalyticsJobRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteCallAnalyticsJobRequest): IRequest; overload;
    class function Instance: IDeleteCallAnalyticsJobRequestMarshaller; static;
  end;
  
implementation

{ TDeleteCallAnalyticsJobRequestMarshaller }

function TDeleteCallAnalyticsJobRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteCallAnalyticsJobRequest(AInput));
end;

function TDeleteCallAnalyticsJobRequestMarshaller.Marshall(PublicRequest: TDeleteCallAnalyticsJobRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.TranscribeService');
  Request.Headers.Add('X-Amz-Target', 'Transcribe.DeleteCallAnalyticsJob');
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

class constructor TDeleteCallAnalyticsJobRequestMarshaller.Create;
begin
  FInstance := TDeleteCallAnalyticsJobRequestMarshaller.Create;
end;

class function TDeleteCallAnalyticsJobRequestMarshaller.Instance: IDeleteCallAnalyticsJobRequestMarshaller;
begin
  Result := FInstance;
end;

end.
