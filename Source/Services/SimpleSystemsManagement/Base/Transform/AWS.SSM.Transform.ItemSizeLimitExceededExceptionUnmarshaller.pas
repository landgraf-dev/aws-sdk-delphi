unit AWS.SSM.Transform.ItemSizeLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ItemSizeLimitExceededException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IItemSizeLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EItemSizeLimitExceededException, TJsonUnmarshallerContext>;
  
  TItemSizeLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EItemSizeLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IItemSizeLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EItemSizeLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EItemSizeLimitExceededException; overload;
    class function Instance: IItemSizeLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TItemSizeLimitExceededExceptionUnmarshaller }

function TItemSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EItemSizeLimitExceededException;
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

function TItemSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EItemSizeLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EItemSizeLimitExceededException;
begin
  UnmarshalledObject := EItemSizeLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('TypeName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TypeName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TItemSizeLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TItemSizeLimitExceededExceptionUnmarshaller.Create;
end;

class function TItemSizeLimitExceededExceptionUnmarshaller.Instance: IItemSizeLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
