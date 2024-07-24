unit AWS.SSM.Transform.DescribeDocumentPermissionResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeDocumentPermissionResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.AccountSharingInfoUnmarshaller, 
  AWS.SSM.Model.AccountSharingInfo, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidDocumentOperationExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidPermissionTypeExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeDocumentPermissionResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeDocumentPermissionResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeDocumentPermissionResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeDocumentPermissionResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeDocumentPermissionResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeDocumentPermissionResponseUnmarshaller }

function TDescribeDocumentPermissionResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeDocumentPermissionResponse;
begin
  Response := TDescribeDocumentPermissionResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AccountIds', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        Response.AccountIds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AccountSharingInfoList', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAccountSharingInfo, IAccountSharingInfoUnmarshaller>.JsonNew(TAccountSharingInfoUnmarshaller.JsonInstance);
        Response.AccountSharingInfoList := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeDocumentPermissionResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidPermissionTypeException' then
          Exit(TInvalidPermissionTypeExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeDocumentPermissionResponseUnmarshaller.Create;
begin
  FInstance := TDescribeDocumentPermissionResponseUnmarshaller.Create;
end;

class function TDescribeDocumentPermissionResponseUnmarshaller.Instance: IDescribeDocumentPermissionResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
