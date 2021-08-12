unit AWS.SNS.Transform.UserErrorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.UserErrorException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IUserErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EUserErrorException, TXmlUnmarshallerContext>;
  
  TUserErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUserErrorException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IUserErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EUserErrorException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EUserErrorException; overload;
    class function Instance: IUserErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TUserErrorExceptionUnmarshaller }

function TUserErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EUserErrorException;
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

function TUserErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EUserErrorException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EUserErrorException;
begin
  Response := EUserErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TUserErrorExceptionUnmarshaller.Create;
begin
  FInstance := TUserErrorExceptionUnmarshaller.Create;
end;

class function TUserErrorExceptionUnmarshaller.Instance: IUserErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
