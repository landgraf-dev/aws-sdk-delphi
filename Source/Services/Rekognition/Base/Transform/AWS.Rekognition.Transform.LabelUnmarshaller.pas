unit AWS.Rekognition.Transform.LabelUnmarshaller;

interface

uses
  AWS.Rekognition.Model.LabelTypes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.InstanceUnmarshaller, 
  AWS.Rekognition.Model.Instance, 
  AWS.Rekognition.Transform.ParentUnmarshaller, 
  AWS.Rekognition.Model.Parent;

type
  ILabelUnmarshaller = IUnmarshaller<TLabel, TJsonUnmarshallerContext>;
  
  TLabelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLabel, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILabelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLabel;
    class function JsonInstance: ILabelUnmarshaller; static;
  end;
  
implementation

{ TLabelUnmarshaller }

function TLabelUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLabel;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLabel;
begin
  UnmarshalledObject := TLabel.Create;
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
      if AContext.TestExpression('Instances', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TInstance, IInstanceUnmarshaller>.JsonNew(TInstanceUnmarshaller.JsonInstance);
        UnmarshalledObject.Instances := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Parents', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TParent, IParentUnmarshaller>.JsonNew(TParentUnmarshaller.JsonInstance);
        UnmarshalledObject.Parents := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLabelUnmarshaller.Create;
begin
  FJsonInstance := TLabelUnmarshaller.Create;
end;

class function TLabelUnmarshaller.JsonInstance: ILabelUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
