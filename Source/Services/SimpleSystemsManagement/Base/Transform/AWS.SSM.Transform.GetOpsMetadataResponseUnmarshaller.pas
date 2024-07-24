unit AWS.SSM.Transform.GetOpsMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetOpsMetadataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.MetadataValueUnmarshaller, 
  AWS.SSM.Model.MetadataValue, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataNotFoundExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetOpsMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetOpsMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetOpsMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IGetOpsMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetOpsMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TGetOpsMetadataResponseUnmarshaller }

function TGetOpsMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetOpsMetadataResponse;
begin
  Response := TGetOpsMetadataResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Metadata', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TMetadataValue, IJsonStringUnmarshaller, IMetadataValueUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TMetadataValueUnmarshaller.JsonInstance);
        Response.Metadata := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ResourceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetOpsMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'OpsMetadataInvalidArgumentException' then
          Exit(TOpsMetadataInvalidArgumentExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'OpsMetadataNotFoundException' then
          Exit(TOpsMetadataNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetOpsMetadataResponseUnmarshaller.Create;
begin
  FInstance := TGetOpsMetadataResponseUnmarshaller.Create;
end;

class function TGetOpsMetadataResponseUnmarshaller.Instance: IGetOpsMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
