unit AWS.SSM.Transform.OpsItemRelatedItemAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemRelatedItemAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemRelatedItemAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemRelatedItemAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemRelatedItemAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemRelatedItemAlreadyExistsException; overload;
    class function Instance: IOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller }

function TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemRelatedItemAlreadyExistsException;
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

function TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemRelatedItemAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemRelatedItemAlreadyExistsException;
begin
  UnmarshalledObject := EOpsItemRelatedItemAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller.Instance: IOpsItemRelatedItemAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
