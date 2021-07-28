unit AWS.SES.Transform.UpdateReceiptRuleRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateReceiptRuleRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateReceiptRuleRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateReceiptRuleRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateReceiptRuleRequest>, IUpdateReceiptRuleRequestMarshaller)
  strict private
    class var FInstance: IUpdateReceiptRuleRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateReceiptRuleRequest): IRequest; overload;
    class function Instance: IUpdateReceiptRuleRequestMarshaller; static;
  end;
  
implementation

{ TUpdateReceiptRuleRequestMarshaller }

function TUpdateReceiptRuleRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateReceiptRuleRequest(AInput));
end;

function TUpdateReceiptRuleRequestMarshaller.Marshall(PublicRequest: TUpdateReceiptRuleRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateReceiptRule');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetRule then
    begin
      if PublicRequest.Rule.IsSetActions then
      begin
        var PublicRequestRulelistValueIndex: Integer := 1;
        for var PublicRequestRulelistValue in PublicRequest.Rule.Actions do
        begin
          if PublicRequestRulelistValue.IsSetAddHeaderAction then
          begin
            if PublicRequestRulelistValue.AddHeaderAction.IsSetHeaderName then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'AddHeaderAction' + '.' + 'HeaderName', TStringUtils.Fromstring(PublicRequestRulelistValue.AddHeaderAction.HeaderName));
            if PublicRequestRulelistValue.AddHeaderAction.IsSetHeaderValue then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'AddHeaderAction' + '.' + 'HeaderValue', TStringUtils.Fromstring(PublicRequestRulelistValue.AddHeaderAction.HeaderValue));
          end;
          if PublicRequestRulelistValue.IsSetBounceAction then
          begin
            if PublicRequestRulelistValue.BounceAction.IsSetMessage then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'BounceAction' + '.' + 'Message', TStringUtils.Fromstring(PublicRequestRulelistValue.BounceAction.Message));
            if PublicRequestRulelistValue.BounceAction.IsSetSender then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'BounceAction' + '.' + 'Sender', TStringUtils.Fromstring(PublicRequestRulelistValue.BounceAction.Sender));
            if PublicRequestRulelistValue.BounceAction.IsSetSmtpReplyCode then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'BounceAction' + '.' + 'SmtpReplyCode', TStringUtils.Fromstring(PublicRequestRulelistValue.BounceAction.SmtpReplyCode));
            if PublicRequestRulelistValue.BounceAction.IsSetStatusCode then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'BounceAction' + '.' + 'StatusCode', TStringUtils.Fromstring(PublicRequestRulelistValue.BounceAction.StatusCode));
            if PublicRequestRulelistValue.BounceAction.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'BounceAction' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.BounceAction.TopicArn));
          end;
          if PublicRequestRulelistValue.IsSetLambdaAction then
          begin
            if PublicRequestRulelistValue.LambdaAction.IsSetFunctionArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'LambdaAction' + '.' + 'FunctionArn', TStringUtils.Fromstring(PublicRequestRulelistValue.LambdaAction.FunctionArn));
            if PublicRequestRulelistValue.LambdaAction.IsSetInvocationType then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'LambdaAction' + '.' + 'InvocationType', PublicRequestRulelistValue.LambdaAction.InvocationType.Value);
            if PublicRequestRulelistValue.LambdaAction.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'LambdaAction' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.LambdaAction.TopicArn));
          end;
          if PublicRequestRulelistValue.IsSetS3Action then
          begin
            if PublicRequestRulelistValue.S3Action.IsSetBucketName then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'S3Action' + '.' + 'BucketName', TStringUtils.Fromstring(PublicRequestRulelistValue.S3Action.BucketName));
            if PublicRequestRulelistValue.S3Action.IsSetKmsKeyArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'S3Action' + '.' + 'KmsKeyArn', TStringUtils.Fromstring(PublicRequestRulelistValue.S3Action.KmsKeyArn));
            if PublicRequestRulelistValue.S3Action.IsSetObjectKeyPrefix then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'S3Action' + '.' + 'ObjectKeyPrefix', TStringUtils.Fromstring(PublicRequestRulelistValue.S3Action.ObjectKeyPrefix));
            if PublicRequestRulelistValue.S3Action.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'S3Action' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.S3Action.TopicArn));
          end;
          if PublicRequestRulelistValue.IsSetSNSAction then
          begin
            if PublicRequestRulelistValue.SNSAction.IsSetEncoding then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'SNSAction' + '.' + 'Encoding', PublicRequestRulelistValue.SNSAction.Encoding.Value);
            if PublicRequestRulelistValue.SNSAction.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'SNSAction' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.SNSAction.TopicArn));
          end;
          if PublicRequestRulelistValue.IsSetStopAction then
          begin
            if PublicRequestRulelistValue.StopAction.IsSetScope then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'StopAction' + '.' + 'Scope', PublicRequestRulelistValue.StopAction.Scope.Value);
            if PublicRequestRulelistValue.StopAction.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'StopAction' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.StopAction.TopicArn));
          end;
          if PublicRequestRulelistValue.IsSetWorkmailAction then
          begin
            if PublicRequestRulelistValue.WorkmailAction.IsSetOrganizationArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'WorkmailAction' + '.' + 'OrganizationArn', TStringUtils.Fromstring(PublicRequestRulelistValue.WorkmailAction.OrganizationArn));
            if PublicRequestRulelistValue.WorkmailAction.IsSetTopicArn then
              Request.Parameters.Add('Rule' + '.' + 'Actions' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex) + '.' + 'WorkmailAction' + '.' + 'TopicArn', TStringUtils.Fromstring(PublicRequestRulelistValue.WorkmailAction.TopicArn));
          end;
          Inc(PublicRequestRulelistValueIndex);
        end;
      end;
      if PublicRequest.Rule.IsSetEnabled then
        Request.Parameters.Add('Rule' + '.' + 'Enabled', TStringUtils.FromBoolean(PublicRequest.Rule.Enabled));
      if PublicRequest.Rule.IsSetName then
        Request.Parameters.Add('Rule' + '.' + 'Name', TStringUtils.Fromstring(PublicRequest.Rule.Name));
      if PublicRequest.Rule.IsSetRecipients then
      begin
        var PublicRequestRulelistValueIndex: Integer := 1;
        for var PublicRequestRulelistValue in PublicRequest.Rule.Recipients do
        begin
          Request.Parameters.Add('Rule' + '.' + 'Recipients' + '.' + 'member' + '.' + IntToStr(PublicRequestRulelistValueIndex), TStringUtils.Fromstring(PublicRequestRulelistValue));
          Inc(PublicRequestRulelistValueIndex);
        end;
      end;
      if PublicRequest.Rule.IsSetScanEnabled then
        Request.Parameters.Add('Rule' + '.' + 'ScanEnabled', TStringUtils.FromBoolean(PublicRequest.Rule.ScanEnabled));
      if PublicRequest.Rule.IsSetTlsPolicy then
        Request.Parameters.Add('Rule' + '.' + 'TlsPolicy', PublicRequest.Rule.TlsPolicy.Value);
    end;
    if PublicRequest.IsSetRuleSetName then
      Request.Parameters.Add('RuleSetName', TStringUtils.Fromstring(PublicRequest.RuleSetName));
  end;
  Result := Request;
end;

class constructor TUpdateReceiptRuleRequestMarshaller.Create;
begin
  FInstance := TUpdateReceiptRuleRequestMarshaller.Create;
end;

class function TUpdateReceiptRuleRequestMarshaller.Instance: IUpdateReceiptRuleRequestMarshaller;
begin
  Result := FInstance;
end;

end.
