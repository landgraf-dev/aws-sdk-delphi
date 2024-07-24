unit AWS.SSM.Transform.GetDeployablePatchSnapshotForInstanceResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedFeatureRequiredExceptionUnmarshaller, 
  AWS.SSM.Transform.UnsupportedOperatingSystemExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetDeployablePatchSnapshotForInstanceResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDeployablePatchSnapshotForInstanceResponseUnmarshaller)
  strict private
    class var FInstance: IGetDeployablePatchSnapshotForInstanceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDeployablePatchSnapshotForInstanceResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller }

function TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDeployablePatchSnapshotForInstanceResponse;
begin
  Response := TGetDeployablePatchSnapshotForInstanceResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InstanceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.InstanceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Product', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.Product := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SnapshotDownloadUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SnapshotDownloadUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SnapshotId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.SnapshotId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'UnsupportedFeatureRequiredException' then
          Exit(TUnsupportedFeatureRequiredExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.Create;
begin
  FInstance := TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.Create;
end;

class function TGetDeployablePatchSnapshotForInstanceResponseUnmarshaller.Instance: IGetDeployablePatchSnapshotForInstanceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
