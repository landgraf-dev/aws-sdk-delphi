unit AWS.SES.Transform.AlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.AlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAlreadyExistsException; overload;
    class function Instance: IAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TAlreadyExistsExceptionUnmarshaller }

function TAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EAlreadyExistsException;
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

function TAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAlreadyExistsException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EAlreadyExistsException;
begin
  Response := EAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TAlreadyExistsExceptionUnmarshaller.Instance: IAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
