unit AWS.Translate.Transform.UnsupportedLanguagePairExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.UnsupportedLanguagePairException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IUnsupportedLanguagePairExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedLanguagePairException, TJsonUnmarshallerContext>;
  
  TUnsupportedLanguagePairExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedLanguagePairException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedLanguagePairExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedLanguagePairException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedLanguagePairException; overload;
    class function Instance: IUnsupportedLanguagePairExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedLanguagePairExceptionUnmarshaller }

function TUnsupportedLanguagePairExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedLanguagePairException;
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

function TUnsupportedLanguagePairExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedLanguagePairException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedLanguagePairException;
begin
  UnmarshalledObject := EUnsupportedLanguagePairException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SourceLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TUnsupportedLanguagePairExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedLanguagePairExceptionUnmarshaller.Create;
end;

class function TUnsupportedLanguagePairExceptionUnmarshaller.Instance: IUnsupportedLanguagePairExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
