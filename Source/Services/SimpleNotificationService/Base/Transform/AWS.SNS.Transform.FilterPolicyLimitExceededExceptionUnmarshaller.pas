unit AWS.SNS.Transform.FilterPolicyLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.FilterPolicyLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IFilterPolicyLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EFilterPolicyLimitExceededException, TXmlUnmarshallerContext>;
  
  TFilterPolicyLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EFilterPolicyLimitExceededException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IFilterPolicyLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EFilterPolicyLimitExceededException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EFilterPolicyLimitExceededException; overload;
    class function Instance: IFilterPolicyLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TFilterPolicyLimitExceededExceptionUnmarshaller }

function TFilterPolicyLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EFilterPolicyLimitExceededException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TFilterPolicyLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EFilterPolicyLimitExceededException;
var
  OriginalDepth: Integer;
  Response: EFilterPolicyLimitExceededException;
begin
  Response := EFilterPolicyLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TFilterPolicyLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TFilterPolicyLimitExceededExceptionUnmarshaller.Create;
end;

class function TFilterPolicyLimitExceededExceptionUnmarshaller.Instance: IFilterPolicyLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
