unit AWS.Transcribe.Transform.ContentRedactionUnmarshaller;

interface

uses
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IContentRedactionUnmarshaller = IUnmarshaller<TContentRedaction, TJsonUnmarshallerContext>;
  
  TContentRedactionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContentRedaction, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IContentRedactionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TContentRedaction;
    class function JsonInstance: IContentRedactionUnmarshaller; static;
  end;
  
implementation

{ TContentRedactionUnmarshaller }

function TContentRedactionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TContentRedaction;
var
  TargetDepth: Integer;
  UnmarshalledObject: TContentRedaction;
begin
  UnmarshalledObject := TContentRedaction.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('RedactionOutput', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RedactionOutput := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RedactionType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RedactionType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TContentRedactionUnmarshaller.Create;
begin
  FJsonInstance := TContentRedactionUnmarshaller.Create;
end;

class function TContentRedactionUnmarshaller.JsonInstance: IContentRedactionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
