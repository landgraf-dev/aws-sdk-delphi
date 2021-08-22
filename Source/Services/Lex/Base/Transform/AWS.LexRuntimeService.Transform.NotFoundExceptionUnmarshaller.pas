unit AWS.LexRuntimeService.Transform.NotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.NotFoundException, 
  AWS.Internal.ErrorResponse;

type
  INotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<ENotFoundException, TJsonUnmarshallerContext>;
  
  TNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: INotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ENotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException; overload;
    class function Instance: INotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TNotFoundExceptionUnmarshaller }

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ENotFoundException;
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

function TNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ENotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ENotFoundException;
begin
  UnmarshalledObject := ENotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TNotFoundExceptionUnmarshaller.Create;
end;

class function TNotFoundExceptionUnmarshaller.Instance: INotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
