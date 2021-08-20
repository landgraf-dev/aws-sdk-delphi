unit AWS.Polly.Transform.SsmlMarksNotSupportedForTextTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.SsmlMarksNotSupportedForTextTypeException, 
  AWS.Internal.ErrorResponse;

type
  ISsmlMarksNotSupportedForTextTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<ESsmlMarksNotSupportedForTextTypeException, TJsonUnmarshallerContext>;
  
  TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ESsmlMarksNotSupportedForTextTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ISsmlMarksNotSupportedForTextTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ESsmlMarksNotSupportedForTextTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESsmlMarksNotSupportedForTextTypeException; overload;
    class function Instance: ISsmlMarksNotSupportedForTextTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller }

function TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ESsmlMarksNotSupportedForTextTypeException;
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

function TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESsmlMarksNotSupportedForTextTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ESsmlMarksNotSupportedForTextTypeException;
begin
  UnmarshalledObject := ESsmlMarksNotSupportedForTextTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Create;
begin
  FInstance := TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Create;
end;

class function TSsmlMarksNotSupportedForTextTypeExceptionUnmarshaller.Instance: ISsmlMarksNotSupportedForTextTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
