unit AWS.SSM.Transform.InstanceAssociationUnmarshaller;

interface

uses
  AWS.SSM.Model.InstanceAssociation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInstanceAssociationUnmarshaller = IUnmarshaller<TInstanceAssociation, TJsonUnmarshallerContext>;
  
  TInstanceAssociationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstanceAssociation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceAssociationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociation;
    class function JsonInstance: IInstanceAssociationUnmarshaller; static;
  end;
  
implementation

{ TInstanceAssociationUnmarshaller }

function TInstanceAssociationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstanceAssociation;
begin
  UnmarshalledObject := TInstanceAssociation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Content', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Content := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstanceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstanceAssociationUnmarshaller.Create;
begin
  FJsonInstance := TInstanceAssociationUnmarshaller.Create;
end;

class function TInstanceAssociationUnmarshaller.JsonInstance: IInstanceAssociationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
