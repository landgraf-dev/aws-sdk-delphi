unit AWS.SES.Transform.InvalidPolicyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidPolicyException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPolicyExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPolicyException, TXmlUnmarshallerContext>;
  
  TInvalidPolicyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPolicyException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPolicyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidPolicyException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyException; overload;
    class function Instance: IInvalidPolicyExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPolicyExceptionUnmarshaller }

function TInvalidPolicyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidPolicyException;
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

function TInvalidPolicyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPolicyException;
var
  OriginalDepth: Integer;
  Response: EInvalidPolicyException;
begin
  Response := EInvalidPolicyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPolicyExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPolicyExceptionUnmarshaller.Create;
end;

class function TInvalidPolicyExceptionUnmarshaller.Instance: IInvalidPolicyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
