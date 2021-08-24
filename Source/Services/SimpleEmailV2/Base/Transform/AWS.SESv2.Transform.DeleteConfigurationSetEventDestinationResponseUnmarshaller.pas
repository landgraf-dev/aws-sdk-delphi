unit AWS.SESv2.Transform.DeleteConfigurationSetEventDestinationResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IDeleteConfigurationSetEventDestinationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteConfigurationSetEventDestinationResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteConfigurationSetEventDestinationResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationResponseUnmarshaller }

function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteConfigurationSetEventDestinationResponse;
begin
  Response := TDeleteConfigurationSetEventDestinationResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TJsonUnmarshallerContext;
begin
  ErrorResponse := TJsonErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TJsonUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceV2Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Create;
begin
  FInstance := TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Create;
end;

class function TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Instance: IDeleteConfigurationSetEventDestinationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
