unit AWS.Translate.Transform.TextSizeLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.TextSizeLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ITextSizeLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ETextSizeLimitExceededException, TJsonUnmarshallerContext>;
  
  TTextSizeLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETextSizeLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITextSizeLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETextSizeLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETextSizeLimitExceededException; overload;
    class function Instance: ITextSizeLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TTextSizeLimitExceededExceptionUnmarshaller }

function TTextSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETextSizeLimitExceededException;
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

function TTextSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETextSizeLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETextSizeLimitExceededException;
begin
  UnmarshalledObject := ETextSizeLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTextSizeLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TTextSizeLimitExceededExceptionUnmarshaller.Create;
end;

class function TTextSizeLimitExceededExceptionUnmarshaller.Instance: ITextSizeLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
