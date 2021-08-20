unit AWS.Polly.Transform.MaxLexiconsNumberExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.MaxLexiconsNumberExceededException, 
  AWS.Internal.ErrorResponse;

type
  IMaxLexiconsNumberExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EMaxLexiconsNumberExceededException, TJsonUnmarshallerContext>;
  
  TMaxLexiconsNumberExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMaxLexiconsNumberExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMaxLexiconsNumberExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMaxLexiconsNumberExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxLexiconsNumberExceededException; overload;
    class function Instance: IMaxLexiconsNumberExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TMaxLexiconsNumberExceededExceptionUnmarshaller }

function TMaxLexiconsNumberExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMaxLexiconsNumberExceededException;
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

function TMaxLexiconsNumberExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMaxLexiconsNumberExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMaxLexiconsNumberExceededException;
begin
  UnmarshalledObject := EMaxLexiconsNumberExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMaxLexiconsNumberExceededExceptionUnmarshaller.Create;
begin
  FInstance := TMaxLexiconsNumberExceededExceptionUnmarshaller.Create;
end;

class function TMaxLexiconsNumberExceededExceptionUnmarshaller.Instance: IMaxLexiconsNumberExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
