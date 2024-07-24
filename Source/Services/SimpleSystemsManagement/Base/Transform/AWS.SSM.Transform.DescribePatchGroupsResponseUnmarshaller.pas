unit AWS.SSM.Transform.DescribePatchGroupsResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribePatchGroupsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.PatchGroupPatchBaselineMappingUnmarshaller, 
  AWS.SSM.Model.PatchGroupPatchBaselineMapping, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribePatchGroupsResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribePatchGroupsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribePatchGroupsResponseUnmarshaller)
  strict private
    class var FInstance: IDescribePatchGroupsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribePatchGroupsResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribePatchGroupsResponseUnmarshaller }

function TDescribePatchGroupsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribePatchGroupsResponse;
begin
  Response := TDescribePatchGroupsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Mappings', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPatchGroupPatchBaselineMapping, IPatchGroupPatchBaselineMappingUnmarshaller>.JsonNew(TPatchGroupPatchBaselineMappingUnmarshaller.JsonInstance);
        Response.Mappings := Unmarshaller.Unmarshall(AContext);
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

function TDescribePatchGroupsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TDescribePatchGroupsResponseUnmarshaller.Create;
begin
  FInstance := TDescribePatchGroupsResponseUnmarshaller.Create;
end;

class function TDescribePatchGroupsResponseUnmarshaller.Instance: IDescribePatchGroupsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
