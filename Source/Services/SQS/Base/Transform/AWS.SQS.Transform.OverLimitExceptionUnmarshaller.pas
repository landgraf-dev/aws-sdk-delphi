unit AWS.SQS.Transform.OverLimitExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.OverLimitException, 
  AWS.Internal.ErrorResponse;

type
  IOverLimitExceptionUnmarshaller = IErrorResponseUnmarshaller<EOverLimitException, TXmlUnmarshallerContext>;
  
  TOverLimitExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOverLimitException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IOverLimitExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EOverLimitException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EOverLimitException; overload;
    class function Instance: IOverLimitExceptionUnmarshaller; static;
  end;
  
implementation

{ TOverLimitExceptionUnmarshaller }

function TOverLimitExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EOverLimitException;
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

function TOverLimitExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EOverLimitException;
var
  OriginalDepth: Integer;
  Response: EOverLimitException;
begin
  Response := EOverLimitException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOverLimitExceptionUnmarshaller.Create;
begin
  FInstance := TOverLimitExceptionUnmarshaller.Create;
end;

class function TOverLimitExceptionUnmarshaller.Instance: IOverLimitExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
