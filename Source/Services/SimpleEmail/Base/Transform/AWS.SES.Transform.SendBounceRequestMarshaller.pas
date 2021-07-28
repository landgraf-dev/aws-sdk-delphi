unit AWS.SES.Transform.SendBounceRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendBounceRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISendBounceRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendBounceRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendBounceRequest>, ISendBounceRequestMarshaller)
  strict private
    class var FInstance: ISendBounceRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendBounceRequest): IRequest; overload;
    class function Instance: ISendBounceRequestMarshaller; static;
  end;
  
implementation

{ TSendBounceRequestMarshaller }

function TSendBounceRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendBounceRequest(AInput));
end;

function TSendBounceRequestMarshaller.Marshall(PublicRequest: TSendBounceRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendBounce');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetBounceSender then
      Request.Parameters.Add('BounceSender', TStringUtils.Fromstring(PublicRequest.BounceSender));
    if PublicRequest.IsSetBounceSenderArn then
      Request.Parameters.Add('BounceSenderArn', TStringUtils.Fromstring(PublicRequest.BounceSenderArn));
    if PublicRequest.IsSetBouncedRecipientInfoList then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.BouncedRecipientInfoList do
      begin
        if PublicRequestlistValue.IsSetBounceType then
          Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'BounceType', PublicRequestlistValue.BounceType.Value);
        if PublicRequestlistValue.IsSetRecipient then
          Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'Recipient', TStringUtils.Fromstring(PublicRequestlistValue.Recipient));
        if PublicRequestlistValue.IsSetRecipientArn then
          Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientArn', TStringUtils.Fromstring(PublicRequestlistValue.RecipientArn));
        if PublicRequestlistValue.IsSetRecipientDsnFields then
        begin
          if PublicRequestlistValue.RecipientDsnFields.IsSetAction then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'Action', PublicRequestlistValue.RecipientDsnFields.Action.Value);
          if PublicRequestlistValue.RecipientDsnFields.IsSetDiagnosticCode then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'DiagnosticCode', TStringUtils.Fromstring(PublicRequestlistValue.RecipientDsnFields.DiagnosticCode));
          if PublicRequestlistValue.RecipientDsnFields.IsSetExtensionFields then
          begin
            var PublicRequestlistValueRecipientDsnFieldslistValueIndex: Integer := 1;
            for var PublicRequestlistValueRecipientDsnFieldslistValue in PublicRequestlistValue.RecipientDsnFields.ExtensionFields do
            begin
              if PublicRequestlistValueRecipientDsnFieldslistValue.IsSetName then
                Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'ExtensionFields' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueRecipientDsnFieldslistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestlistValueRecipientDsnFieldslistValue.Name));
              if PublicRequestlistValueRecipientDsnFieldslistValue.IsSetValue then
                Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'ExtensionFields' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueRecipientDsnFieldslistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestlistValueRecipientDsnFieldslistValue.Value));
              Inc(PublicRequestlistValueRecipientDsnFieldslistValueIndex);
            end;
          end;
          if PublicRequestlistValue.RecipientDsnFields.IsSetFinalRecipient then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'FinalRecipient', TStringUtils.Fromstring(PublicRequestlistValue.RecipientDsnFields.FinalRecipient));
          if PublicRequestlistValue.RecipientDsnFields.IsSetLastAttemptDateUtc then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'LastAttemptDate', TStringUtils.FromDateTimeToISO8601(PublicRequestlistValue.RecipientDsnFields.LastAttemptDateUtc));
          if PublicRequestlistValue.RecipientDsnFields.IsSetRemoteMta then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'RemoteMta', TStringUtils.Fromstring(PublicRequestlistValue.RecipientDsnFields.RemoteMta));
          if PublicRequestlistValue.RecipientDsnFields.IsSetStatus then
            Request.Parameters.Add('BouncedRecipientInfoList' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex) + '.' + 'RecipientDsnFields' + '.' + 'Status', TStringUtils.Fromstring(PublicRequestlistValue.RecipientDsnFields.Status));
        end;
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetExplanation then
      Request.Parameters.Add('Explanation', TStringUtils.Fromstring(PublicRequest.Explanation));
    if PublicRequest.IsSetMessageDsn then
    begin
      if PublicRequest.MessageDsn.IsSetArrivalDateUtc then
        Request.Parameters.Add('MessageDsn' + '.' + 'ArrivalDate', TStringUtils.FromDateTimeToISO8601(PublicRequest.MessageDsn.ArrivalDateUtc));
      if PublicRequest.MessageDsn.IsSetExtensionFields then
      begin
        var PublicRequestMessageDsnlistValueIndex: Integer := 1;
        for var PublicRequestMessageDsnlistValue in PublicRequest.MessageDsn.ExtensionFields do
        begin
          if PublicRequestMessageDsnlistValue.IsSetName then
            Request.Parameters.Add('MessageDsn' + '.' + 'ExtensionFields' + '.' + 'member' + '.' + IntToStr(PublicRequestMessageDsnlistValueIndex) + '.' + 'Name', TStringUtils.Fromstring(PublicRequestMessageDsnlistValue.Name));
          if PublicRequestMessageDsnlistValue.IsSetValue then
            Request.Parameters.Add('MessageDsn' + '.' + 'ExtensionFields' + '.' + 'member' + '.' + IntToStr(PublicRequestMessageDsnlistValueIndex) + '.' + 'Value', TStringUtils.Fromstring(PublicRequestMessageDsnlistValue.Value));
          Inc(PublicRequestMessageDsnlistValueIndex);
        end;
      end;
      if PublicRequest.MessageDsn.IsSetReportingMta then
        Request.Parameters.Add('MessageDsn' + '.' + 'ReportingMta', TStringUtils.Fromstring(PublicRequest.MessageDsn.ReportingMta));
    end;
    if PublicRequest.IsSetOriginalMessageId then
      Request.Parameters.Add('OriginalMessageId', TStringUtils.Fromstring(PublicRequest.OriginalMessageId));
  end;
  Result := Request;
end;

class constructor TSendBounceRequestMarshaller.Create;
begin
  FInstance := TSendBounceRequestMarshaller.Create;
end;

class function TSendBounceRequestMarshaller.Instance: ISendBounceRequestMarshaller;
begin
  Result := FInstance;
end;

end.
