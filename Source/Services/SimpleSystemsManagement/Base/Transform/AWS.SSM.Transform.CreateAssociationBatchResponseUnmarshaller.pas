unit AWS.SSM.Transform.CreateAssociationBatchResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.CreateAssociationBatchResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.FailedCreateAssociationUnmarshaller, 
  AWS.SSM.Model.FailedCreateAssociation, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.AssociationDescriptionUnmarshaller, 
  AWS.SSM.Model.AssociationDescription, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AssociationLimitExceededExceptionUnmarshaller, 
  AWS.SSM.Transform.DuplicateInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidOutputLocationExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidParametersExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidScheduleExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTargetExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidTargetMapsExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedPlatformTypeExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  ICreateAssociationBatchResponseUnmarshaller = IResponseUnmarshaller;
  
  TCreateAssociationBatchResponseUnmarshaller = class(TJsonResponseUnmarshaller, ICreateAssociationBatchResponseUnmarshaller)
  strict private
    class var FInstance: ICreateAssociationBatchResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: ICreateAssociationBatchResponseUnmarshaller; static;
  end;
  
implementation

{ TCreateAssociationBatchResponseUnmarshaller }

function TCreateAssociationBatchResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TCreateAssociationBatchResponse;
begin
  Response := TCreateAssociationBatchResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Failed', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TFailedCreateAssociation, IFailedCreateAssociationUnmarshaller>.JsonNew(TFailedCreateAssociationUnmarshaller.JsonInstance);
        Response.Failed := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Successful', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAssociationDescription, IAssociationDescriptionUnmarshaller>.JsonNew(TAssociationDescriptionUnmarshaller.JsonInstance);
        Response.Successful := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TCreateAssociationBatchResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AssociationLimitExceededException' then
          Exit(TAssociationLimitExceededExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'DuplicateInstanceIdException' then
          Exit(TDuplicateInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentVersionException' then
          Exit(TInvalidDocumentVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidOutputLocationException' then
          Exit(TInvalidOutputLocationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParametersException' then
          Exit(TInvalidParametersExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidScheduleException' then
          Exit(TInvalidScheduleExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTargetException' then
          Exit(TInvalidTargetExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidTargetMapsException' then
          Exit(TInvalidTargetMapsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedPlatformTypeException' then
          Exit(TUnsupportedPlatformTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TCreateAssociationBatchResponseUnmarshaller.Create;
begin
  FInstance := TCreateAssociationBatchResponseUnmarshaller.Create;
end;

class function TCreateAssociationBatchResponseUnmarshaller.Instance: ICreateAssociationBatchResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
