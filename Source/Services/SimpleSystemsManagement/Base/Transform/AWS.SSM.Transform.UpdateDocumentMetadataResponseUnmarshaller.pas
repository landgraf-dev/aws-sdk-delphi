unit AWS.SSM.Transform.UpdateDocumentMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateDocumentMetadataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentOperationExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentVersionExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateDocumentMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateDocumentMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateDocumentMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateDocumentMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateDocumentMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateDocumentMetadataResponseUnmarshaller }

function TUpdateDocumentMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateDocumentMetadataResponse;
begin
  Response := TUpdateDocumentMetadataResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateDocumentMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentOperationException' then
          Exit(TInvalidDocumentOperationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentVersionException' then
          Exit(TInvalidDocumentVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateDocumentMetadataResponseUnmarshaller.Create;
begin
  FInstance := TUpdateDocumentMetadataResponseUnmarshaller.Create;
end;

class function TUpdateDocumentMetadataResponseUnmarshaller.Instance: IUpdateDocumentMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
