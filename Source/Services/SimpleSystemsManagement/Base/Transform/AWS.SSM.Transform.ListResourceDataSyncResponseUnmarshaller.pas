unit AWS.SSM.Transform.ListResourceDataSyncResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.ListResourceDataSyncResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncItemUnmarshaller, 
  AWS.SSM.Model.ResourceDataSyncItem, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncInvalidConfigurationExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IListResourceDataSyncResponseUnmarshaller = IResponseUnmarshaller;
  
  TListResourceDataSyncResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListResourceDataSyncResponseUnmarshaller)
  strict private
    class var FInstance: IListResourceDataSyncResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListResourceDataSyncResponseUnmarshaller; static;
  end;
  
implementation

{ TListResourceDataSyncResponseUnmarshaller }

function TListResourceDataSyncResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListResourceDataSyncResponse;
begin
  Response := TListResourceDataSyncResponse.Create;
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
      if AContext.TestExpression('ResourceDataSyncItems', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TResourceDataSyncItem, IResourceDataSyncItemUnmarshaller>.JsonNew(TResourceDataSyncItemUnmarshaller.JsonInstance);
        Response.ResourceDataSyncItems := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListResourceDataSyncResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ResourceDataSyncInvalidConfigurationException' then
          Exit(TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TListResourceDataSyncResponseUnmarshaller.Create;
begin
  FInstance := TListResourceDataSyncResponseUnmarshaller.Create;
end;

class function TListResourceDataSyncResponseUnmarshaller.Instance: IListResourceDataSyncResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
