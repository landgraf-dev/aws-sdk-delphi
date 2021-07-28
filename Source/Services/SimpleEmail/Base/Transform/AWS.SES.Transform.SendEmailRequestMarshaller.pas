unit AWS.SES.Transform.SendEmailRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendEmail');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetDestination then
    begin
      if PublicRequest.Destination.IsSetBccAddresses then
      begin
        var PublicRequestDestinationlistValueIndex: Integer := 1;
        for var PublicRequestDestinationlistValue in PublicRequest.Destination.BccAddresses do
        begin
          Request.Parameters.Add('Destination' + '.' + 'BccAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestDestinationlistValue));
          Inc(PublicRequestDestinationlistValueIndex);
        end;
      end;
      if PublicRequest.Destination.IsSetCcAddresses then
      begin
        var PublicRequestDestinationlistValueIndex: Integer := 1;
        for var PublicRequestDestinationlistValue in PublicRequest.Destination.CcAddresses do
        begin
          Request.Parameters.Add('Destination' + '.' + 'CcAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestDestinationlistValue));
          Inc(PublicRequestDestinationlistValueIndex);
        end;
      end;
      if PublicRequest.Destination.IsSetToAddresses then
      begin
        var PublicRequestDestinationlistValueIndex: Integer := 1;
        for var PublicRequestDestinationlistValue in PublicRequest.Destination.ToAddresses do
        begin
          Request.Parameters.Add('Destination' + '.' + 'ToAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestDestinationlistValue));
          Inc(PublicRequestDestinationlistValueIndex);
        end;
      end;
    end;
    if PublicRequest.IsSetMessage then
    begin
      if PublicRequest.Message.IsSetBody then
      begin
        if PublicRequest.Message.Body.IsSetHtml then
        begin
          if PublicRequest.Message.Body.Html.IsSetCharset then
            Request.Parameters.Add('Message' + '.' + 'Body' + '.' + 'Html' + '.' + 'Charset', TStringUtils.Fromstring(PublicRequest.Message.Body.Html.Charset));
          if PublicRequest.Message.Body.Html.IsSetData then
            Request.Parameters.Add('Message' + '.' + 'Body' + '.' + 'Html' + '.' + 'Data', TStringUtils.Fromstring(PublicRequest.Message.Body.Html.Data));
        end;
        if PublicRequest.Message.Body.IsSetText then
        begin
          if PublicRequest.Message.Body.Text.IsSetCharset then
            Request.Parameters.Add('Message' + '.' + 'Body' + '.' + 'Text' + '.' + 'Charset', TStringUtils.Fromstring(PublicRequest.Message.Body.Text.Charset));
          if PublicRequest.Message.Body.Text.IsSetData then
            Request.Parameters.Add('Message' + '.' + 'Body' + '.' + 'Text' + '.' + 'Data', TStringUtils.Fromstring(PublicRequest.Message.Body.Text.Data));
        end;
      end;
      if PublicRequest.Message.IsSetSubject then
      begin
        if PublicRequest.Message.Subject.IsSetCharset then
          Request.Parameters.Add('Message' + '.' + 'Subject' + '.' + 'Charset', TStringUtils.Fromstring(PublicRequest.Message.Subject.Charset));
        if PublicRequest.Message.Subject.IsSetData then
          Request.Parameters.Add('Message' + '.' + 'Subject' + '.' + 'Data', TStringUtils.Fromstring(PublicRequest.Message.Subject.Data));
      end;
    end;
    if PublicRequest.IsSetReplyToAddresses then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.ReplyToAddresses do
      begin
        Request.Parameters.Add('ReplyToAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetReturnPath then
      Request.Parameters.Add('ReturnPath', TStringUtils.Fromstring(PublicRequest.ReturnPath));
    if PublicRequest.IsSetReturnPathArn then
      Request.Parameters.Add('ReturnPathArn', TStringUtils.Fromstring(PublicRequest.ReturnPathArn));
    if PublicRequest.IsSetSource then
      Request.Parameters.Add('Source', TStringUtils.Fromstring(PublicRequest.Source));
    if PublicRequest.IsSetSourceArn then
      Request.Parameters.Add('SourceArn', TStringUtils.Fromstring(PublicRequest.SourceArn));
    if PublicRequest.IsSetTags then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Tags do
      begin
        if PublicRequestlistValue.IsSetName then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestlistValue.Name));
        if PublicRequestlistValue.IsSetValue then
          Request.Parameters.Add('Tags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValue.Value));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
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
