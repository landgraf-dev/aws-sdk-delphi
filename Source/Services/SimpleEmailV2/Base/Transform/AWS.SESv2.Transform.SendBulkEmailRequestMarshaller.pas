unit AWS.SESv2.Transform.SendBulkEmailRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  Bcl.Json.Writer, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.SendBulkEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Transform.BulkEmailEntryMarshaller, 
  AWS.SESv2.Transform.BulkEmailContentMarshaller, 
  AWS.SESv2.Transform.MessageTagMarshaller;

type
  ISendBulkEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendBulkEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendBulkEmailRequest>, ISendBulkEmailRequestMarshaller)
  strict private
    class var FInstance: ISendBulkEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendBulkEmailRequest): IRequest; overload;
    class function Instance: ISendBulkEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendBulkEmailRequestMarshaller }

function TSendBulkEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendBulkEmailRequest(AInput));
end;

function TSendBulkEmailRequestMarshaller.Marshall(PublicRequest: TSendBulkEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/outbound-bulk-emails';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetBulkEmailEntries then
        begin
          Context.Writer.WriteName('BulkEmailEntries');
          Context.Writer.WriteBeginArray;
          for var PublicRequestBulkEmailEntriesListValue in PublicRequest.BulkEmailEntries do
          begin
            Context.Writer.WriteBeginObject;
            TBulkEmailEntryMarshaller.Instance.Marshall(PublicRequestBulkEmailEntriesListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetConfigurationSetName then
        begin
          Context.Writer.WriteName('ConfigurationSetName');
          Context.Writer.WriteString(PublicRequest.ConfigurationSetName);
        end;
        if PublicRequest.IsSetDefaultContent then
        begin
          Context.Writer.WriteName('DefaultContent');
          Context.Writer.WriteBeginObject;
          TBulkEmailContentMarshaller.Instance.Marshall(PublicRequest.DefaultContent, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetDefaultEmailTags then
        begin
          Context.Writer.WriteName('DefaultEmailTags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestDefaultEmailTagsListValue in PublicRequest.DefaultEmailTags do
          begin
            Context.Writer.WriteBeginObject;
            TMessageTagMarshaller.Instance.Marshall(PublicRequestDefaultEmailTagsListValue, Context);
            Context.Writer.WriteEndObject;
          end;
          Context.Writer.WriteEndArray;
        end;
        if PublicRequest.IsSetFeedbackForwardingEmailAddress then
        begin
          Context.Writer.WriteName('FeedbackForwardingEmailAddress');
          Context.Writer.WriteString(PublicRequest.FeedbackForwardingEmailAddress);
        end;
        if PublicRequest.IsSetFeedbackForwardingEmailAddressIdentityArn then
        begin
          Context.Writer.WriteName('FeedbackForwardingEmailAddressIdentityArn');
          Context.Writer.WriteString(PublicRequest.FeedbackForwardingEmailAddressIdentityArn);
        end;
        if PublicRequest.IsSetFromEmailAddress then
        begin
          Context.Writer.WriteName('FromEmailAddress');
          Context.Writer.WriteString(PublicRequest.FromEmailAddress);
        end;
        if PublicRequest.IsSetFromEmailAddressIdentityArn then
        begin
          Context.Writer.WriteName('FromEmailAddressIdentityArn');
          Context.Writer.WriteString(PublicRequest.FromEmailAddressIdentityArn);
        end;
        if PublicRequest.IsSetReplyToAddresses then
        begin
          Context.Writer.WriteName('ReplyToAddresses');
          Context.Writer.WriteBeginArray;
          for var PublicRequestReplyToAddressesListValue in PublicRequest.ReplyToAddresses do
            Context.Writer.WriteString(PublicRequestReplyToAddressesListValue);
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

class constructor TSendBulkEmailRequestMarshaller.Create;
begin
  FInstance := TSendBulkEmailRequestMarshaller.Create;
end;

class function TSendBulkEmailRequestMarshaller.Instance: ISendBulkEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
