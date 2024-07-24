unit AWS.SSM.Transform.OpsItemAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TOpsItemAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemAlreadyExistsException; overload;
    class function Instance: IOpsItemAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemAlreadyExistsExceptionUnmarshaller }

function TOpsItemAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemAlreadyExistsException;
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

function TOpsItemAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemAlreadyExistsException;
begin
  UnmarshalledObject := EOpsItemAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TOpsItemAlreadyExistsExceptionUnmarshaller.Instance: IOpsItemAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
