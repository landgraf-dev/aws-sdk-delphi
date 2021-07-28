unit AWS.SES.Transform.SendTemplatedEmailRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendTemplatedEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISendTemplatedEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendTemplatedEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendTemplatedEmailRequest>, ISendTemplatedEmailRequestMarshaller)
  strict private
    class var FInstance: ISendTemplatedEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendTemplatedEmailRequest): IRequest; overload;
    class function Instance: ISendTemplatedEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendTemplatedEmailRequestMarshaller }

function TSendTemplatedEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendTemplatedEmailRequest(AInput));
end;

function TSendTemplatedEmailRequestMarshaller.Marshall(PublicRequest: TSendTemplatedEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendTemplatedEmail');
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
    if PublicRequest.IsSetTemplate then
      Request.Parameters.Add('Template', TStringUtils.Fromstring(PublicRequest.Template));
    if PublicRequest.IsSetTemplateArn then
      Request.Parameters.Add('TemplateArn', TStringUtils.Fromstring(PublicRequest.TemplateArn));
    if PublicRequest.IsSetTemplateData then
      Request.Parameters.Add('TemplateData', TStringUtils.Fromstring(PublicRequest.TemplateData));
  end;
  Result := Request;
end;

class constructor TSendTemplatedEmailRequestMarshaller.Create;
begin
  FInstance := TSendTemplatedEmailRequestMarshaller.Create;
end;

class function TSendTemplatedEmailRequestMarshaller.Instance: ISendTemplatedEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
