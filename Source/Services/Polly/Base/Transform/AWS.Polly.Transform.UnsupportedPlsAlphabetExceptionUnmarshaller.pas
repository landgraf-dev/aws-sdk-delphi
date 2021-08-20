unit AWS.Polly.Transform.UnsupportedPlsAlphabetExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.UnsupportedPlsAlphabetException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedPlsAlphabetExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedPlsAlphabetException, TJsonUnmarshallerContext>;
  
  TUnsupportedPlsAlphabetExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedPlsAlphabetException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedPlsAlphabetExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlsAlphabetException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlsAlphabetException; overload;
    class function Instance: IUnsupportedPlsAlphabetExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedPlsAlphabetExceptionUnmarshaller }

function TUnsupportedPlsAlphabetExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlsAlphabetException;
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

function TUnsupportedPlsAlphabetExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlsAlphabetException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedPlsAlphabetException;
begin
  UnmarshalledObject := EUnsupportedPlsAlphabetException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedPlsAlphabetExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedPlsAlphabetExceptionUnmarshaller.Create;
end;

class function TUnsupportedPlsAlphabetExceptionUnmarshaller.Instance: IUnsupportedPlsAlphabetExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
