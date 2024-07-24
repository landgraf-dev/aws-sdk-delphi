unit AWS.SSM.Transform.TooManyUpdatesExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.TooManyUpdatesException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyUpdatesExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyUpdatesException, TJsonUnmarshallerContext>;
  
  TTooManyUpdatesExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyUpdatesException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyUpdatesExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyUpdatesException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyUpdatesException; overload;
    class function Instance: ITooManyUpdatesExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyUpdatesExceptionUnmarshaller }

function TTooManyUpdatesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyUpdatesException;
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

function TTooManyUpdatesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyUpdatesException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETooManyUpdatesException;
begin
  UnmarshalledObject := ETooManyUpdatesException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTooManyUpdatesExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyUpdatesExceptionUnmarshaller.Create;
end;

class function TTooManyUpdatesExceptionUnmarshaller.Instance: ITooManyUpdatesExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
