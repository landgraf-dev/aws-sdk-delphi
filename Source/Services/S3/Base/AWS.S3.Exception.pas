unit AWS.S3.Exception;

interface

uses
  System.SysUtils,
  AWS.Runtime.Exceptions;

type
  EAmazonS3Exception = class(EAmazonServiceException)
  private
    FRegion: string;
    FAmazonCloudFrontId: string;
    FAmazonId2: string;
    FResponseBody: string;
  public
    constructor Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
      const AErrorCode, ARequestId: string; AStatusCode: Integer; const AAmazonId2: string); overload;
    constructor Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
      const AErrorCode, ARequestId: string; AStatusCode: Integer; const AAmazonId2, AAmazonCfId: string); overload;
    property Region: string read FRegion write FRegion;
    property AmazonCloudFrontId: string read FAmazonCloudFrontId write FAmazonCloudFrontId;
    property AmazonId2: string read FAmazonId2 write FAmazonId2;
    property ResponseBody: string read FResponseBody write FResponseBody;
  end;
  
implementation

{ EAmazonS3Exception }

constructor EAmazonS3Exception.Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
  const AErrorCode, ARequestId: string; AStatusCode: Integer; const AAmazonId2: string);
begin
  inherited Create(AMessage, AInnerException, AErrorType, AErrorCode, ARequestId, AStatusCode);
  AmazonId2 := AAmazonId2;
end;

constructor EAmazonS3Exception.Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
  const AErrorCode, ARequestId: string; AStatusCode: Integer; const AAmazonId2, AAmazonCfId: string);
begin
  inherited Create(AMessage, AInnerException, AErrorType, AErrorCode, ARequestId, AStatusCode);
  AmazonId2 := AAmazonId2;
  AmazonCloudFrontId := AAmazonCfId;
end;

end.
