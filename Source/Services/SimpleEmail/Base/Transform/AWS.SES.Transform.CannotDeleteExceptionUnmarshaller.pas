unit AWS.SES.Transform.CannotDeleteExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.CannotDeleteException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICannotDeleteExceptionUnmarshaller = IErrorResponseUnmarshaller<ECannotDeleteException, TXmlUnmarshallerContext>;
  
  TCannotDeleteExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ECannotDeleteException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ICannotDeleteExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ECannotDeleteException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECannotDeleteException; overload;
    class function Instance: ICannotDeleteExceptionUnmarshaller; static;
  end;
  
implementation

{ TCannotDeleteExceptionUnmarshaller }

function TCannotDeleteExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ECannotDeleteException;
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

function TCannotDeleteExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ECannotDeleteException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ECannotDeleteException;
begin
  Response := ECannotDeleteException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TCannotDeleteExceptionUnmarshaller.Create;
begin
  FInstance := TCannotDeleteExceptionUnmarshaller.Create;
end;

class function TCannotDeleteExceptionUnmarshaller.Instance: ICannotDeleteExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
