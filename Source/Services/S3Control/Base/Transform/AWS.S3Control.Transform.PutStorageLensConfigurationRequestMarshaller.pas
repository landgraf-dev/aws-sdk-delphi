unit AWS.S3Control.Transform.PutStorageLensConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3Control.Model.PutStorageLensConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3Control.Exception, 
  AWS.Internal.StringUtils, 
  System.Classes, 
  Bcl.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IPutStorageLensConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutStorageLensConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutStorageLensConfigurationRequest>, IPutStorageLensConfigurationRequestMarshaller)
  strict private
    class var FInstance: IPutStorageLensConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutStorageLensConfigurationRequest): IRequest; overload;
    class function Instance: IPutStorageLensConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TPutStorageLensConfigurationRequestMarshaller }

function TPutStorageLensConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutStorageLensConfigurationRequest(AInput));
end;

function TPutStorageLensConfigurationRequestMarshaller.Marshall(PublicRequest: TPutStorageLensConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3Control');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetAccountId then
    Request.Headers.Add('x-amz-account-id', PublicRequest.AccountId);
  if not PublicRequest.IsSetConfigId then
    raise EAmazonS3ControlException.Create('Request object does not have required field ConfigId set');
  Request.AddPathResource('{storagelensid}', TStringUtils.Fromstring(PublicRequest.ConfigId));
  Request.ResourcePath := '/v20180820/storagelens/{storagelensid}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('PutStorageLensConfigurationRequest', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
      if PublicRequest.StorageLensConfiguration <> nil then
      begin
        XmlWriter.WriteStartElement('StorageLensConfiguration', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        if PublicRequest.StorageLensConfiguration.AccountLevel <> nil then
        begin
          XmlWriter.WriteStartElement('AccountLevel', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.StorageLensConfiguration.AccountLevel.ActivityMetrics <> nil then
          begin
            XmlWriter.WriteStartElement('ActivityMetrics', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.StorageLensConfiguration.AccountLevel.ActivityMetrics.IsSetIsEnabled then
              XmlWriter.WriteElementString('IsEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.StorageLensConfiguration.AccountLevel.ActivityMetrics.IsEnabled));
            XmlWriter.WriteEndElement;
          end;
          if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel <> nil then
          begin
            XmlWriter.WriteStartElement('BucketLevel', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.ActivityMetrics <> nil then
            begin
              XmlWriter.WriteStartElement('ActivityMetrics', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.ActivityMetrics.IsSetIsEnabled then
                XmlWriter.WriteElementString('IsEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.ActivityMetrics.IsEnabled));
              XmlWriter.WriteEndElement;
            end;
            if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel <> nil then
            begin
              XmlWriter.WriteStartElement('PrefixLevel', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics <> nil then
              begin
                XmlWriter.WriteStartElement('StorageMetrics', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.IsSetIsEnabled then
                  XmlWriter.WriteElementString('IsEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.IsEnabled));
                if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria <> nil then
                begin
                  XmlWriter.WriteStartElement('SelectionCriteria', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                  if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.IsSetDelimiter then
                    XmlWriter.WriteElementString('Delimiter', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.Delimiter));
                  if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.IsSetMaxDepth then
                    XmlWriter.WriteElementString('MaxDepth', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromInteger(PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.MaxDepth));
                  if PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.IsSetMinStorageBytesPercentage then
                    XmlWriter.WriteElementString('MinStorageBytesPercentage', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromDouble(PublicRequest.StorageLensConfiguration.AccountLevel.BucketLevel.PrefixLevel.StorageMetrics.SelectionCriteria.MinStorageBytesPercentage));
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
        if PublicRequest.StorageLensConfiguration.AwsOrg <> nil then
        begin
          XmlWriter.WriteStartElement('AwsOrg', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.StorageLensConfiguration.AwsOrg.IsSetArn then
            XmlWriter.WriteElementString('Arn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.AwsOrg.Arn));
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.StorageLensConfiguration.DataExport <> nil then
        begin
          XmlWriter.WriteStartElement('DataExport', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination <> nil then
          begin
            XmlWriter.WriteStartElement('S3BucketDestination', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.IsSetAccountId then
              XmlWriter.WriteElementString('AccountId', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.AccountId));
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.IsSetArn then
              XmlWriter.WriteElementString('Arn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Arn));
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Encryption <> nil then
            begin
              XmlWriter.WriteStartElement('Encryption', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Encryption.SSEKMS <> nil then
              begin
                XmlWriter.WriteStartElement('SSE-KMS', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Encryption.SSEKMS.IsSetKeyId then
                  XmlWriter.WriteElementString('KeyId', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Encryption.SSEKMS.KeyId));
                XmlWriter.WriteEndElement;
              end;
              if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Encryption.SSES3 <> nil then
              begin
                XmlWriter.WriteStartElement('SSE-S3', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
                XmlWriter.WriteEndElement;
              end;
              XmlWriter.WriteEndElement;
            end;
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.IsSetFormat then
              XmlWriter.WriteElementString('Format', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Format.Value);
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.IsSetOutputSchemaVersion then
              XmlWriter.WriteElementString('OutputSchemaVersion', 'http://awss3control.amazonaws.com/doc/2018-08-20/', PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.OutputSchemaVersion.Value);
            if PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.IsSetPrefix then
              XmlWriter.WriteElementString('Prefix', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.DataExport.S3BucketDestination.Prefix));
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.StorageLensConfiguration.Exclude <> nil then
        begin
          XmlWriter.WriteStartElement('Exclude', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          var PublicRequestStorageLensConfigurationExcludeBuckets := PublicRequest.StorageLensConfiguration.Exclude.Buckets;
          if (PublicRequestStorageLensConfigurationExcludeBuckets <> nil) and (PublicRequestStorageLensConfigurationExcludeBuckets.Count > 0) then
          begin
            XmlWriter.WriteStartElement('Buckets', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestStorageLensConfigurationExcludeBucketsValue in PublicRequestStorageLensConfigurationExcludeBuckets do
            begin
              XmlWriter.WriteStartElement('Arn', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteValue(PublicRequestStorageLensConfigurationExcludeBucketsValue);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
          end;
          var PublicRequestStorageLensConfigurationExcludeRegions := PublicRequest.StorageLensConfiguration.Exclude.Regions;
          if (PublicRequestStorageLensConfigurationExcludeRegions <> nil) and (PublicRequestStorageLensConfigurationExcludeRegions.Count > 0) then
          begin
            XmlWriter.WriteStartElement('Regions', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestStorageLensConfigurationExcludeRegionsValue in PublicRequestStorageLensConfigurationExcludeRegions do
            begin
              XmlWriter.WriteStartElement('Region', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteValue(PublicRequestStorageLensConfigurationExcludeRegionsValue);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.StorageLensConfiguration.IsSetId then
          XmlWriter.WriteElementString('Id', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.Id));
        if PublicRequest.StorageLensConfiguration.Include <> nil then
        begin
          XmlWriter.WriteStartElement('Include', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
          var PublicRequestStorageLensConfigurationIncludeBuckets := PublicRequest.StorageLensConfiguration.Include.Buckets;
          if (PublicRequestStorageLensConfigurationIncludeBuckets <> nil) and (PublicRequestStorageLensConfigurationIncludeBuckets.Count > 0) then
          begin
            XmlWriter.WriteStartElement('Buckets', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestStorageLensConfigurationIncludeBucketsValue in PublicRequestStorageLensConfigurationIncludeBuckets do
            begin
              XmlWriter.WriteStartElement('Arn', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteValue(PublicRequestStorageLensConfigurationIncludeBucketsValue);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
          end;
          var PublicRequestStorageLensConfigurationIncludeRegions := PublicRequest.StorageLensConfiguration.Include.Regions;
          if (PublicRequestStorageLensConfigurationIncludeRegions <> nil) and (PublicRequestStorageLensConfigurationIncludeRegions.Count > 0) then
          begin
            XmlWriter.WriteStartElement('Regions', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            for var PublicRequestStorageLensConfigurationIncludeRegionsValue in PublicRequestStorageLensConfigurationIncludeRegions do
            begin
              XmlWriter.WriteStartElement('Region', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
              XmlWriter.WriteValue(PublicRequestStorageLensConfigurationIncludeRegionsValue);
              XmlWriter.WriteEndElement;
            end;
            XmlWriter.WriteEndElement;
          end;
          XmlWriter.WriteEndElement;
        end;
        if PublicRequest.StorageLensConfiguration.IsSetIsEnabled then
          XmlWriter.WriteElementString('IsEnabled', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.FromBoolean(PublicRequest.StorageLensConfiguration.IsEnabled));
        if PublicRequest.StorageLensConfiguration.IsSetStorageLensArn then
          XmlWriter.WriteElementString('StorageLensArn', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequest.StorageLensConfiguration.StorageLensArn));
        XmlWriter.WriteEndElement;
      end;
      var PublicRequestTags := PublicRequest.Tags;
      if (PublicRequestTags <> nil) and (PublicRequestTags.Count > 0) then
      begin
        XmlWriter.WriteStartElement('Tags', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
        for var PublicRequestTagsValue in PublicRequestTags do
          if PublicRequestTagsValue <> nil then
          begin
            XmlWriter.WriteStartElement('Tag', 'http://awss3control.amazonaws.com/doc/2018-08-20/');
            if PublicRequestTagsValue.IsSetKey then
              XmlWriter.WriteElementString('Key', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Key));
            if PublicRequestTagsValue.IsSetValue then
              XmlWriter.WriteElementString('Value', 'http://awss3control.amazonaws.com/doc/2018-08-20/', TStringUtils.Fromstring(PublicRequestTagsValue.Value));
            XmlWriter.WriteEndElement;
          end;
        XmlWriter.WriteEndElement;
      end;
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2018-08-20');
  finally
    XmlStream.Free;
  end;
  var hostPrefixLabels_AccountId := TStringUtils.Fromstring(PublicRequest.AccountId);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_AccountId) then
    raise EAmazonS3ControlException.Create('AccountId can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'AccountId.';
  Result := Request;
end;

class constructor TPutStorageLensConfigurationRequestMarshaller.Create;
begin
  FInstance := TPutStorageLensConfigurationRequestMarshaller.Create;
end;

class function TPutStorageLensConfigurationRequestMarshaller.Instance: IPutStorageLensConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
