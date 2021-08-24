unit AWS.SESv2.Transform.ListSuppressedDestinationsResponseUnmarshaller;

interface

uses
  AWS.SESv2.Model.ListSuppressedDestinationsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.SuppressedDestinationSummaryUnmarshaller, 
  AWS.SESv2.Model.SuppressedDestinationSummary, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SESv2.Transform.BadRequestExceptionUnmarshaller, 
  AWS.SESv2.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller, 
  AWS.SESv2.Exception;

type
  IListSuppressedDestinationsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSuppressedDestinationsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListSuppressedDestinationsResponseUnmarshaller)
  strict private
    class var FInstance: IListSuppressedDestinationsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListSuppressedDestinationsResponseUnmarshaller; static;
  end;
  
implementation

{ TListSuppressedDestinationsResponseUnmarshaller }

function TListSuppressedDestinationsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListSuppressedDestinationsResponse;
begin
  Response := TListSuppressedDestinationsResponse.Create;
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
      if AContext.TestExpression('SuppressedDestinationSummaries', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TSuppressedDestinationSummary, ISuppressedDestinationSummaryUnmarshaller>.JsonNew(TSuppressedDestinationSummaryUnmarshaller.JsonInstance);
        Response.SuppressedDestinationSummaries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TListSuppressedDestinationsResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TListSuppressedDestinationsResponseUnmarshaller.Create;
begin
  FInstance := TListSuppressedDestinationsResponseUnmarshaller.Create;
end;

class function TListSuppressedDestinationsResponseUnmarshaller.Instance: IListSuppressedDestinationsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
