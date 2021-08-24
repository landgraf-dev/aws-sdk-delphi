unit AWS.SESv2.Transform.GetBlacklistReportsResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.GetBlacklistReportsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.BlacklistEntryUnmarshaller, 
  AWS.SESv2.Model.BlacklistEntry, 
  System.Generics.Collections, 
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
  IGetBlacklistReportsResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetBlacklistReportsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetBlacklistReportsResponseUnmarshaller)
  strict private
    class var FInstance: IGetBlacklistReportsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetBlacklistReportsResponseUnmarshaller; static;
  end;
  
implementation

{ TGetBlacklistReportsResponseUnmarshaller }

function TGetBlacklistReportsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetBlacklistReportsResponse;
begin
  Response := TGetBlacklistReportsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('BlacklistReport', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TObjectList<TBlacklistEntry>, IJsonStringUnmarshaller, IUnmarshaller<TObjectList<TBlacklistEntry>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonObjectListUnmarshaller<TBlacklistEntry, IBlacklistEntryUnmarshaller>.JsonNew(TBlacklistEntryUnmarshaller.JsonInstance));
        Response.BlacklistReport := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetBlacklistReportsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TGetBlacklistReportsResponseUnmarshaller.Create;
begin
  FInstance := TGetBlacklistReportsResponseUnmarshaller.Create;
end;

class function TGetBlacklistReportsResponseUnmarshaller.Instance: IGetBlacklistReportsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
