unit AWS.SES.Transform.SendBulkTemplatedEmailRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendBulkTemplatedEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISendBulkTemplatedEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendBulkTemplatedEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendBulkTemplatedEmailRequest>, ISendBulkTemplatedEmailRequestMarshaller)
  strict private
    class var FInstance: ISendBulkTemplatedEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendBulkTemplatedEmailRequest): IRequest; overload;
    class function Instance: ISendBulkTemplatedEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendBulkTemplatedEmailRequestMarshaller }

function TSendBulkTemplatedEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendBulkTemplatedEmailRequest(AInput));
end;

function TSendBulkTemplatedEmailRequestMarshaller.Marshall(PublicRequest: TSendBulkTemplatedEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendBulkTemplatedEmail');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetDefaultTags then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.DefaultTags do
      begin
        if PublicRequestlistValue.IsSetName then
          Request.Parameters.Add('DefaultTags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestlistValue.Name));
        if PublicRequestlistValue.IsSetValue then
          Request.Parameters.Add('DefaultTags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValue.Value));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetDefaultTemplateData then
      Request.Parameters.Add('DefaultTemplateData', TStringUtils.Fromstring(PublicRequest.DefaultTemplateData));
    if PublicRequest.IsSetDestinations then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Destinations do
      begin
        if PublicRequestlistValue.IsSetDestination then
        begin
          if PublicRequestlistValue.Destination.IsSetBccAddresses then
          begin
            var PublicRequestlistValueDestinationlistValueIndex: Integer := 1;
            for var PublicRequestlistValueDestinationlistValue in PublicRequestlistValue.Destination.BccAddresses do
            begin
              Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Destination' + '.' + 'BccAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValueDestinationlistValue));
              Inc(PublicRequestlistValueDestinationlistValueIndex);
            end;
          end;
          if PublicRequestlistValue.Destination.IsSetCcAddresses then
          begin
            var PublicRequestlistValueDestinationlistValueIndex: Integer := 1;
            for var PublicRequestlistValueDestinationlistValue in PublicRequestlistValue.Destination.CcAddresses do
            begin
              Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Destination' + '.' + 'CcAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValueDestinationlistValue));
              Inc(PublicRequestlistValueDestinationlistValueIndex);
            end;
          end;
          if PublicRequestlistValue.Destination.IsSetToAddresses then
          begin
            var PublicRequestlistValueDestinationlistValueIndex: Integer := 1;
            for var PublicRequestlistValueDestinationlistValue in PublicRequestlistValue.Destination.ToAddresses do
            begin
              Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Destination' + '.' + 'ToAddresses' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValueDestinationlistValue));
              Inc(PublicRequestlistValueDestinationlistValueIndex);
            end;
          end;
        end;
        if PublicRequestlistValue.IsSetReplacementTags then
        begin
          var PublicRequestlistValuelistValueIndex: Integer := 1;
          for var PublicRequestlistValuelistValue in PublicRequestlistValue.ReplacementTags do
          begin
            if PublicRequestlistValuelistValue.IsSetName then
              Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'ReplacementTags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValuelistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestlistValuelistValue.Name));
            if PublicRequestlistValuelistValue.IsSetValue then
              Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'ReplacementTags' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValuelistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValuelistValue.Value));
            Inc(PublicRequestlistValuelistValueIndex);
          end;
        end;
        if PublicRequestlistValue.IsSetReplacementTemplateData then
          Request.Parameters.Add('Destinations' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'ReplacementTemplateData', TStringUtils.Fromstring(PublicRequestlistValue.ReplacementTemplateData));
        Inc(PublicRequestlistValueIndex);
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
    if PublicRequest.IsSetTemplate then
      Request.Parameters.Add('Template', TStringUtils.Fromstring(PublicRequest.Template));
    if PublicRequest.IsSetTemplateArn then
      Request.Parameters.Add('TemplateArn', TStringUtils.Fromstring(PublicRequest.TemplateArn));
  end;
  Result := Request;
end;

class constructor TSendBulkTemplatedEmailRequestMarshaller.Create;
begin
  FInstance := TSendBulkTemplatedEmailRequestMarshaller.Create;
end;

class function TSendBulkTemplatedEmailRequestMarshaller.Instance: ISendBulkTemplatedEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
