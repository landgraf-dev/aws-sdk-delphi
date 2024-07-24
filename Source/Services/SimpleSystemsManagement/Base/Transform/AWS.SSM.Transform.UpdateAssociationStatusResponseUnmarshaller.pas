unit AWS.SSM.Transform.UpdateAssociationStatusResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.UpdateAssociationStatusResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.AssociationDescriptionUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AssociationDoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.StatusUnchangedExceptionUnmarshaller, 
  AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IUpdateAssociationStatusResponseUnmarshaller = IResponseUnmarshaller;
  
  TUpdateAssociationStatusResponseUnmarshaller = class(TJsonResponseUnmarshaller, IUpdateAssociationStatusResponseUnmarshaller)
  strict private
    class var FInstance: IUpdateAssociationStatusResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IUpdateAssociationStatusResponseUnmarshaller; static;
  end;
  
implementation

{ TUpdateAssociationStatusResponseUnmarshaller }

function TUpdateAssociationStatusResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TUpdateAssociationStatusResponse;
begin
  Response := TUpdateAssociationStatusResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('AssociationDescription', TargetDepth) then
      begin
        var Unmarshaller := TAssociationDescriptionUnmarshaller.JsonInstance;
        Response.AssociationDescription := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TUpdateAssociationStatusResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'AssociationDoesNotExistException' then
          Exit(TAssociationDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'StatusUnchangedException' then
          Exit(TStatusUnchangedExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TUpdateAssociationStatusResponseUnmarshaller.Create;
begin
  FInstance := TUpdateAssociationStatusResponseUnmarshaller.Create;
end;

class function TUpdateAssociationStatusResponseUnmarshaller.Instance: IUpdateAssociationStatusResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
