unit AWS.SSM.Transform.InvalidParametersExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidParametersException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidParametersExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidParametersException, TJsonUnmarshallerContext>;
  
  TInvalidParametersExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidParametersException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidParametersExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParametersException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParametersException; overload;
    class function Instance: IInvalidParametersExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidParametersExceptionUnmarshaller }

function TInvalidParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParametersException;
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

function TInvalidParametersExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParametersException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidParametersException;
begin
  UnmarshalledObject := EInvalidParametersException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidParametersExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidParametersExceptionUnmarshaller.Create;
end;

class function TInvalidParametersExceptionUnmarshaller.Instance: IInvalidParametersExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
