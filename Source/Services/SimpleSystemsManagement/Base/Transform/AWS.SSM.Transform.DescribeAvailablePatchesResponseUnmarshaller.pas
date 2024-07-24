unit AWS.SSM.Transform.DescribeAvailablePatchesResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeAvailablePatchesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.PatchUnmarshaller, 
  AWS.SSM.Model.Patch, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeAvailablePatchesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeAvailablePatchesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeAvailablePatchesResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeAvailablePatchesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeAvailablePatchesResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeAvailablePatchesResponseUnmarshaller }

function TDescribeAvailablePatchesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeAvailablePatchesResponse;
begin
  Response := TDescribeAvailablePatchesResponse.Create;
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
      if AContext.TestExpression('Patches', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPatch, IPatchUnmarshaller>.JsonNew(TPatchUnmarshaller.JsonInstance);
        Response.Patches := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeAvailablePatchesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribeAvailablePatchesResponseUnmarshaller.Create;
begin
  FInstance := TDescribeAvailablePatchesResponseUnmarshaller.Create;
end;

class function TDescribeAvailablePatchesResponseUnmarshaller.Instance: IDescribeAvailablePatchesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
