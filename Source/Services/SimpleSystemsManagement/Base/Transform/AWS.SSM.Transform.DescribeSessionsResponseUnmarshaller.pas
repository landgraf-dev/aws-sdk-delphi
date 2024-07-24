unit AWS.SSM.Transform.DescribeSessionsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeSessionsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.SessionUnmarshaller, 
  AWS.SSM.Model.Session, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidFilterKeyExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeSessionsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeSessionsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeSessionsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeSessionsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeSessionsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeSessionsResponseUnmarshaller }

function TDescribeSessionsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeSessionsResponse;
begin
  Response := TDescribeSessionsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Sessions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSession, ISessionUnmarshaller>.JsonNew(TSessionUnmarshaller.JsonInstance);
        Response.Sessions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeSessionsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidFilterKeyException' then
          Exit(TInvalidFilterKeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeSessionsResponseUnmarshaller.Create;
begin
  FInstance := TDescribeSessionsResponseUnmarshaller.Create;
end;

class function TDescribeSessionsResponseUnmarshaller.Instance: IDescribeSessionsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
