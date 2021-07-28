unit AWS.SES.Transform.CreateConfigurationSetEventDestinationRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateConfigurationSetEventDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateConfigurationSetEventDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateConfigurationSetEventDestinationRequest>, ICreateConfigurationSetEventDestinationRequestMarshaller)
  strict private
    class var FInstance: ICreateConfigurationSetEventDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateConfigurationSetEventDestinationRequest): IRequest; overload;
    class function Instance: ICreateConfigurationSetEventDestinationRequestMarshaller; static;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationRequestMarshaller }

function TCreateConfigurationSetEventDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateConfigurationSetEventDestinationRequest(AInput));
end;

function TCreateConfigurationSetEventDestinationRequestMarshaller.Marshall(PublicRequest: TCreateConfigurationSetEventDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateConfigurationSetEventDestination');
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

class constructor TCreateConfigurationSetEventDestinationRequestMarshaller.Create;
begin
  FInstance := TCreateConfigurationSetEventDestinationRequestMarshaller.Create;
end;

class function TCreateConfigurationSetEventDestinationRequestMarshaller.Instance: ICreateConfigurationSetEventDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
