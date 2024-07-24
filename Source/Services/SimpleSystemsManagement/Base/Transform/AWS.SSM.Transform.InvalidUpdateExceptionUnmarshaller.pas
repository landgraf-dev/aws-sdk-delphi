unit AWS.SSM.Transform.InvalidUpdateExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidUpdateException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidUpdateExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidUpdateException, TJsonUnmarshallerContext>;
  
  TInvalidUpdateExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidUpdateException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidUpdateExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidUpdateException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidUpdateException; overload;
    class function Instance: IInvalidUpdateExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidUpdateExceptionUnmarshaller }

function TInvalidUpdateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidUpdateException;
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

function TInvalidUpdateExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidUpdateException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidUpdateException;
begin
  UnmarshalledObject := EInvalidUpdateException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidUpdateExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidUpdateExceptionUnmarshaller.Create;
end;

class function TInvalidUpdateExceptionUnmarshaller.Instance: IInvalidUpdateExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
