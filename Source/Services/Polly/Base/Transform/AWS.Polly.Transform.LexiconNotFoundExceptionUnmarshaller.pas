unit AWS.Polly.Transform.LexiconNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.LexiconNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  ILexiconNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<ELexiconNotFoundException, TJsonUnmarshallerContext>;
  
  TLexiconNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ELexiconNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILexiconNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ELexiconNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELexiconNotFoundException; overload;
    class function Instance: ILexiconNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TLexiconNotFoundExceptionUnmarshaller }

function TLexiconNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ELexiconNotFoundException;
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

function TLexiconNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ELexiconNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ELexiconNotFoundException;
begin
  UnmarshalledObject := ELexiconNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TLexiconNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TLexiconNotFoundExceptionUnmarshaller.Create;
end;

class function TLexiconNotFoundExceptionUnmarshaller.Instance: ILexiconNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
