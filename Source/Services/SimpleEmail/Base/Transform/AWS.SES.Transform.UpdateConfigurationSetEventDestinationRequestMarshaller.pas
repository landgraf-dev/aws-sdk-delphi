unit AWS.SES.Transform.UpdateConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateConfigurationSetEventDestinationRequest>, IUpdateConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: IUpdateConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: IUpdateConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TUpdateConfigurationSetEventDestinationRequestMarshaller }

function TUpdateConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateConfigurationSetEventDestinationRequest(AInput));
end;

function TUpdateConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TUpdateConfigurationSetEventDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateConfigurationSetEventDestination');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetEventDestination then
    begin
      if PublicRequest.EventDestination.IsSetCloudWatchDestination then
        if PublicRequest.EventDestination.CloudWatchDestination.IsSetDimensionConfigurations then
        begin
          var PublicRequestEventDestinationCloudWatchDestinationlistValueIndex: Integer := 1;
          for var PublicRequestEventDestinationCloudWatchDestinationlistValue in PublicRequest.EventDestination.CloudWatchDestination.DimensionConfigurations do
          begin
            if PublicRequestEventDestinationCloudWatchDestinationlistValue.IsSetDefaultDimensionValue then
              Request.Parameters.Add('EventDestination' + '.' + 'CloudWatchDestination' + '.' + 'DimensionConfigurations' + '.' + 'member' + '.' + IntToStr(PublicRequestEventDestinationCloudWatchDestinationlistValueIndex) + '.' + 'DefaultDimensionValue', TStringUtils.Fromstring(PublicRequestEventDestinationCloudWatchDestinationlistValue.DefaultDimensionValue));
            if PublicRequestEventDestinationCloudWatchDestinationlistValue.IsSetDimensionName then
              Request.Parameters.Add('EventDestination' + '.' + 'CloudWatchDestination' + '.' + 'DimensionConfigurations' + '.' + 'member' + '.' + IntToStr(PublicRequestEventDestinationCloudWatchDestinationlistValueIndex) + '.' + 'DimensionName', TStringUtils.Fromstring(PublicRequestEventDestinationCloudWatchDestinationlistValue.DimensionName));
            if PublicRequestEventDestinationCloudWatchDestinationlistValue.IsSetDimensionValueSource then
              Request.Parameters.Add('EventDestination' + '.' + 'CloudWatchDestination' + '.' + 'DimensionConfigurations' + '.' + 'member' + '.' + IntToStr(PublicRequestEventDestinationCloudWatchDestinationlistValueIndex) + '.' + 'DimensionValueSource', PublicRequestEventDestinationCloudWatchDestinationlistValue.DimensionValueSource.Value);
            Inc(PublicRequestEventDestinationCloudWatchDestinationlistValueIndex);
          end;
        end;
      if PublicRequest.EventDestination.IsSetEnabled then
        Request.Parameters.Add('EventDestination' + '.' + 'Enabled', TStringUtils.FromBoolean(PublicRequest.EventDestination.Enabled));
      if PublicRequest.EventDestination.IsSetKinesisFirehoseDestination then
      begin
        if PublicRequest.EventDestination.KinesisFirehoseDestination.IsSetDeliveryStreamARN then
          Request.Parameters.Add('EventDestination' + '.' + 'KinesisFirehoseDestination' + '.' + 'DeliveryStreamARN', TStringUtils.Fromstring(PublicRequest.EventDestination.KinesisFirehoseDestination.DeliveryStreamARN));
        if PublicRequest.EventDestination.KinesisFirehoseDestination.IsSetIAMRoleARN then
          Request.Parameters.Add('EventDestination' + '.' + 'KinesisFirehoseDestination' + '.' + 'IAMRoleARN', TStringUtils.Fromstring(PublicRequest.EventDestination.KinesisFirehoseDestination.IAMRoleARN));
      end;
      if PublicRequest.EventDestination.IsSetMatchingEventTypes then
      begin
        var PublicRequestEventDestinationlistValueIndex: Integer := 1;
        for var PublicRequestEventDestinationlistValue in PublicRequest.EventDestination.MatchingEventTypes do
        begin
          Request.Parameters.Add('EventDestination' + '.' + 'MatchingEventTypes' + '.' + 'member' + '.' + IntToStr(PublicRequestEventDestinationlistValueIndex), TStringUtils.Fromstring(PublicRequestEventDestinationlistValue));
          Inc(PublicRequestEventDestinationlistValueIndex);
        end;
      end;
      if PublicRequest.EventDestination.IsSetName then
        Request.Parameters.Add('EventDestination' + '.' + 'Name', TStringUtils.Fromstring(PublicRequest.EventDestination.Name));
      if PublicRequest.EventDestination.IsSetSNSDestination then
        if PublicRequest.EventDestination.SNSDestination.IsSetTopicARN then
          Request.Parameters.Add('EventDestination' + '.' + 'SNSDestination' + '.' + 'TopicARN', TStringUtils.Fromstring(PublicRequest.EventDestination.SNSDestination.TopicARN));
    end;
  end;
  Result := Request;
end;

class constructor TUpdateConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TUpdateConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TUpdateConfigurationSetEventDestinationRequestMarshaller.Instance: IUpdateConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
