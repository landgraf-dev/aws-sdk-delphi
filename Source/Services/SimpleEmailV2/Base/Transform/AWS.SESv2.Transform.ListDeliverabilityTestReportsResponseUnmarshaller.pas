unit AWS.SESv2.Transform.ListDeliverabilityTestReportsResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.ListDeliverabilityTestReportsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Transform.DeliverabilityTestReportUnmarshaller, 
  AWS.SESv2.Model.DeliverabilityTestReport, 
  AWS.Transform.SimpleTypeUnmarshaller, 
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
  IListDeliverabilityTestReportsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListDeliverabilityTestReportsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListDeliverabilityTestReportsResponseUnmarshaller)
  strict private
    class var FInstance: IListDeliverabilityTestReportsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListDeliverabilityTestReportsResponseUnmarshaller; static;
  end;
  
implementation

{ TListDeliverabilityTestReportsResponseUnmarshaller }

function TListDeliverabilityTestReportsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListDeliverabilityTestReportsResponse;
begin
  Response := TListDeliverabilityTestReportsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DeliverabilityTestReports', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDeliverabilityTestReport, IDeliverabilityTestReportUnmarshaller>.JsonNew(TDeliverabilityTestReportUnmarshaller.JsonInstance);
        Response.DeliverabilityTestReports := Unmarshaller.Unmarshall(AContext);
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

function TListDeliverabilityTestReportsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListDeliverabilityTestReportsResponseUnmarshaller.Create;
begin
  FInstance := TListDeliverabilityTestReportsResponseUnmarshaller.Create;
end;

class function TListDeliverabilityTestReportsResponseUnmarshaller.Instance: IListDeliverabilityTestReportsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
