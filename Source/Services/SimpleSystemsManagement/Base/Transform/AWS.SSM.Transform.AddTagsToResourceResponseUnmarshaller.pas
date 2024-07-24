unit AWS.SSM.Transform.AddTagsToResourceResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.AddTagsToResourceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceTypeExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyTagsErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IAddTagsToResourceResponseUnmarshaller = IResponseUnmarshaller;
  
  TAddTagsToResourceResponseUnmarshaller = class(TJsonResponseUnmarshaller, IAddTagsToResourceResponseUnmarshaller)
  strict private
    class var FInstance: IAddTagsToResourceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IAddTagsToResourceResponseUnmarshaller; static;
  end;
  
implementation

{ TAddTagsToResourceResponseUnmarshaller }

function TAddTagsToResourceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAddTagsToResourceResponse;
begin
  Response := TAddTagsToResourceResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TAddTagsToResourceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceIdException' then
          Exit(TInvalidResourceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceTypeException' then
          Exit(TInvalidResourceTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyTagsErrorException' then
          Exit(TTooManyTagsErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyUpdatesException' then
          Exit(TTooManyUpdatesExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleSystemsManagementException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TAddTagsToResourceResponseUnmarshaller.Create;
begin
  FInstance := TAddTagsToResourceResponseUnmarshaller.Create;
end;

class function TAddTagsToResourceResponseUnmarshaller.Instance: IAddTagsToResourceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
