unit AWS.Rekognition.Transform.TestingDataResultUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TestingDataResult, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.TestingDataUnmarshaller, 
  AWS.Rekognition.Transform.ValidationDataUnmarshaller;

type
  ITestingDataResultUnmarshaller = IUnmarshaller<TTestingDataResult, TJsonUnmarshallerContext>;
  
  TTestingDataResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTestingDataResult, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITestingDataResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTestingDataResult;
    class function JsonInstance: ITestingDataResultUnmarshaller; static;
  end;
  
implementation

{ TTestingDataResultUnmarshaller }

function TTestingDataResultUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTestingDataResult;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTestingDataResult;
begin
  UnmarshalledObject := TTestingDataResult.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Input', TargetDepth) then
      begin
        var Unmarshaller := TTestingDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Input := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Output', TargetDepth) then
      begin
        var Unmarshaller := TTestingDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Output := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Validation', TargetDepth) then
      begin
        var Unmarshaller := TValidationDataUnmarshaller.JsonInstance;
        UnmarshalledObject.Validation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTestingDataResultUnmarshaller.Create;
begin
  FJsonInstance := TTestingDataResultUnmarshaller.Create;
end;

class function TTestingDataResultUnmarshaller.JsonInstance: ITestingDataResultUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
