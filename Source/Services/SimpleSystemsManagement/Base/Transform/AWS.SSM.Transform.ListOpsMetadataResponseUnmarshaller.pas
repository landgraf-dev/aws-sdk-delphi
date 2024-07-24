unit AWS.SSM.Transform.ListOpsMetadataResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ListOpsMetadataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataUnmarshaller, 
  AWS.SSM.Model.OpsMetadata, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IListOpsMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TListOpsMetadataResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListOpsMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IListOpsMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListOpsMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TListOpsMetadataResponseUnmarshaller }

function TListOpsMetadataResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListOpsMetadataResponse;
begin
  Response := TListOpsMetadataResponse.Create;
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
      if AContext.TestExpression('OpsMetadataList', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TOpsMetadata, IOpsMetadataUnmarshaller>.JsonNew(TOpsMetadataUnmarshaller.JsonInstance);
        Response.OpsMetadataList := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListOpsMetadataResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListOpsMetadataResponseUnmarshaller.Create;
begin
  FInstance := TListOpsMetadataResponseUnmarshaller.Create;
end;

class function TListOpsMetadataResponseUnmarshaller.Instance: IListOpsMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
