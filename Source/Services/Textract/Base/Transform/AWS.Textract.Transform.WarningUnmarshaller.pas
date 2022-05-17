unit AWS.Textract.Transform.WarningUnmarshaller;

interface

uses
  AWS.Textract.Model.Warning, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IWarningUnmarshaller = IUnmarshaller<TWarning, TJsonUnmarshallerContext>;
  
  TWarningUnmarshaller = class(TInterfacedObject, IUnmarshaller<TWarning, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IWarningUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TWarning;
    class function JsonInstance: IWarningUnmarshaller; static;
  end;
  
implementation

{ TWarningUnmarshaller }

function TWarningUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TWarning;
var
  TargetDepth: Integer;
  UnmarshalledObject: TWarning;
begin
  UnmarshalledObject := TWarning.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ErrorCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ErrorCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Pages', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<Integer, IJsonIntegerUnmarshaller>.JsonNew(TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.Pages := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TWarningUnmarshaller.Create;
begin
  FJsonInstance := TWarningUnmarshaller.Create;
end;

class function TWarningUnmarshaller.JsonInstance: IWarningUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
