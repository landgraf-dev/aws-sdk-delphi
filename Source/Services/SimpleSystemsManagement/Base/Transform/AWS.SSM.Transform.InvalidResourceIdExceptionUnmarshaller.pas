unit AWS.SSM.Transform.InvalidResourceIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidResourceIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidResourceIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidResourceIdException, TJsonUnmarshallerContext>;
  
  TInvalidResourceIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidResourceIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidResourceIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResourceIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResourceIdException; overload;
    class function Instance: IInvalidResourceIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidResourceIdExceptionUnmarshaller }

function TInvalidResourceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResourceIdException;
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

function TInvalidResourceIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResourceIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidResourceIdException;
begin
  UnmarshalledObject := EInvalidResourceIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidResourceIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidResourceIdExceptionUnmarshaller.Create;
end;

class function TInvalidResourceIdExceptionUnmarshaller.Instance: IInvalidResourceIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
