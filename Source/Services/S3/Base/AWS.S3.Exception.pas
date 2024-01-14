unit AWS.S3.Exception;

interface

uses
  AWS.Runtime.Exceptions;

type
  EAmazonS3Exception = class(EAmazonServiceException)
  private
    FRegion: string;
  public
    property Region: string read FRegion write FRegion;
  end;
  
implementation

end.
