unit AWS.SNS.Transform.ListEndpointsByPlatformApplicationResponseUnmarshaller;

interface

uses
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SNS.Transform.EndpointUnmarshaller, 
  AWS.SNS.Model.Endpoint, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InternalErrorExceptionUnmarshaller, 
  AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller, 
  AWS.SNS.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SNS.Exception;

type
  IListEndpointsByPlatformApplicationResponseUnmarshaller = IResponseUnmarshaller;
  
  TListEndpointsByPlatformApplicationResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListEndpointsByPlatformApplicationResponseUnmarshaller)
  strict private
    class var FInstance: IListEndpointsByPlatformApplicationResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListEndpointsByPlatformApplicationResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListEndpointsByPlatformApplicationResponseUnmarshaller; static;
  end;
  
implementation

{ TListEndpointsByPlatformApplicationResponseUnmarshaller }

function TListEndpointsByPlatformApplicationResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListEndpointsByPlatformApplicationResponse;
  TargetDepth: Integer;
begin
  Response := TListEndpointsByPlatformApplicationResponse.Create;
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.IsStartElement then
      begin
        if AContext.TestExpression('ListEndpointsByPlatformApplicationResult', 2) then
        begin
          UnmarshallResult(AContext, Response);
          Continue;
        end;
        if AContext.TestExpression('ResponseMetadata', 2) then
          Response.ResponseMetadata := TResponseMetadataUnmarshaller.Instance.Unmarshall(AContext);
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class procedure TListEndpointsByPlatformApplicationResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListEndpointsByPlatformApplicationResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 2);
  while AContext.ReadAtDepth(OriginalDepth) do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('Endpoints/member', TargetDepth) then
      begin
        var Unmarshaller := TEndpointUnmarshaller.Instance;
        AResponse.Endpoints.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
end;

function TListEndpointsByPlatformApplicationResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'AuthorizationError' then
          Exit(TAuthorizationErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InternalError' then
          Exit(TInternalErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidParameter' then
          Exit(TInvalidParameterExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFound' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleNotificationServiceException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TListEndpointsByPlatformApplicationResponseUnmarshaller.Create;
begin
  FInstance := TListEndpointsByPlatformApplicationResponseUnmarshaller.Create;
end;

class function TListEndpointsByPlatformApplicationResponseUnmarshaller.Instance: IListEndpointsByPlatformApplicationResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
