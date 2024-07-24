unit AWS.SSM.Transform.GetOpsItemRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetOpsItemRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetOpsItemRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetOpsItemRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetOpsItemRequest>, IGetOpsItemRequestMarshaller)
  strict private
    class var FInstance: IGetOpsItemRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetOpsItemRequest): IRequest; overload;
    class function Instance: IGetOpsItemRequestMarshaller; static;
  end;
  
implementation

{ TGetOpsItemRequestMarshaller }

function TGetOpsItemRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetOpsItemRequest(AInput));
end;

function TGetOpsItemRequestMarshaller.Marshall(PublicRequest: TGetOpsItemRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetOpsItem');
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
        if PublicRequest.IsSetOpsItemId then
        begin
          Context.Writer.WriteName('OpsItemId');
          Context.Writer.WriteString(PublicRequest.OpsItemId);
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

class constructor TGetOpsItemRequestMarshaller.Create;
begin
  FInstance := TGetOpsItemRequestMarshaller.Create;
end;

class function TGetOpsItemRequestMarshaller.Instance: IGetOpsItemRequestMarshaller;
begin
  Result := FInstance;
end;

end.
