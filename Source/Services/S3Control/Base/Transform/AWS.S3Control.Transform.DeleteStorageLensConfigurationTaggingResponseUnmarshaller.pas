unit AWS.S3Control.Transform.DeleteStorageLensConfigurationTaggingResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse, 
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
  IDeleteStorageLensConfigurationTaggingResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteStorageLensConfigurationTaggingResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteStorageLensConfigurationTaggingResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteStorageLensConfigurationTaggingResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteStorageLensConfigurationTaggingResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteStorageLensConfigurationTaggingResponseUnmarshaller }

function TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteStorageLensConfigurationTaggingResponse;
begin
  Response := TDeleteStorageLensConfigurationTaggingResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.Create;
begin
  FInstance := TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.Create;
end;

class function TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.Instance: IDeleteStorageLensConfigurationTaggingResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
