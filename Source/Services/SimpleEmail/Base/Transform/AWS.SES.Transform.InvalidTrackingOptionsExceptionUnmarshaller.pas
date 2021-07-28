unit AWS.SES.Transform.InvalidTrackingOptionsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidTrackingOptionsException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidTrackingOptionsExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTrackingOptionsException, TXmlUnmarshallerContext>;
  
  TInvalidTrackingOptionsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTrackingOptionsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTrackingOptionsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidTrackingOptionsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTrackingOptionsException; overload;
    class function Instance: IInvalidTrackingOptionsExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTrackingOptionsExceptionUnmarshaller }

function TInvalidTrackingOptionsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidTrackingOptionsException;
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

function TInvalidTrackingOptionsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTrackingOptionsException;
var
  OriginalDepth: Integer;
  Response: EInvalidTrackingOptionsException;
begin
  Response := EInvalidTrackingOptionsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTrackingOptionsExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTrackingOptionsExceptionUnmarshaller.Create;
end;

class function TInvalidTrackingOptionsExceptionUnmarshaller.Instance: IInvalidTrackingOptionsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
