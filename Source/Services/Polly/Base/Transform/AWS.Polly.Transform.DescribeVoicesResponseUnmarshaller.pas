unit AWS.Polly.Transform.DescribeVoicesResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Polly.Transform.VoiceUnmarshaller, 
  AWS.Polly.Model.Voice, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.Polly.Transform.InvalidNextTokenExceptionUnmarshaller, 
  AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller, 
  AWS.Polly.Exception;

type
  IDescribeVoicesResponseUnmarshaller = IResponseUnmarshaller;
  
  TDescribeVoicesResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDescribeVoicesResponseUnmarshaller)
  strict private
    class var FInstance: IDescribeVoicesResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDescribeVoicesResponseUnmarshaller; static;
  end;
  
implementation

{ TDescribeVoicesResponseUnmarshaller }

function TDescribeVoicesResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDescribeVoicesResponse;
begin
  Response := TDescribeVoicesResponse.Create;
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
      if AContext.TestExpression('Voices', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TVoice, IVoiceUnmarshaller>.JsonNew(TVoiceUnmarshaller.JsonInstance);
        Response.Voices := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TDescribeVoicesResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InvalidNextTokenException' then
          Exit(TInvalidNextTokenExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'ServiceFailureException' then
          Exit(TServiceFailureExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonPollyException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDescribeVoicesResponseUnmarshaller.Create;
begin
  FInstance := TDescribeVoicesResponseUnmarshaller.Create;
end;

class function TDescribeVoicesResponseUnmarshaller.Instance: IDescribeVoicesResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
