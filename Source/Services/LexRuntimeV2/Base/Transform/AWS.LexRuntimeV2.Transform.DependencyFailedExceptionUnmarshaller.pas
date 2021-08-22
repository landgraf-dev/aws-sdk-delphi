unit AWS.LexRuntimeV2.Transform.DependencyFailedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeV2.Model.DependencyFailedException, 
  AWS.Internal.ErrorResponse;

type
  IDependencyFailedExceptionUnmarshaller = IErrorResponseUnmarshaller<EDependencyFailedException, TJsonUnmarshallerContext>;
  
  TDependencyFailedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EDependencyFailedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IDependencyFailedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EDependencyFailedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDependencyFailedException; overload;
    class function Instance: IDependencyFailedExceptionUnmarshaller; static;
  end;
  
implementation

{ TDependencyFailedExceptionUnmarshaller }

function TDependencyFailedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EDependencyFailedException;
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

function TDependencyFailedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EDependencyFailedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EDependencyFailedException;
begin
  UnmarshalledObject := EDependencyFailedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TDependencyFailedExceptionUnmarshaller.Create;
begin
  FInstance := TDependencyFailedExceptionUnmarshaller.Create;
end;

class function TDependencyFailedExceptionUnmarshaller.Instance: IDependencyFailedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
