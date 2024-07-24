unit AWS.SSM.Transform.OpsItemInvalidParameterExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemInvalidParameterException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemInvalidParameterExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemInvalidParameterException, TJsonUnmarshallerContext>;
  
  TOpsItemInvalidParameterExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemInvalidParameterException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemInvalidParameterExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemInvalidParameterException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemInvalidParameterException; overload;
    class function Instance: IOpsItemInvalidParameterExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemInvalidParameterExceptionUnmarshaller }

function TOpsItemInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemInvalidParameterException;
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

function TOpsItemInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemInvalidParameterException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemInvalidParameterException;
begin
  UnmarshalledObject := EOpsItemInvalidParameterException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('ParameterNames', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.ParameterNames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemInvalidParameterExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemInvalidParameterExceptionUnmarshaller.Create;
end;

class function TOpsItemInvalidParameterExceptionUnmarshaller.Instance: IOpsItemInvalidParameterExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
