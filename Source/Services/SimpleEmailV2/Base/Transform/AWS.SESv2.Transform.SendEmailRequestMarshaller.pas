unit AWS.SESv2.Transform.SendEmailRequestMarshaller;

interface

uses
  System.Classes, 
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.SendEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.Json.Writer, 
  AWS.SESv2.Transform.EmailContentMarshaller, 
  AWS.SESv2.Transform.DestinationMarshaller, 
  AWS.SESv2.Transform.MessageTagMarshaller, 
  AWS.SESv2.Transform.ListManagementOptionsMarshaller;

type
  ISendEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendEmailRequest>, ISendEmailRequestMarshaller)
  strict private
    class var FInstance: ISendEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendEmailRequest): IRequest; overload;
    class function Instance: ISendEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendEmailRequestMarshaller }

function TSendEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendEmailRequest(AInput));
end;

function TSendEmailRequestMarshaller.Marshall(PublicRequest: TSendEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue('Content-Type', 'application/json');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'POST';
  Request.ResourcePath := '/v2/email/outbound-emails';
  var Stream: TStringStream := TStringStream.Create('', TEncoding.UTF8, False);
  try
    var Writer: TJsonWriter := TJsonWriter.Create(Stream);
    try
      var Context: TJsonMarshallerContext := TJsonMarshallerContext.Create(Request, Writer);
      try
        Writer.WriteBeginObject;
        if PublicRequest.IsSetConfigurationSetName then
        begin
          Context.Writer.WriteName('ConfigurationSetName');
          Context.Writer.WriteString(PublicRequest.ConfigurationSetName);
        end;
        if PublicRequest.IsSetContent then
        begin
          Context.Writer.WriteName('Content');
          Context.Writer.WriteBeginObject;
          TEmailContentMarshaller.Instance.Marshall(PublicRequest.Content, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetDestination then
        begin
          Context.Writer.WriteName('Destination');
          Context.Writer.WriteBeginObject;
          TDestinationMarshaller.Instance.Marshall(PublicRequest.Destination, Context);
          Context.Writer.WriteEndObject;
        end;
        if PublicRequest.IsSetEmailTags then
        begin
          Context.Writer.WriteName('EmailTags');
          Context.Writer.WriteBeginArray;
          for var PublicRequestEmailTagsListValue in PublicRequest.EmailTags do
          begin
            Context.Writer.WriteBeginObject;
            TMessageTagMarshaller.Instance.Marshall(PublicRequestEmailTagsListValue, Context);
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
        if PublicRequest.IsSetListManagementOptions then
        begin
          Context.Writer.WriteName('ListManagementOptions');
          Context.Writer.WriteBeginObject;
          TListManagementOptionsMarshaller.Instance.Marshall(PublicRequest.ListManagementOptions, Context);
          Context.Writer.WriteEndObject;
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

class constructor TSendEmailRequestMarshaller.Create;
begin
  FInstance := TSendEmailRequestMarshaller.Create;
end;

class function TSendEmailRequestMarshaller.Instance: ISendEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
