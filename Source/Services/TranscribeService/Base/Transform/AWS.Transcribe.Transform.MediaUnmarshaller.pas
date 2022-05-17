unit AWS.Transcribe.Transform.MediaUnmarshaller;

interface

uses
  AWS.Transcribe.Model.Media, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMediaUnmarshaller = IUnmarshaller<TMedia, TJsonUnmarshallerContext>;
  
  TMediaUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMedia, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMediaUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMedia;
    class function JsonInstance: IMediaUnmarshaller; static;
  end;
  
implementation

{ TMediaUnmarshaller }

function TMediaUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMedia;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMedia;
begin
  UnmarshalledObject := TMedia.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('MediaFileUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MediaFileUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMediaUnmarshaller.Create;
begin
  FJsonInstance := TMediaUnmarshaller.Create;
end;

class function TMediaUnmarshaller.JsonInstance: IMediaUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
