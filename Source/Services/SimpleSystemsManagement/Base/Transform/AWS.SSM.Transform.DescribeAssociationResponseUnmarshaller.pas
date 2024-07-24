unit AWS.SSM.Transform.DescribeAssociationResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeAssociationResponse, 
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
  AWS.SSM.Transform.InvalidAssociationVersionExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeAssociationResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeAssociationResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeAssociationResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeAssociationResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeAssociationResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeAssociationResponseUnmarshaller }

function TDescribeAssociationResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeAssociationResponse;
begin
  Response := TDescribeAssociationResponse.Create;
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

function TDescribeAssociationResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidAssociationVersionException' then
          Exit(TInvalidAssociationVersionExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidDocumentException' then
          Exit(TInvalidDocumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeAssociationResponseUnmarshaller.Create;
begin
  FInstance := TDescribeAssociationResponseUnmarshaller.Create;
end;

class function TDescribeAssociationResponseUnmarshaller.Instance: IDescribeAssociationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
