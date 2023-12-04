unit AWS.SESv2.Transform.PutAccountSendingAttributesRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.PutAccountSendingAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer;

type
  IPutAccountSendingAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccountSendingAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccountSendingAttributesRequest>, IPutAccountSendingAttributesRequestMarshaller)
  strict private
    class var FInstance: IPutAccountSendingAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccountSendingAttributesRequest): IRequest; overload;
    class function Instance: IPutAccountSendingAttributesRequestMarshaller; static;
  end;
  
implementation

{ TPutAccountSendingAttributesRequestMarshaller }

function TPutAccountSendingAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccountSendingAttributesRequest(AInput));
end;

function TPutAccountSendingAttributesRequestMarshaller.Marshall(PublicRequest: TPutAccountSendingAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  Request.ResourcePath := '/v2/email/account/sending';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetSendingEnabled then
        begin
          Context.Writer.WriteName('SendingEnabled');
          Context.Writer.WriteBoolean(PublicRequest.SendingEnabled);
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

class constructor TPutAccountSendingAttributesRequestMarshaller.Create;
begin
  FInstance := TPutAccountSendingAttributesRequestMarshaller.Create;
end;

class function TPutAccountSendingAttributesRequestMarshaller.Instance: IPutAccountSendingAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
