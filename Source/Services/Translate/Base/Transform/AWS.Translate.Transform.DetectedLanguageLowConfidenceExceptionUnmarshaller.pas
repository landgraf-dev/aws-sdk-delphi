unit AWS.Translate.Transform.DetectedLanguageLowConfidenceExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.DetectedLanguageLowConfidenceException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDetectedLanguageLowConfidenceExceptionUnmarshaller = IErrorResponseUnmarshaller<EDetectedLanguageLowConfidenceException, TJsonUnmarshallerContext>;
  
  TDetectedLanguageLowConfidenceExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDetectedLanguageLowConfidenceException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDetectedLanguageLowConfidenceExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDetectedLanguageLowConfidenceException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDetectedLanguageLowConfidenceException; overload;
    class function Instance: IDetectedLanguageLowConfidenceExceptionUnmarshaller; static;
  end;
  
implementation

{ TDetectedLanguageLowConfidenceExceptionUnmarshaller }

function TDetectedLanguageLowConfidenceExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDetectedLanguageLowConfidenceException;
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

function TDetectedLanguageLowConfidenceExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDetectedLanguageLowConfidenceException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDetectedLanguageLowConfidenceException;
begin
  UnmarshalledObject := EDetectedLanguageLowConfidenceException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('DetectedLanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetectedLanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDetectedLanguageLowConfidenceExceptionUnmarshaller.Create;
begin
  FInstance := TDetectedLanguageLowConfidenceExceptionUnmarshaller.Create;
end;

class function TDetectedLanguageLowConfidenceExceptionUnmarshaller.Instance: IDetectedLanguageLowConfidenceExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
