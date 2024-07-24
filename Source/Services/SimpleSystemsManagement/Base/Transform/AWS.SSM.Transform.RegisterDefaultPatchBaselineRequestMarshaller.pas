unit AWS.SSM.Transform.RegisterDefaultPatchBaselineRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.RegisterDefaultPatchBaselineRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IRegisterDefaultPatchBaselineRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TRegisterDefaultPatchBaselineRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TRegisterDefaultPatchBaselineRequest>, IRegisterDefaultPatchBaselineRequestMarshaller)
  strict private
    class var FInstance: IRegisterDefaultPatchBaselineRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TRegisterDefaultPatchBaselineRequest): IRequest; overload;
    class function Instance: IRegisterDefaultPatchBaselineRequestMarshaller; static;
  end;
  
implementation

{ TRegisterDefaultPatchBaselineRequestMarshaller }

function TRegisterDefaultPatchBaselineRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TRegisterDefaultPatchBaselineRequest(AInput));
end;

function TRegisterDefaultPatchBaselineRequestMarshaller.Marshall(PublicRequest: TRegisterDefaultPatchBaselineRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.RegisterDefaultPatchBaseline');
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

class constructor TRegisterDefaultPatchBaselineRequestMarshaller.Create;
begin
  FInstance := TRegisterDefaultPatchBaselineRequestMarshaller.Create;
end;

class function TRegisterDefaultPatchBaselineRequestMarshaller.Instance: IRegisterDefaultPatchBaselineRequestMarshaller;
begin
  Result := FInstance;
end;

end.
