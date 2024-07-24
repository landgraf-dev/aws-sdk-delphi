unit AWS.SSM.Transform.DescribePatchGroupStateRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.DescribePatchGroupStateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IDescribePatchGroupStateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDescribePatchGroupStateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDescribePatchGroupStateRequest>, IDescribePatchGroupStateRequestMarshaller)
  strict private
    class var FInstance: IDescribePatchGroupStateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDescribePatchGroupStateRequest): IRequest; overload;
    class function Instance: IDescribePatchGroupStateRequestMarshaller; static;
  end;
  
implementation

{ TDescribePatchGroupStateRequestMarshaller }

function TDescribePatchGroupStateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDescribePatchGroupStateRequest(AInput));
end;

function TDescribePatchGroupStateRequestMarshaller.Marshall(PublicRequest: TDescribePatchGroupStateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.DescribePatchGroupState');
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

class constructor TDescribePatchGroupStateRequestMarshaller.Create;
begin
  FInstance := TDescribePatchGroupStateRequestMarshaller.Create;
end;

class function TDescribePatchGroupStateRequestMarshaller.Instance: IDescribePatchGroupStateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
