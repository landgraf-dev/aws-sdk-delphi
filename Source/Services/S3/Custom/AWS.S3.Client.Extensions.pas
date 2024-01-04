unit AWS.S3.Client.Extensions;

interface

uses
  AWS.Runtime.Client,
  AWS.S3.Model.GetPresignedUrlRequest;

type
  TAmazonS3ClientExtensions = class
  public
    class function GetPresignedUrl(Client: IAmazonService; Request: IGetPresignedUrlRequest): string; static;
  end;

implementation

{ TAmazonS3ClientExtensions }


{ TAmazonS3ClientExtensions }

class function TAmazonS3ClientExtensions.GetPresignedUrl(Client: IAmazonService; Request: IGetPresignedUrlRequest): string;
begin

end;

end.
