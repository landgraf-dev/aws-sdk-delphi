unit AWS.Polly.Transform.InvalidSampleRateExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidSampleRateException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidSampleRateExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSampleRateException, TJsonUnmarshallerContext>;
  
  TInvalidSampleRateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSampleRateException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSampleRateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSampleRateException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSampleRateException; overload;
    class function Instance: IInvalidSampleRateExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSampleRateExceptionUnmarshaller }

function TInvalidSampleRateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSampleRateException;
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

function TInvalidSampleRateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSampleRateException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidSampleRateException;
begin
  UnmarshalledObject := EInvalidSampleRateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidSampleRateExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSampleRateExceptionUnmarshaller.Create;
end;

class function TInvalidSampleRateExceptionUnmarshaller.Instance: IInvalidSampleRateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
