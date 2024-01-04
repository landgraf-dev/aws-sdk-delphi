unit AWS.S3.Internal.S3Signer;

interface

uses
  AWS.Auth.Signer,
  AWS.Auth.S3Signer,
  AWS.Internal.Request,
  AWS.RegionEndpoint,
  AWS.Runtime.ClientConfig,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.AmazonS3Uri;

type
  TInternalS3Signer = class(TAbstractAWSSigner)
  strict private
    FS3Signer: TS3Signer;
    procedure RegionDetectionUpdater(Request: IRequest);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); override;
    class procedure SignRequest(ARequest: IRequest; const AAWSAccessKeyId, AAWSSecretAccessKey: string); static;
    function Protocol: TClientProtocol; override;
  end;

implementation

{ TInternalS3Signer }

constructor TInternalS3Signer.Create;
begin
  FS3Signer := TS3Signer.Create(TAWSConfigsS3.UseSignatureVersion4, RegionDetectionUpdater);
end;

destructor TInternalS3Signer.Destroy;
begin
  FS3Signer.Free;
  inherited;
end;

function TInternalS3Signer.Protocol: TClientProtocol;
begin
  Result := FS3Signer.Protocol;
end;

procedure TInternalS3Signer.RegionDetectionUpdater(Request: IRequest);
var
  s3Uri: TAmazonS3Uri;
begin
  s3Uri := nil;
  try
    if TAmazonS3Uri.TryParseAmazonS3Uri(Request.Endpoint, s3Uri) then
    begin
      if s3Uri.Bucket <> '' then
      begin
        var cachedRegion: IRegionEndpointEx;
        {TODO: support this later}
  //      if TBucketRegionDetector.BucketRegionCache.TryGetValue(s3Uri.Bucket, cachedRegion) then
  //        Request.AlternateEndpoint := cachedRegion;
      end;
    end;
  finally
    s3Uri.Free;
  end;
end;

procedure TInternalS3Signer.Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId,
  AAWSSecretAccessKey: string);
begin
  FS3Signer.Sign(ARequest, AClientConfig, AAwsAccessKeyId, AAwsSecretAccessKey);
end;

class procedure TInternalS3Signer.SignRequest(ARequest: IRequest; const AAWSAccessKeyId, AAWSSecretAccessKey: string);
begin
  TS3Signer.SignRequest(ARequest, AAWSAccessKeyId, AAWSSecretAccessKey);
end;

end.
