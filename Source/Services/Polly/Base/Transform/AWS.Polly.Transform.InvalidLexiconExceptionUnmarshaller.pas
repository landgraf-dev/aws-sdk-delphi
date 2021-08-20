unit AWS.Polly.Transform.InvalidLexiconExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidLexiconException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidLexiconExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidLexiconException, TJsonUnmarshallerContext>;
  
  TInvalidLexiconExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidLexiconException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidLexiconExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidLexiconException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidLexiconException; overload;
    class function Instance: IInvalidLexiconExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidLexiconExceptionUnmarshaller }

function TInvalidLexiconExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidLexiconException;
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

function TInvalidLexiconExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidLexiconException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidLexiconException;
begin
  UnmarshalledObject := EInvalidLexiconException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidLexiconExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidLexiconExceptionUnmarshaller.Create;
end;

class function TInvalidLexiconExceptionUnmarshaller.Instance: IInvalidLexiconExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
