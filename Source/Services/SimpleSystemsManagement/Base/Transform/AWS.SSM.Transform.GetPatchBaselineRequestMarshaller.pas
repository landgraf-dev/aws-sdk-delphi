unit AWS.SSM.Transform.GetPatchBaselineRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetPatchBaselineRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetPatchBaselineRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetPatchBaselineRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetPatchBaselineRequest>, IGetPatchBaselineRequestMarshaller)
  strict private
    class var FInstance: IGetPatchBaselineRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetPatchBaselineRequest): IRequest; overload;
    class function Instance: IGetPatchBaselineRequestMarshaller; static;
  end;
  
implementation

{ TGetPatchBaselineRequestMarshaller }

function TGetPatchBaselineRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetPatchBaselineRequest(AInput));
end;

function TGetPatchBaselineRequestMarshaller.Marshall(PublicRequest: TGetPatchBaselineRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetPatchBaseline');
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
        if PublicRequest.IsSetBaselineId then
        begin
          Context.Writer.WriteName('BaselineId');
          Context.Writer.WriteString(PublicRequest.BaselineId);
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

class constructor TGetPatchBaselineRequestMarshaller.Create;
begin
  FInstance := TGetPatchBaselineRequestMarshaller.Create;
end;

class function TGetPatchBaselineRequestMarshaller.Instance: IGetPatchBaselineRequestMarshaller;
begin
  Result := FInstance;
end;

end.
