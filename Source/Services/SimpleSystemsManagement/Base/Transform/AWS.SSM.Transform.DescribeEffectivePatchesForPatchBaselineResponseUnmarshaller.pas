unit AWS.SSM.Transform.DescribeEffectivePatchesForPatchBaselineResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.DescribeEffectivePatchesForPatchBaselineResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Transform.EffectivePatchUnmarshaller, 
  AWS.SSM.Model.EffectivePatch, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.DoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedOperatingSystemExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller }

function TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeEffectivePatchesForPatchBaselineResponse;
begin
  Response := TDescribeEffectivePatchesForPatchBaselineResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EffectivePatches', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TEffectivePatch, IEffectivePatchUnmarshaller>.JsonNew(TEffectivePatchUnmarshaller.JsonInstance);
        Response.EffectivePatches := Unmarshaller.Unmarshall(AContext);
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

function TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'DoesNotExistException' then
          Exit(TDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidResourceIdException' then
          Exit(TInvalidResourceIdExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'UnsupportedOperatingSystemException' then
          Exit(TUnsupportedOperatingSystemExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.Create;
begin
  FInstance := TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.Create;
end;

class function TDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller.Instance: IDescribeEffectivePatchesForPatchBaselineResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
