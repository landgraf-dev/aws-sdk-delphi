unit AWS.Transcribe.Transform.InternalFailureExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Model.InternalFailureException, 
  AWS.Internal.ErrorResponse;

type
  IInternalFailureExceptionUnmarshaller = IErrorResponseUnmarshaller<EInternalFailureException, TJsonUnmarshallerContext>;
  
  TInternalFailureExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInternalFailureException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInternalFailureExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInternalFailureException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalFailureException; overload;
    class function Instance: IInternalFailureExceptionUnmarshaller; static;
  end;
  
implementation

{ TInternalFailureExceptionUnmarshaller }

function TInternalFailureExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInternalFailureException;
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

function TInternalFailureExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalFailureException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInternalFailureException;
begin
  UnmarshalledObject := EInternalFailureException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInternalFailureExceptionUnmarshaller.Create;
begin
  FInstance := TInternalFailureExceptionUnmarshaller.Create;
end;

class function TInternalFailureExceptionUnmarshaller.Instance: IInternalFailureExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
