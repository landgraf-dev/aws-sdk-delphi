unit AWS.SESv2.Transform.UpdateContactListRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.UpdateContactListRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils, 
  AWS.SESv2.Transform.TopicMarshaller;

type
  IUpdateContactListRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateContactListRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateContactListRequest>, IUpdateContactListRequestMarshaller)
  strict private
    class var FInstance: IUpdateContactListRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateContactListRequest): IRequest; overload;
    class function Instance: IUpdateContactListRequestMarshaller; static;
  end;
  
implementation

{ TUpdateContactListRequestMarshaller }

function TUpdateContactListRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateContactListRequest(AInput));
end;

function TUpdateContactListRequestMarshaller.Marshall(PublicRequest: TUpdateContactListRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'PUT';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetTopics then
        begin
          Context.Writer.WriteName('Topics');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTopicsListValue in PublicRequest.Topics do
          begin
            Context.Writer.WriteBeginObject;
            TTopicMarshaller.Instance.Marshall(PublicRequestTopicsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TUpdateContactListRequestMarshaller.Create;
begin
  FInstance := TUpdateContactListRequestMarshaller.Create;
end;

class function TUpdateContactListRequestMarshaller.Instance: IUpdateContactListRequestMarshaller;
begin
  Result := FInstance;
end;

end.
