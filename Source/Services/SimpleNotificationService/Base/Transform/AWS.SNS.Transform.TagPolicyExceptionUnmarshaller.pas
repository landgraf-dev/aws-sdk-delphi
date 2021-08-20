unit AWS.SNS.Transform.TagPolicyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.TagPolicyException, 
  AWS.Internal.ErrorResponse;

type
  ITagPolicyExceptionUnmarshaller = IErrorResponseUnmarshaller<ETagPolicyException, TXmlUnmarshallerContext>;
  
  TTagPolicyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETagPolicyException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITagPolicyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETagPolicyException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETagPolicyException; overload;
    class function Instance: ITagPolicyExceptionUnmarshaller; static;
  end;
  
implementation

{ TTagPolicyExceptionUnmarshaller }

function TTagPolicyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETagPolicyException;
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

function TTagPolicyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETagPolicyException;
var
  OriginalDepth: Integer;
  Response: ETagPolicyException;
begin
  Response := ETagPolicyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTagPolicyExceptionUnmarshaller.Create;
begin
  FInstance := TTagPolicyExceptionUnmarshaller.Create;
end;

class function TTagPolicyExceptionUnmarshaller.Instance: ITagPolicyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
