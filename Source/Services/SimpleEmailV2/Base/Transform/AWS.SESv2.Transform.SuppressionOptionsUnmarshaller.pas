unit AWS.SESv2.Transform.SuppressionOptionsUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressionOptions, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressionOptionsUnmarshaller = IUnmarshaller<TSuppressionOptions, TJsonUnmarshallerContext>;
  
  TSuppressionOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressionOptions, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressionOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionOptions;
    class function JsonInstance: ISuppressionOptionsUnmarshaller; static;
  end;
  
implementation

{ TSuppressionOptionsUnmarshaller }

function TSuppressionOptionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionOptions;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressionOptions;
begin
  UnmarshalledObject := TSuppressionOptions.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SuppressedReasons', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SuppressedReasons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSuppressionOptionsUnmarshaller.Create;
begin
  FJsonInstance := TSuppressionOptionsUnmarshaller.Create;
end;

class function TSuppressionOptionsUnmarshaller.JsonInstance: ISuppressionOptionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
