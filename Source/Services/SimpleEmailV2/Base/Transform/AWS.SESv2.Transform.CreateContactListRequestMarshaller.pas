unit AWS.SESv2.Transform.CreateContactListRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.CreateContactListRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Transform.TagMarshaller, 
  AWS.SESv2.Transform.TopicMarshaller;

type
  ICreateContactListRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateContactListRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateContactListRequest>, ICreateContactListRequestMarshaller)
  strict private
    class var FInstance: ICreateContactListRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateContactListRequest): IRequest; overload;
    class function Instance: ICreateContactListRequestMarshaller; static;
  end;
  
implementation

{ TCreateContactListRequestMarshaller }

function TCreateContactListRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateContactListRequest(AInput));
end;

function TCreateContactListRequestMarshaller.Marshall(PublicRequest: TCreateContactListRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/contact-lists';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetContactListName then
        begin
          Context.Writer.WriteName('ContactListName');
          Context.Writer.WriteString(PublicRequest.ContactListName);
        end;
        if PublicRequest.IsSetDescription then
        begin
          Context.Writer.WriteName('Description');
          Context.Writer.WriteString(PublicRequest.Description);
        end;
        if PublicRequest.IsSetTags then
        begin
          Context.Writer.WriteName('Tags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestTagsListValue in PublicRequest.Tags do
          begin
            Context.Writer.WriteBeginObject;
            TTagMarshaller.Instance.Marshall(PublicRequestTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
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

class constructor TCreateContactListRequestMarshaller.Create;
begin
  FInstance := TCreateContactListRequestMarshaller.Create;
end;

class function TCreateContactListRequestMarshaller.Instance: ICreateContactListRequestMarshaller;
begin
  Result := FInstance;
end;

end.
