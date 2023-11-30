unit AWS.S3Control.Transform.PutStorageLensConfigurationTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IPutStorageLensConfigurationTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutStorageLensConfigurationTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IPutStorageLensConfigurationTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IPutStorageLensConfigurationTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IPutStorageLensConfigurationTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TPutStorageLensConfigurationTaggingResponseUnmarshaller }

function TPutStorageLensConfigurationTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutStorageLensConfigurationTaggingResponse;
begin
  Response := TPutStorageLensConfigurationTaggingResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TPutStorageLensConfigurationTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TPutStorageLensConfigurationTaggingResponseUnmarshaller.Create;
begin
  FInstance := TPutStorageLensConfigurationTaggingResponseUnmarshaller.Create;
end;

class function TPutStorageLensConfigurationTaggingResponseUnmarshaller.Instance: IPutStorageLensConfigurationTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
