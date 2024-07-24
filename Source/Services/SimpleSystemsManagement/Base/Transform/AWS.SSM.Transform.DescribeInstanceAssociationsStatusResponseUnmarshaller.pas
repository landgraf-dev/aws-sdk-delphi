unit AWS.SSM.Transform.DescribeInstanceAssociationsStatusResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeInstanceAssociationsStatusResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.InstanceAssociationStatusInfoUnmarshaller, 
  AWS.SSM.Model.InstanceAssociationStatusInfo, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidInstanceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeInstanceAssociationsStatusResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeInstanceAssociationsStatusResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeInstanceAssociationsStatusResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeInstanceAssociationsStatusResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeInstanceAssociationsStatusResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeInstanceAssociationsStatusResponseUnmarshaller }

function TDescribeInstanceAssociationsStatusResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeInstanceAssociationsStatusResponse;
begin
  Response := TDescribeInstanceAssociationsStatusResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InstanceAssociationStatusInfos', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInstanceAssociationStatusInfo, IInstanceAssociationStatusInfoUnmarshaller>.JsonNew(TInstanceAssociationStatusInfoUnmarshaller.JsonInstance);
        Response.InstanceAssociationStatusInfos := Unmarshaller.Unmarshall(AContext);
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

function TDescribeInstanceAssociationsStatusResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidInstanceIdException' then
          Exit(TInvalidInstanceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeInstanceAssociationsStatusResponseUnmarshaller.Create;
begin
  FInstance := TDescribeInstanceAssociationsStatusResponseUnmarshaller.Create;
end;

class function TDescribeInstanceAssociationsStatusResponseUnmarshaller.Instance: IDescribeInstanceAssociationsStatusResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
