unit AWS.SSM.Transform.GetParametersRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetParametersRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetParametersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetParametersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetParametersRequest>, IGetParametersRequestMarshaller)
  strict private
    class var FInstance: IGetParametersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetParametersRequest): IRequest; overload;
    class function Instance: IGetParametersRequestMarshaller; static;
  end;
  
implementation

{ TGetParametersRequestMarshaller }

function TGetParametersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetParametersRequest(AInput));
end;

function TGetParametersRequestMarshaller.Marshall(PublicRequest: TGetParametersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetParameters');
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
        if PublicRequest.IsSetNames then
        begin
          Context.Writer.WriteName('Names');
          Context.Writer.WriteBeginArray;
          for var PublicRequestNamesListValue in PublicRequest.Names do
            Context.Writer.WriteString(PublicRequestNamesListValue);
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetWithDecryption then
        begin
          Context.Writer.WriteName('WithDecryption');
          Context.Writer.WriteBoolean(PublicRequest.WithDecryption);
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

class constructor TGetParametersRequestMarshaller.Create;
begin
  FInstance := TGetParametersRequestMarshaller.Create;
end;

class function TGetParametersRequestMarshaller.Instance: IGetParametersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
