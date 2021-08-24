unit AWS.SESv2.Transform.MailFromDomainNotVerifiedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Model.MailFromDomainNotVerifiedException, 
  AWS.Internal.ErrorResponse;

type
  IMailFromDomainNotVerifiedExceptionUnmarshaller = IErrorResponseUnmarshaller<EMailFromDomainNotVerifiedException, TJsonUnmarshallerContext>;
  
  TMailFromDomainNotVerifiedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMailFromDomainNotVerifiedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMailFromDomainNotVerifiedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMailFromDomainNotVerifiedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMailFromDomainNotVerifiedException; overload;
    class function Instance: IMailFromDomainNotVerifiedExceptionUnmarshaller; static;
  end;
  
implementation

{ TMailFromDomainNotVerifiedExceptionUnmarshaller }

function TMailFromDomainNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMailFromDomainNotVerifiedException;
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

function TMailFromDomainNotVerifiedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMailFromDomainNotVerifiedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMailFromDomainNotVerifiedException;
begin
  UnmarshalledObject := EMailFromDomainNotVerifiedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMailFromDomainNotVerifiedExceptionUnmarshaller.Create;
begin
  FInstance := TMailFromDomainNotVerifiedExceptionUnmarshaller.Create;
end;

class function TMailFromDomainNotVerifiedExceptionUnmarshaller.Instance: IMailFromDomainNotVerifiedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
