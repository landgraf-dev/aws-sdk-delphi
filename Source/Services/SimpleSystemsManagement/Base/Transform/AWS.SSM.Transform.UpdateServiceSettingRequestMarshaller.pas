unit AWS.SSM.Transform.UpdateServiceSettingRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.UpdateServiceSettingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IUpdateServiceSettingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateServiceSettingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateServiceSettingRequest>, IUpdateServiceSettingRequestMarshaller)
  strict private
    class var FInstance: IUpdateServiceSettingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateServiceSettingRequest): IRequest; overload;
    class function Instance: IUpdateServiceSettingRequestMarshaller; static;
  end;
  
implementation

{ TUpdateServiceSettingRequestMarshaller }

function TUpdateServiceSettingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateServiceSettingRequest(AInput));
end;

function TUpdateServiceSettingRequestMarshaller.Marshall(PublicRequest: TUpdateServiceSettingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.UpdateServiceSetting');
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
        if PublicRequest.IsSetSettingValue then
        begin
          Context.Writer.WriteName('SettingValue');
          Context.Writer.WriteString(PublicRequest.SettingValue);
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

class constructor TUpdateServiceSettingRequestMarshaller.Create;
begin
  FInstance := TUpdateServiceSettingRequestMarshaller.Create;
end;

class function TUpdateServiceSettingRequestMarshaller.Instance: IUpdateServiceSettingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
