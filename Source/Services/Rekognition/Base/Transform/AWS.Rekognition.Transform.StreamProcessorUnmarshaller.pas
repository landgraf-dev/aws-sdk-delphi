unit AWS.Rekognition.Transform.StreamProcessorUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessor, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStreamProcessorUnmarshaller = IUnmarshaller<TStreamProcessor, TJsonUnmarshallerContext>;
  
  TStreamProcessorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessor, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessor;
    class function JsonInstance: IStreamProcessorUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorUnmarshaller }

function TStreamProcessorUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessor;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessor;
begin
  UnmarshalledObject := TStreamProcessor.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorUnmarshaller.Create;
end;

class function TStreamProcessorUnmarshaller.JsonInstance: IStreamProcessorUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
