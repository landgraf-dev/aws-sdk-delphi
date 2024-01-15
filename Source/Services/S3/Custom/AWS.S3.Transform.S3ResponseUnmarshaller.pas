unit AWS.S3.Transform.S3ResponseUnmarshaller;

interface

uses
  System.Classes, System.SysUtils,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Exceptions,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.S3.Exception,
  AWS.S3.Transform.S3UnmarshallerContext,
  AWS.S3.Transform.S3ErrorResponseUnmarshaller,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Transform.UnmarshallerContext;

type
  TS3ResponseUnmarshaller = class(TXmlResponseUnmarshaller)
  strict protected
    function ConstructUnmarshallerContext(AResponseStream: TStream; AMaintainResponseBody: Boolean;
      AResponse: IWebResponseData; AIsException: Boolean): TUnmarshallerContext; override;
  public
    function Unmarshall(AInput: TUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AInput: TXmlUnmarshallerContext; AInnerException: Exception;
      AStatusCode: Integer): EAmazonServiceException; overload; override;
  end;

implementation

{ TS3ResponseUnmarshaller }

function TS3ResponseUnmarshaller.ConstructUnmarshallerContext(AResponseStream: TStream; AMaintainResponseBody: Boolean;
  AResponse: IWebResponseData; AIsException: Boolean): TUnmarshallerContext;
begin
  Result := TS3UnmarshallerContext.Create(AResponseStream, AMaintainResponseBody, AResponse, AIsException);
end;

function TS3ResponseUnmarshaller.Unmarshall(AInput: TUnmarshallerContext): TAmazonWebServiceResponse;
begin
  // Unmarshall response
  var response := inherited Unmarshall(AInput);

  // Make sure ResponseMetadata is set
  if response.ResponseMetadata = nil then
    response.ResponseMetadata := TResponseMetadata.Create;

  // Populate AmazonId2
  response.ResponseMetadata.Metadata.Add(
    THeaderKeys.XAmzId2Header, AInput.ResponseData.GetHeaderValue(THeaderKeys.XAmzId2Header));

  // Populate X-Amz-Cf-Id for S3 accelerate responses
  if AInput.ResponseData.IsHeaderPresent(THeaderKeys.XAmzCloudFrontIdHeader) then
    response.ResponseMetadata.Metadata.Add(
      THeaderKeys.XAmzCloudFrontIdHeader, AInput.ResponseData.GetHeaderValue(THeaderKeys.XAmzCloudFrontIdHeader));

  Result := response;
end;

function TS3ResponseUnmarshaller.UnmarshallException(AInput: TXmlUnmarshallerContext; AInnerException: Exception;
  AStatusCode: Integer): EAmazonServiceException;
begin
  var errorResponse := TS3ErrorResponseUnmarshaller.Instance.Unmarshall(AInput);
  var s3Exception := EAmazonS3Exception.Create(errorResponse.Message, AInnerException, errorResponse.ErrorType,
    errorResponse.Code, errorResponse.RequestId, AStatusCode, errorResponse.Id2, errorResponse.AmzCfId);
  s3Exception.Region := errorResponse.Region;

  if errorResponse.ParsingException <> nil then
  begin
    var body := AInput.ResponseBody;
    if not string.IsNullOrEmpty(body) then
      s3Exception.ResponseBody := body;
  end;

  Result := s3Exception;
end;

end.
