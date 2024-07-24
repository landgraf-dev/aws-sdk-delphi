unit AWS.SSM.Transform.InvalidOutputLocationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidOutputLocationException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidOutputLocationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidOutputLocationException, TJsonUnmarshallerContext>;
  
  TInvalidOutputLocationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidOutputLocationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidOutputLocationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOutputLocationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOutputLocationException; overload;
    class function Instance: IInvalidOutputLocationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidOutputLocationExceptionUnmarshaller }

function TInvalidOutputLocationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOutputLocationException;
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

function TInvalidOutputLocationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOutputLocationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidOutputLocationException;
begin
  UnmarshalledObject := EInvalidOutputLocationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidOutputLocationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidOutputLocationExceptionUnmarshaller.Create;
end;

class function TInvalidOutputLocationExceptionUnmarshaller.Instance: IInvalidOutputLocationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
