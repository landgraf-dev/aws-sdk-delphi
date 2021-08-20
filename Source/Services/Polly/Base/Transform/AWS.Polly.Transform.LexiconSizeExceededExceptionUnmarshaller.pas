unit AWS.Polly.Transform.LexiconSizeExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.LexiconSizeExceededException, 
  AWS.Internal.ErrorResponse;

type
  ILexiconSizeExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ELexiconSizeExceededException, TJsonUnmarshallerContext>;
  
  TLexiconSizeExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELexiconSizeExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILexiconSizeExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ELexiconSizeExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELexiconSizeExceededException; overload;
    class function Instance: ILexiconSizeExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TLexiconSizeExceededExceptionUnmarshaller }

function TLexiconSizeExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ELexiconSizeExceededException;
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

function TLexiconSizeExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELexiconSizeExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ELexiconSizeExceededException;
begin
  UnmarshalledObject := ELexiconSizeExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TLexiconSizeExceededExceptionUnmarshaller.Create;
begin
  FInstance := TLexiconSizeExceededExceptionUnmarshaller.Create;
end;

class function TLexiconSizeExceededExceptionUnmarshaller.Instance: ILexiconSizeExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
