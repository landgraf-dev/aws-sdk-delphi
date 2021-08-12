unit AWS.SNS.Transform.KMSInvalidStateExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSInvalidStateException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKMSInvalidStateExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSInvalidStateException, TXmlUnmarshallerContext>;
  
  TKMSInvalidStateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSInvalidStateException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSInvalidStateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSInvalidStateException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSInvalidStateException; overload;
    class function Instance: IKMSInvalidStateExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSInvalidStateExceptionUnmarshaller }

function TKMSInvalidStateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSInvalidStateException;
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

function TKMSInvalidStateExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSInvalidStateException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EKMSInvalidStateException;
begin
  Response := EKMSInvalidStateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TKMSInvalidStateExceptionUnmarshaller.Create;
begin
  FInstance := TKMSInvalidStateExceptionUnmarshaller.Create;
end;

class function TKMSInvalidStateExceptionUnmarshaller.Instance: IKMSInvalidStateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
