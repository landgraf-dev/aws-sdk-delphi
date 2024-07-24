unit AWS.SSM.Transform.GetCommandInvocationRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetCommandInvocationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetCommandInvocationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCommandInvocationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCommandInvocationRequest>, IGetCommandInvocationRequestMarshaller)
  strict private
    class var FInstance: IGetCommandInvocationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCommandInvocationRequest): IRequest; overload;
    class function Instance: IGetCommandInvocationRequestMarshaller; static;
  end;
  
implementation

{ TGetCommandInvocationRequestMarshaller }

function TGetCommandInvocationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCommandInvocationRequest(AInput));
end;

function TGetCommandInvocationRequestMarshaller.Marshall(PublicRequest: TGetCommandInvocationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetCommandInvocation');
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
        if PublicRequest.IsSetCommandId then
        begin
          Context.Writer.WriteName('CommandId');
          Context.Writer.WriteString(PublicRequest.CommandId);
        end;
        if PublicRequest.IsSetInstanceId then
        begin
          Context.Writer.WriteName('InstanceId');
          Context.Writer.WriteString(PublicRequest.InstanceId);
        end;
        if PublicRequest.IsSetPluginName then
        begin
          Context.Writer.WriteName('PluginName');
          Context.Writer.WriteString(PublicRequest.PluginName);
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

class constructor TGetCommandInvocationRequestMarshaller.Create;
begin
  FInstance := TGetCommandInvocationRequestMarshaller.Create;
end;

class function TGetCommandInvocationRequestMarshaller.Instance: IGetCommandInvocationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
