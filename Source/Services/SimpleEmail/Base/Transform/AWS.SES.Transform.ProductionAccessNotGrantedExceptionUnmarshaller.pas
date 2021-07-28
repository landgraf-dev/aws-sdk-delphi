unit AWS.SES.Transform.ProductionAccessNotGrantedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.ProductionAccessNotGrantedException, 
  AWS.Internal.ErrorResponse;

type
  IProductionAccessNotGrantedExceptionUnmarshaller = IErrorResponseUnmarshaller<EProductionAccessNotGrantedException, TXmlUnmarshallerContext>;
  
  TProductionAccessNotGrantedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EProductionAccessNotGrantedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IProductionAccessNotGrantedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EProductionAccessNotGrantedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EProductionAccessNotGrantedException; overload;
    class function Instance: IProductionAccessNotGrantedExceptionUnmarshaller; static;
  end;
  
implementation

{ TProductionAccessNotGrantedExceptionUnmarshaller }

function TProductionAccessNotGrantedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EProductionAccessNotGrantedException;
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

function TProductionAccessNotGrantedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EProductionAccessNotGrantedException;
var
  OriginalDepth: Integer;
  Response: EProductionAccessNotGrantedException;
begin
  Response := EProductionAccessNotGrantedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TProductionAccessNotGrantedExceptionUnmarshaller.Create;
begin
  FInstance := TProductionAccessNotGrantedExceptionUnmarshaller.Create;
end;

class function TProductionAccessNotGrantedExceptionUnmarshaller.Instance: IProductionAccessNotGrantedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
