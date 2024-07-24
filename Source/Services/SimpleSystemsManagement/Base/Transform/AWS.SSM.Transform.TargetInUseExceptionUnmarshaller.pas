unit AWS.SSM.Transform.TargetInUseExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.TargetInUseException, 
  AWS.Internal.ErrorResponse;

type
  ITargetInUseExceptionUnmarshaller = IErrorResponseUnmarshaller<ETargetInUseException, TJsonUnmarshallerContext>;
  
  TTargetInUseExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETargetInUseException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITargetInUseExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETargetInUseException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETargetInUseException; overload;
    class function Instance: ITargetInUseExceptionUnmarshaller; static;
  end;
  
implementation

{ TTargetInUseExceptionUnmarshaller }

function TTargetInUseExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETargetInUseException;
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

function TTargetInUseExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETargetInUseException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETargetInUseException;
begin
  UnmarshalledObject := ETargetInUseException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTargetInUseExceptionUnmarshaller.Create;
begin
  FInstance := TTargetInUseExceptionUnmarshaller.Create;
end;

class function TTargetInUseExceptionUnmarshaller.Instance: ITargetInUseExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
