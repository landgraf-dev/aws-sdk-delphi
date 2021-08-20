unit AWS.SNS.Transform.NotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.NotFoundException, 
  AWS.Internal.ErrorResponse;

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
  Response: ENotFoundException;
begin
  Response := ENotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TNotFoundExceptionUnmarshaller.Create;
end;

class function TNotFoundExceptionUnmarshaller.Instance: INotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
