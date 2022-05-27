unit AWS.Textract.Transform.ExpenseDetectionUnmarshaller;

interface

uses
  AWS.Textract.Model.ExpenseDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.GeometryUnmarshaller;

type
  IExpenseDetectionUnmarshaller = IUnmarshaller<TExpenseDetection, TJsonUnmarshallerContext>;
  
  TExpenseDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExpenseDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IExpenseDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseDetection;
    class function JsonInstance: IExpenseDetectionUnmarshaller; static;
  end;
  
implementation

{ TExpenseDetectionUnmarshaller }

function TExpenseDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TExpenseDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TExpenseDetection;
begin
  UnmarshalledObject := TExpenseDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Geometry', TargetDepth) then
      begin
        var Unmarshaller := TGeometryUnmarshaller.JsonInstance;
        UnmarshalledObject.Geometry := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TExpenseDetectionUnmarshaller.Create;
begin
  FJsonInstance := TExpenseDetectionUnmarshaller.Create;
end;

class function TExpenseDetectionUnmarshaller.JsonInstance: IExpenseDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
