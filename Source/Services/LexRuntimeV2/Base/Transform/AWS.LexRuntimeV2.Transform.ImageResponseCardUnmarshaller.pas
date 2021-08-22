unit AWS.LexRuntimeV2.Transform.ImageResponseCardUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.ImageResponseCard, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.LexRuntimeV2.Transform.ButtonUnmarshaller, 
  AWS.LexRuntimeV2.Model.Button, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IImageResponseCardUnmarshaller = IUnmarshaller<TImageResponseCard, TJsonUnmarshallerContext>;
  
  TImageResponseCardUnmarshaller = class(TInterfacedObject, IUnmarshaller<TImageResponseCard, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IImageResponseCardUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TImageResponseCard;
    class function JsonInstance: IImageResponseCardUnmarshaller; static;
  end;
  
implementation

{ TImageResponseCardUnmarshaller }

function TImageResponseCardUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TImageResponseCard;
var
  TargetDepth: Integer;
  UnmarshalledObject: TImageResponseCard;
begin
  UnmarshalledObject := TImageResponseCard.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('buttons', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TButton, IButtonUnmarshaller>.JsonNew(TButtonUnmarshaller.JsonInstance);
        UnmarshalledObject.Buttons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('imageUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ImageUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('subtitle', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Subtitle := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TImageResponseCardUnmarshaller.Create;
begin
  FJsonInstance := TImageResponseCardUnmarshaller.Create;
end;

class function TImageResponseCardUnmarshaller.JsonInstance: IImageResponseCardUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
