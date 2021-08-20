unit AWS.Polly.Transform.TextLengthExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.TextLengthExceededException, 
  AWS.Internal.ErrorResponse;

type
  ITextLengthExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ETextLengthExceededException, TJsonUnmarshallerContext>;
  
  TTextLengthExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETextLengthExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITextLengthExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETextLengthExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETextLengthExceededException; overload;
    class function Instance: ITextLengthExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TTextLengthExceededExceptionUnmarshaller }

function TTextLengthExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETextLengthExceededException;
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

function TTextLengthExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETextLengthExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETextLengthExceededException;
begin
  UnmarshalledObject := ETextLengthExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTextLengthExceededExceptionUnmarshaller.Create;
begin
  FInstance := TTextLengthExceededExceptionUnmarshaller.Create;
end;

class function TTextLengthExceededExceptionUnmarshaller.Instance: ITextLengthExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
