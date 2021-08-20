unit AWS.Polly.Transform.MarksNotSupportedForFormatExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.MarksNotSupportedForFormatException, 
  AWS.Internal.ErrorResponse;

type
  IMarksNotSupportedForFormatExceptionUnmarshaller = IErrorResponseUnmarshaller<EMarksNotSupportedForFormatException, TJsonUnmarshallerContext>;
  
  TMarksNotSupportedForFormatExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EMarksNotSupportedForFormatException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IMarksNotSupportedForFormatExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EMarksNotSupportedForFormatException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMarksNotSupportedForFormatException; overload;
    class function Instance: IMarksNotSupportedForFormatExceptionUnmarshaller; static;
  end;
  
implementation

{ TMarksNotSupportedForFormatExceptionUnmarshaller }

function TMarksNotSupportedForFormatExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EMarksNotSupportedForFormatException;
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

function TMarksNotSupportedForFormatExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EMarksNotSupportedForFormatException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EMarksNotSupportedForFormatException;
begin
  UnmarshalledObject := EMarksNotSupportedForFormatException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TMarksNotSupportedForFormatExceptionUnmarshaller.Create;
begin
  FInstance := TMarksNotSupportedForFormatExceptionUnmarshaller.Create;
end;

class function TMarksNotSupportedForFormatExceptionUnmarshaller.Instance: IMarksNotSupportedForFormatExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
