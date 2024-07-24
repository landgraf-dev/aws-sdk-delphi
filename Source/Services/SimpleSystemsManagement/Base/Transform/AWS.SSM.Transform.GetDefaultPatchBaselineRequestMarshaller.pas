unit AWS.SSM.Transform.GetDefaultPatchBaselineRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetDefaultPatchBaselineRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetDefaultPatchBaselineRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetDefaultPatchBaselineRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetDefaultPatchBaselineRequest>, IGetDefaultPatchBaselineRequestMarshaller)
  strict private
    class var FInstance: IGetDefaultPatchBaselineRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetDefaultPatchBaselineRequest): IRequest; overload;
    class function Instance: IGetDefaultPatchBaselineRequestMarshaller; static;
  end;
  
implementation

{ TGetDefaultPatchBaselineRequestMarshaller }

function TGetDefaultPatchBaselineRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetDefaultPatchBaselineRequest(AInput));
end;

function TGetDefaultPatchBaselineRequestMarshaller.Marshall(PublicRequest: TGetDefaultPatchBaselineRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetDefaultPatchBaseline');
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

class constructor TGetDefaultPatchBaselineRequestMarshaller.Create;
begin
  FInstance := TGetDefaultPatchBaselineRequestMarshaller.Create;
end;

class function TGetDefaultPatchBaselineRequestMarshaller.Instance: IGetDefaultPatchBaselineRequestMarshaller;
begin
  Result := FInstance;
end;

end.
