unit AWS.SSM.Transform.DescribeEffectiveInstanceAssociationsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeEffectiveInstanceAssociationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.InstanceAssociationUnmarshaller, 
  AWS.SSM.Model.InstanceAssociation, 
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
  IDescribeEffectiveInstanceAssociationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeEffectiveInstanceAssociationsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeEffectiveInstanceAssociationsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeEffectiveInstanceAssociationsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeEffectiveInstanceAssociationsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeEffectiveInstanceAssociationsResponseUnmarshaller }

function TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeEffectiveInstanceAssociationsResponse;
begin
  Response := TDescribeEffectiveInstanceAssociationsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Associations', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInstanceAssociation, IInstanceAssociationUnmarshaller>.JsonNew(TInstanceAssociationUnmarshaller.JsonInstance);
        Response.Associations := Unmarshaller.Unmarshall(AContext);
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

function TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.Create;
end;

class function TDescribeEffectiveInstanceAssociationsResponseUnmarshaller.Instance: IDescribeEffectiveInstanceAssociationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
