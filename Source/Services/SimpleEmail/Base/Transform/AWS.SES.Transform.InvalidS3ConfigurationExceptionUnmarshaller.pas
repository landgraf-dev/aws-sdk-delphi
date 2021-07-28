unit AWS.SES.Transform.InvalidS3ConfigurationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidS3ConfigurationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidS3ConfigurationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidS3ConfigurationException, TXmlUnmarshallerContext>;
  
  TInvalidS3ConfigurationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidS3ConfigurationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidS3ConfigurationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidS3ConfigurationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3ConfigurationException; overload;
    class function Instance: IInvalidS3ConfigurationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidS3ConfigurationExceptionUnmarshaller }

function TInvalidS3ConfigurationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidS3ConfigurationException;
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

function TInvalidS3ConfigurationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3ConfigurationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidS3ConfigurationException;
begin
  Response := EInvalidS3ConfigurationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Bucket := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidS3ConfigurationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidS3ConfigurationExceptionUnmarshaller.Create;
end;

class function TInvalidS3ConfigurationExceptionUnmarshaller.Instance: IInvalidS3ConfigurationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
