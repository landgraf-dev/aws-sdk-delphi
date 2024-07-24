unit AWS.SSM.Transform.RegisterPatchBaselineForPatchGroupRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IRegisterPatchBaselineForPatchGroupRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRegisterPatchBaselineForPatchGroupRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRegisterPatchBaselineForPatchGroupRequest>, IRegisterPatchBaselineForPatchGroupRequestMarshaller)
  strict private
    class var FInstance: IRegisterPatchBaselineForPatchGroupRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRegisterPatchBaselineForPatchGroupRequest): IRequest; overload;
    class function Instance: IRegisterPatchBaselineForPatchGroupRequestMarshaller; static;
  end;
  
implementation

{ TRegisterPatchBaselineForPatchGroupRequestMarshaller }

function TRegisterPatchBaselineForPatchGroupRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRegisterPatchBaselineForPatchGroupRequest(AInput));
end;

function TRegisterPatchBaselineForPatchGroupRequestMarshaller.Marshall(PublicRequest: TRegisterPatchBaselineForPatchGroupRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.RegisterPatchBaselineForPatchGroup');
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

class constructor TRegisterPatchBaselineForPatchGroupRequestMarshaller.Create;
begin
  FInstance := TRegisterPatchBaselineForPatchGroupRequestMarshaller.Create;
end;

class function TRegisterPatchBaselineForPatchGroupRequestMarshaller.Instance: IRegisterPatchBaselineForPatchGroupRequestMarshaller;
begin
  Result := FInstance;
end;

end.
