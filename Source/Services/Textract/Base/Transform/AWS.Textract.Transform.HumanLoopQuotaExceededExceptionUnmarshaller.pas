unit AWS.Textract.Transform.HumanLoopQuotaExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.HumanLoopQuotaExceededException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IHumanLoopQuotaExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EHumanLoopQuotaExceededException, TJsonUnmarshallerContext>;
  
  THumanLoopQuotaExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EHumanLoopQuotaExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IHumanLoopQuotaExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EHumanLoopQuotaExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHumanLoopQuotaExceededException; overload;
    class function Instance: IHumanLoopQuotaExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ THumanLoopQuotaExceededExceptionUnmarshaller }

function THumanLoopQuotaExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EHumanLoopQuotaExceededException;
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

function THumanLoopQuotaExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EHumanLoopQuotaExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EHumanLoopQuotaExceededException;
begin
  UnmarshalledObject := EHumanLoopQuotaExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('QuotaCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.QuotaCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ServiceCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ServiceCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor THumanLoopQuotaExceededExceptionUnmarshaller.Create;
begin
  FInstance := THumanLoopQuotaExceededExceptionUnmarshaller.Create;
end;

class function THumanLoopQuotaExceededExceptionUnmarshaller.Instance: IHumanLoopQuotaExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
