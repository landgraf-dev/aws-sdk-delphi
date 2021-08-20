unit AWS.SNS.Transform.StaleTagExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.StaleTagException, 
  AWS.Internal.ErrorResponse;

type
  IStaleTagExceptionUnmarshaller = IErrorResponseUnmarshaller<EStaleTagException, TXmlUnmarshallerContext>;
  
  TStaleTagExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EStaleTagException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStaleTagExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EStaleTagException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EStaleTagException; overload;
    class function Instance: IStaleTagExceptionUnmarshaller; static;
  end;
  
implementation

{ TStaleTagExceptionUnmarshaller }

function TStaleTagExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EStaleTagException;
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

function TStaleTagExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EStaleTagException;
var
  OriginalDepth: Integer;
  Response: EStaleTagException;
begin
  Response := EStaleTagException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TStaleTagExceptionUnmarshaller.Create;
begin
  FInstance := TStaleTagExceptionUnmarshaller.Create;
end;

class function TStaleTagExceptionUnmarshaller.Instance: IStaleTagExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
