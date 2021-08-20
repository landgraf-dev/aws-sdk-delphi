unit AWS.Polly.Transform.MaxLexemeLengthExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.MaxLexemeLengthExceededException, 
  AWS.Internal.ErrorResponse;

type
  IMaxLexemeLengthExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EMaxLexemeLengthExceededException, TJsonUnmarshallerContext>;
  
  TMaxLexemeLengthExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMaxLexemeLengthExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMaxLexemeLengthExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMaxLexemeLengthExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxLexemeLengthExceededException; overload;
    class function Instance: IMaxLexemeLengthExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TMaxLexemeLengthExceededExceptionUnmarshaller }

function TMaxLexemeLengthExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMaxLexemeLengthExceededException;
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

function TMaxLexemeLengthExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxLexemeLengthExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMaxLexemeLengthExceededException;
begin
  UnmarshalledObject := EMaxLexemeLengthExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMaxLexemeLengthExceededExceptionUnmarshaller.Create;
begin
  FInstance := TMaxLexemeLengthExceededExceptionUnmarshaller.Create;
end;

class function TMaxLexemeLengthExceededExceptionUnmarshaller.Instance: IMaxLexemeLengthExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
