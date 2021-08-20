unit AWS.Polly.Transform.UnsupportedPlsLanguageExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.UnsupportedPlsLanguageException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedPlsLanguageExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedPlsLanguageException, TJsonUnmarshallerContext>;
  
  TUnsupportedPlsLanguageExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedPlsLanguageException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedPlsLanguageExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlsLanguageException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlsLanguageException; overload;
    class function Instance: IUnsupportedPlsLanguageExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedPlsLanguageExceptionUnmarshaller }

function TUnsupportedPlsLanguageExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlsLanguageException;
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

function TUnsupportedPlsLanguageExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlsLanguageException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedPlsLanguageException;
begin
  UnmarshalledObject := EUnsupportedPlsLanguageException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedPlsLanguageExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedPlsLanguageExceptionUnmarshaller.Create;
end;

class function TUnsupportedPlsLanguageExceptionUnmarshaller.Instance: IUnsupportedPlsLanguageExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
