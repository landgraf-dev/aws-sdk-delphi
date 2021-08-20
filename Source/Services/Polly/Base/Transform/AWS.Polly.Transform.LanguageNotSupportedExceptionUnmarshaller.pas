unit AWS.Polly.Transform.LanguageNotSupportedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.LanguageNotSupportedException, 
  AWS.Internal.ErrorResponse;

type
  ILanguageNotSupportedExceptionUnmarshaller = IErrorResponseUnmarshaller<ELanguageNotSupportedException, TJsonUnmarshallerContext>;
  
  TLanguageNotSupportedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELanguageNotSupportedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILanguageNotSupportedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ELanguageNotSupportedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELanguageNotSupportedException; overload;
    class function Instance: ILanguageNotSupportedExceptionUnmarshaller; static;
  end;
  
implementation

{ TLanguageNotSupportedExceptionUnmarshaller }

function TLanguageNotSupportedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ELanguageNotSupportedException;
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

function TLanguageNotSupportedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELanguageNotSupportedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ELanguageNotSupportedException;
begin
  UnmarshalledObject := ELanguageNotSupportedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TLanguageNotSupportedExceptionUnmarshaller.Create;
begin
  FInstance := TLanguageNotSupportedExceptionUnmarshaller.Create;
end;

class function TLanguageNotSupportedExceptionUnmarshaller.Instance: ILanguageNotSupportedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
