unit AWS.SSM.Transform.ResetServiceSettingRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ResetServiceSettingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IResetServiceSettingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TResetServiceSettingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TResetServiceSettingRequest>, IResetServiceSettingRequestMarshaller)
  strict private
    class var FInstance: IResetServiceSettingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TResetServiceSettingRequest): IRequest; overload;
    class function Instance: IResetServiceSettingRequestMarshaller; static;
  end;
  
implementation

{ TResetServiceSettingRequestMarshaller }

function TResetServiceSettingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TResetServiceSettingRequest(AInput));
end;

function TResetServiceSettingRequestMarshaller.Marshall(PublicRequest: TResetServiceSettingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.ResetServiceSetting');
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

class constructor TResetServiceSettingRequestMarshaller.Create;
begin
  FInstance := TResetServiceSettingRequestMarshaller.Create;
end;

class function TResetServiceSettingRequestMarshaller.Instance: IResetServiceSettingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
