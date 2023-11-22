unit AWS.S3Control.Transform.PutAccessPointConfigurationForObjectLambdaRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer;

type
  IPutAccessPointConfigurationForObjectLambdaRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutAccessPointConfigurationForObjectLambdaRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutAccessPointConfigurationForObjectLambdaRequest>, IPutAccessPointConfigurationForObjectLambdaRequestMarshaller)
  strict private
    class var FInstance: IPutAccessPointConfigurationForObjectLambdaRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutAccessPointConfigurationForObjectLambdaRequest): IRequest; overload;
    class function Instance: IPutAccessPointConfigurationForObjectLambdaRequestMarshaller; static;
  end;
  
implementation

{ TPutAccessPointConfigurationForObjectLambdaRequestMarshaller }

function TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutAccessPointConfigurationForObjectLambdaRequest(AInput));
end;

function TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Marshall(PublicRequest: TPutAccessPointConfigurationForObjectLambdaRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetName then
    raise EAmazonS3ControlException.Create('Request object does not have required field Name set');
  Request.AddPathResource('{name}', TStringUtils.Fromstring(PublicRequest.Name));
  Request.ResourcePath := '/v20180820/accesspointforobjectlambda/{name}/configuration';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutAccessPointConfigurationForObjectLambdaRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      if PublicRequest.Configuration <> nil then
      begin
        XmlWriter.WriteStartElement('Configuration', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        var PublicRequestConfigurationAllowedFeatures := PublicRequest.Configuration.AllowedFeatures;
        if (PublicRequestConfigurationAllowedFeatures <> nil) and (PublicRequestConfigurationAllowedFeatures.Count > 0) then
        begin
          XmlWriter.WriteStartElement('AllowedFeatures', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          for var PublicRequestConfigurationAllowedFeaturesValue in PublicRequestConfigurationAllowedFeatures do
          begin
            XmlWriter.WriteStartElement('AllowedFeature', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            XmlWriter.WriteValue(PublicRequestConfigurationAllowedFeaturesValue);
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.Configuration.IsSetCloudWatchMetricsEnabled then
          XmlWriter.WriteElementString('CloudWatchMetricsEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.Configuration.CloudWatchMetricsEnabled));
        if PublicRequest.Configuration.IsSetSupportingAccessPoint then
          XmlWriter.WriteElementString('SupportingAccessPoint', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.Configuration.SupportingAccessPoint));
        var PublicRequestConfigurationTransformationConfigurations := PublicRequest.Configuration.TransformationConfigurations;
        if (PublicRequestConfigurationTransformationConfigurations <> nil) and (PublicRequestConfigurationTransformationConfigurations.Count > 0) then
        begin
          XmlWriter.WriteStartElement('TransformationConfigurations', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          for var PublicRequestConfigurationTransformationConfigurationsValue in PublicRequestConfigurationTransformationConfigurations do
            if PublicRequestConfigurationTransformationConfigurationsValue <> nil then
            begin
              XmlWriter.WriteStartElement('TransformationConfiguration', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              var PublicRequestConfigurationTransformationConfigurationsValueActions := PublicRequestConfigurationTransformationConfigurationsValue.Actions;
              if (PublicRequestConfigurationTransformationConfigurationsValueActions <> nil) and (PublicRequestConfigurationTransformationConfigurationsValueActions.Count > 0) then
              begin
                XmlWriter.WriteStartElement('Actions', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                for var PublicRequestConfigurationTransformationConfigurationsValueActionsValue in PublicRequestConfigurationTransformationConfigurationsValueActions do
                begin
                  XmlWriter.WriteStartElement('Action', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                  XmlWriter.WriteValue(PublicRequestConfigurationTransformationConfigurationsValueActionsValue);
                  XmlWriter.WriteEndElement;
                end;
                XmlWriter.WriteEndElement;
              end;
              if PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation <> nil then
              begin
                XmlWriter.WriteStartElement('ContentTransformation', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation.AwsLambda <> nil then
                begin
                  XmlWriter.WriteStartElement('AwsLambda', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                  if PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation.AwsLambda.IsSetFunctionArn then
                    XmlWriter.WriteElementString('FunctionArn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation.AwsLambda.FunctionArn));
                  if PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation.AwsLambda.IsSetFunctionPayload then
                    XmlWriter.WriteElementString('FunctionPayload', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestConfigurationTransformationConfigurationsValue.ContentTransformation.AwsLambda.FunctionPayload));
                  XmlWriter.WriteEndElement;
                end;
                XmlWriter.WriteEndElement;
              end;
              XmlWriter.WriteEndElement;
            end;
          XmlWriter.WriteEndElement;
        end;
        XmlWriter.WriteEndElement;
      end;
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers['Content-Type'] := 'application/xml';
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers[Amazon.Util.HeaderKeys.XAmzApiVersion] := '2018-08-20';
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise AmazonS3ControlException.CreateFmt('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Create;
begin
  FInstance := TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Create;
end;

class function TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Instance: IPutAccessPointConfigurationForObjectLambdaRequestMarshaller;
begin
  Result := FInstance;
end;

end.
