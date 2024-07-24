unit AWS.SSM.Transform.TerminateSessionRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.TerminateSessionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  ITerminateSessionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TTerminateSessionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TTerminateSessionRequest>, ITerminateSessionRequestMarshaller)
  strict private
    class var FInstance: ITerminateSessionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TTerminateSessionRequest): IRequest; overload;
    class function Instance: ITerminateSessionRequestMarshaller; static;
  end;
  
implementation

{ TTerminateSessionRequestMarshaller }

function TTerminateSessionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TTerminateSessionRequest(AInput));
end;

function TTerminateSessionRequestMarshaller.Marshall(PublicRequest: TTerminateSessionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.TerminateSession');
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

class constructor TTerminateSessionRequestMarshaller.Create;
begin
  FInstance := TTerminateSessionRequestMarshaller.Create;
end;

class function TTerminateSessionRequestMarshaller.Instance: ITerminateSessionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
