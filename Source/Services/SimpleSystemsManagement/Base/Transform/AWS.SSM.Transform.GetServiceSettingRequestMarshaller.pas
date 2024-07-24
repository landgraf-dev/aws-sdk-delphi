unit AWS.SSM.Transform.GetServiceSettingRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetServiceSettingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetServiceSettingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetServiceSettingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetServiceSettingRequest>, IGetServiceSettingRequestMarshaller)
  strict private
    class var FInstance: IGetServiceSettingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetServiceSettingRequest): IRequest; overload;
    class function Instance: IGetServiceSettingRequestMarshaller; static;
  end;
  
implementation

{ TGetServiceSettingRequestMarshaller }

function TGetServiceSettingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetServiceSettingRequest(AInput));
end;

function TGetServiceSettingRequestMarshaller.Marshall(PublicRequest: TGetServiceSettingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetServiceSetting');
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
        if PublicRequest.IsSetSettingId then
        begin
          Context.Writer.WriteName('SettingId');
          Context.Writer.WriteString(PublicRequest.SettingId);
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

class constructor TGetServiceSettingRequestMarshaller.Create;
begin
  FInstance := TGetServiceSettingRequestMarshaller.Create;
end;

class function TGetServiceSettingRequestMarshaller.Instance: IGetServiceSettingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
