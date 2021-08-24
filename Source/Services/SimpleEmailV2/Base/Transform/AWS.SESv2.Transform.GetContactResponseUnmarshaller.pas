unit AWS.SESv2.Transform.GetContactResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetContactResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.TopicPreferenceUnmarshaller, 
  AWS.SESv2.Model.TopicPreference, 
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
  IGetContactResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetContactResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetContactResponseUnmarshaller)
  strict private
    class var FInstance: IGetContactResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetContactResponseUnmarshaller; static;
  end;
  
implementation

{ TGetContactResponseUnmarshaller }

function TGetContactResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetContactResponse;
begin
  Response := TGetContactResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AttributesData', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.AttributesData := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContactListName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.ContactListName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        Response.CreatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.EmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        Response.LastUpdatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TopicDefaultPreferences', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTopicPreference, ITopicPreferenceUnmarshaller>.JsonNew(TTopicPreferenceUnmarshaller.JsonInstance);
        Response.TopicDefaultPreferences := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TopicPreferences', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTopicPreference, ITopicPreferenceUnmarshaller>.JsonNew(TTopicPreferenceUnmarshaller.JsonInstance);
        Response.TopicPreferences := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UnsubscribeAll', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        Response.UnsubscribeAll := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetContactResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetContactResponseUnmarshaller.Create;
begin
  FInstance := TGetContactResponseUnmarshaller.Create;
end;

class function TGetContactResponseUnmarshaller.Instance: IGetContactResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
