unit AWS.SNS.Transform.NotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.NotFoundException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  INotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<ENotFoundException, TXmlUnmarshallerContext>;
  
  TNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENotFoundException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENotFoundException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException; overload;
    class function Instance: INotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TNotFoundExceptionUnmarshaller }

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENotFoundException;
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

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ENotFoundException;
begin
  Response := ENotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TNotFoundExceptionUnmarshaller.Create;
end;

class function TNotFoundExceptionUnmarshaller.Instance: INotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
