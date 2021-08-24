unit AWS.SESv2.Transform.GetConfigurationSetResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetConfigurationSetResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.DeliveryOptionsUnmarshaller, 
  AWS.SESv2.Transform.ReputationOptionsUnmarshaller, 
  AWS.SESv2.Transform.SendingOptionsUnmarshaller, 
  AWS.SESv2.Transform.SuppressionOptionsUnmarshaller, 
  AWS.SESv2.Transform.TagUnmarshaller, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Transform.TrackingOptionsUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.NotFoundExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IGetConfigurationSetResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetConfigurationSetResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetConfigurationSetResponseUnmarshaller)
  strict private
    class var FInstance: IGetConfigurationSetResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetConfigurationSetResponseUnmarshaller; static;
  end;
  
implementation

{ TGetConfigurationSetResponseUnmarshaller }

function TGetConfigurationSetResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetConfigurationSetResponse;
begin
  Response := TGetConfigurationSetResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeliveryOptions', TargetDepth) then
      begin
        var Unmarshaller := TDeliveryOptionsUnmarshaller.JsonInstance;
        Response.DeliveryOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReputationOptions', TargetDepth) then
      begin
        var Unmarshaller := TReputationOptionsUnmarshaller.JsonInstance;
        Response.ReputationOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SendingOptions', TargetDepth) then
      begin
        var Unmarshaller := TSendingOptionsUnmarshaller.JsonInstance;
        Response.SendingOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuppressionOptions', TargetDepth) then
      begin
        var Unmarshaller := TSuppressionOptionsUnmarshaller.JsonInstance;
        Response.SuppressionOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        Response.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TrackingOptions', TargetDepth) then
      begin
        var Unmarshaller := TTrackingOptionsUnmarshaller.JsonInstance;
        Response.TrackingOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetConfigurationSetResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'BadRequestException' then
          Exit(TBadRequestExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'NotFoundException' then
          Exit(TNotFoundExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'TooManyRequestsException' then
          Exit(TTooManyRequestsExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleEmailServiceV2Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetConfigurationSetResponseUnmarshaller.Create;
begin
  FInstance := TGetConfigurationSetResponseUnmarshaller.Create;
end;

class function TGetConfigurationSetResponseUnmarshaller.Instance: IGetConfigurationSetResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
