unit AWS.SSM.Transform.GetConnectionStatusRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.GetConnectionStatusRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IGetConnectionStatusRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetConnectionStatusRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetConnectionStatusRequest>, IGetConnectionStatusRequestMarshaller)
  strict private
    class var FInstance: IGetConnectionStatusRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetConnectionStatusRequest): IRequest; overload;
    class function Instance: IGetConnectionStatusRequestMarshaller; static;
  end;
  
implementation

{ TGetConnectionStatusRequestMarshaller }

function TGetConnectionStatusRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetConnectionStatusRequest(AInput));
end;

function TGetConnectionStatusRequestMarshaller.Marshall(PublicRequest: TGetConnectionStatusRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleSystemsManagement');
  Request.Headers.Add('X-Amz-Target', 'AmazonSSM.GetConnectionStatus');
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
        if PublicRequest.IsSetTarget then
        begin
          Context.Writer.WriteName('Target');
          Context.Writer.WriteString(PublicRequest.Target);
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

class constructor TGetConnectionStatusRequestMarshaller.Create;
begin
  FInstance := TGetConnectionStatusRequestMarshaller.Create;
end;

class function TGetConnectionStatusRequestMarshaller.Instance: IGetConnectionStatusRequestMarshaller;
begin
  Result := FInstance;
end;

end.
