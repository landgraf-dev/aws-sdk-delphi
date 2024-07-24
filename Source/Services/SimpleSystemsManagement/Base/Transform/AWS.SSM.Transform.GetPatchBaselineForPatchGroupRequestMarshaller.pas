unit AWS.SSM.Transform.GetPatchBaselineForPatchGroupRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetPatchBaselineForPatchGroupRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetPatchBaselineForPatchGroupRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetPatchBaselineForPatchGroupRequest>, IGetPatchBaselineForPatchGroupRequestMarshaller)
  strict private
    class var FInstance: IGetPatchBaselineForPatchGroupRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetPatchBaselineForPatchGroupRequest): IRequest; overload;
    class function Instance: IGetPatchBaselineForPatchGroupRequestMarshaller; static;
  end;
  
implementation

{ TGetPatchBaselineForPatchGroupRequestMarshaller }

function TGetPatchBaselineForPatchGroupRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetPatchBaselineForPatchGroupRequest(AInput));
end;

function TGetPatchBaselineForPatchGroupRequestMarshaller.Marshall(PublicRequest: TGetPatchBaselineForPatchGroupRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetPatchBaselineForPatchGroup');
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
        if PublicRequest.IsSetOperatingSystem then
        begin
          Context.Writer.WriteName('OperatingSystem');
          Context.Writer.WriteString(PublicRequest.OperatingSystem.Value);
        end;
        if PublicRequest.IsSetPatchGroup then
        begin
          Context.Writer.WriteName('PatchGroup');
          Context.Writer.WriteString(PublicRequest.PatchGroup);
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

class constructor TGetPatchBaselineForPatchGroupRequestMarshaller.Create;
begin
  FInstance := TGetPatchBaselineForPatchGroupRequestMarshaller.Create;
end;

class function TGetPatchBaselineForPatchGroupRequestMarshaller.Instance: IGetPatchBaselineForPatchGroupRequestMarshaller;
begin
  Result := FInstance;
end;

end.
