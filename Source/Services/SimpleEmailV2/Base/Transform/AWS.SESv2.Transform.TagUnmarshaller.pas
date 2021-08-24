unit AWS.SESv2.Transform.TagUnmarshaller;

interface

uses
  AWS.SESv2.Model.Tag, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITagUnmarshaller = IUnmarshaller<TTag, TJsonUnmarshallerContext>;
  
  TTagUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTag, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITagUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTag;
    class function JsonInstance: ITagUnmarshaller; static;
  end;
  
implementation

{ TTagUnmarshaller }

function TTagUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTag;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTag;
begin
  UnmarshalledObject := TTag.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Key', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTagUnmarshaller.Create;
begin
  FJsonInstance := TTagUnmarshaller.Create;
end;

class function TTagUnmarshaller.JsonInstance: ITagUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
