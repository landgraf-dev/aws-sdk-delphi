unit AWS.SSM.Transform.OpsItemNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IOpsItemNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemNotFoundException, TJsonUnmarshallerContext>;
  
  TOpsItemNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemNotFoundException; overload;
    class function Instance: IOpsItemNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemNotFoundExceptionUnmarshaller }

function TOpsItemNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemNotFoundException;
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

function TOpsItemNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemNotFoundException;
begin
  UnmarshalledObject := EOpsItemNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsItemNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemNotFoundExceptionUnmarshaller.Create;
end;

class function TOpsItemNotFoundExceptionUnmarshaller.Instance: IOpsItemNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
