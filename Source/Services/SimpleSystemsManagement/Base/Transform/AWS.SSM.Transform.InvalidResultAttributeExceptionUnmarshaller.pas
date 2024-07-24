unit AWS.SSM.Transform.InvalidResultAttributeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidResultAttributeException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidResultAttributeExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidResultAttributeException, TJsonUnmarshallerContext>;
  
  TInvalidResultAttributeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidResultAttributeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidResultAttributeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResultAttributeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResultAttributeException; overload;
    class function Instance: IInvalidResultAttributeExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidResultAttributeExceptionUnmarshaller }

function TInvalidResultAttributeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidResultAttributeException;
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

function TInvalidResultAttributeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidResultAttributeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidResultAttributeException;
begin
  UnmarshalledObject := EInvalidResultAttributeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidResultAttributeExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidResultAttributeExceptionUnmarshaller.Create;
end;

class function TInvalidResultAttributeExceptionUnmarshaller.Instance: IInvalidResultAttributeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
