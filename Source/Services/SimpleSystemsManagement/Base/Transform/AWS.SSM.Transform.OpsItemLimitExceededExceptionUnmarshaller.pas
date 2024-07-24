unit AWS.SSM.Transform.OpsItemLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemLimitExceededException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemLimitExceededException, TJsonUnmarshallerContext>;
  
  TOpsItemLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemLimitExceededException; overload;
    class function Instance: IOpsItemLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemLimitExceededExceptionUnmarshaller }

function TOpsItemLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemLimitExceededException;
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

function TOpsItemLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemLimitExceededException;
begin
  UnmarshalledObject := EOpsItemLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Limit', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Limit := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LimitType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LimitType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.ResourceTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemLimitExceededExceptionUnmarshaller.Create;
end;

class function TOpsItemLimitExceededExceptionUnmarshaller.Instance: IOpsItemLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
