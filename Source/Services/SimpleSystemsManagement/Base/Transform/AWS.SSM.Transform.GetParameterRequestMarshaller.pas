unit AWS.SSM.Transform.GetParameterRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetParameterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetParameterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetParameterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetParameterRequest>, IGetParameterRequestMarshaller)
  strict private
    class var FInstance: IGetParameterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetParameterRequest): IRequest; overload;
    class function Instance: IGetParameterRequestMarshaller; static;
  end;
  
implementation

{ TGetParameterRequestMarshaller }

function TGetParameterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetParameterRequest(AInput));
end;

function TGetParameterRequestMarshaller.Marshall(PublicRequest: TGetParameterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetParameter');
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
        if PublicRequest.IsSetName then
        begin
          Context.Writer.WriteName('Name');
          Context.Writer.WriteString(PublicRequest.Name);
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

class constructor TGetParameterRequestMarshaller.Create;
begin
  FInstance := TGetParameterRequestMarshaller.Create;
end;

class function TGetParameterRequestMarshaller.Instance: IGetParameterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
