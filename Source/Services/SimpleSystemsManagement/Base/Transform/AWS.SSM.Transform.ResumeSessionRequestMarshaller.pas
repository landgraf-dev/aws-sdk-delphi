unit AWS.SSM.Transform.ResumeSessionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ResumeSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IResumeSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TResumeSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TResumeSessionRequest>, IResumeSessionRequestMarshaller)
  strict private
    class var FInstance: IResumeSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TResumeSessionRequest): IRequest; overload;
    class function Instance: IResumeSessionRequestMarshaller; static;
  end;
  
implementation

{ TResumeSessionRequestMarshaller }

function TResumeSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TResumeSessionRequest(AInput));
end;

function TResumeSessionRequestMarshaller.Marshall(PublicRequest: TResumeSessionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ResumeSession');
  Request.Headers.AddOrSetValue('Content-Type', 'application/x-amz-json-1.1');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2014-11-06');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSessionId then
        begin
          Context.Writer.WriteName('SessionId');
          Context.Writer.WriteString(PublicRequest.SessionId);
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

class constructor TResumeSessionRequestMarshaller.Create;
begin
  FInstance := TResumeSessionRequestMarshaller.Create;
end;

class function TResumeSessionRequestMarshaller.Instance: IResumeSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
