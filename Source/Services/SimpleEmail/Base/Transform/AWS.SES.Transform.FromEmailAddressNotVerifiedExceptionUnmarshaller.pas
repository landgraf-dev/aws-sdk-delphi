unit AWS.SES.Transform.FromEmailAddressNotVerifiedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.FromEmailAddressNotVerifiedException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFromEmailAddressNotVerifiedExceptionUnmarshaller = IErrorResponseUnmarshaller<EFromEmailAddressNotVerifiedException, TXmlUnmarshallerContext>;
  
  TFromEmailAddressNotVerifiedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EFromEmailAddressNotVerifiedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IFromEmailAddressNotVerifiedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EFromEmailAddressNotVerifiedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EFromEmailAddressNotVerifiedException; overload;
    class function Instance: IFromEmailAddressNotVerifiedExceptionUnmarshaller; static;
  end;
  
implementation

{ TFromEmailAddressNotVerifiedExceptionUnmarshaller }

function TFromEmailAddressNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EFromEmailAddressNotVerifiedException;
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

function TFromEmailAddressNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EFromEmailAddressNotVerifiedException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EFromEmailAddressNotVerifiedException;
begin
  Response := EFromEmailAddressNotVerifiedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('FromEmailAddress', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.FromEmailAddress := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TFromEmailAddressNotVerifiedExceptionUnmarshaller.Create;
begin
  FInstance := TFromEmailAddressNotVerifiedExceptionUnmarshaller.Create;
end;

class function TFromEmailAddressNotVerifiedExceptionUnmarshaller.Instance: IFromEmailAddressNotVerifiedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
