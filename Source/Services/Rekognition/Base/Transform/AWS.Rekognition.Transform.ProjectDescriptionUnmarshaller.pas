unit AWS.Rekognition.Transform.ProjectDescriptionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ProjectDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IProjectDescriptionUnmarshaller = IUnmarshaller<TProjectDescription, TJsonUnmarshallerContext>;
  
  TProjectDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProjectDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IProjectDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TProjectDescription;
    class function JsonInstance: IProjectDescriptionUnmarshaller; static;
  end;
  
implementation

{ TProjectDescriptionUnmarshaller }

function TProjectDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TProjectDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TProjectDescription;
begin
  UnmarshalledObject := TProjectDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreationTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProjectArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ProjectArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TProjectDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TProjectDescriptionUnmarshaller.Create;
end;

class function TProjectDescriptionUnmarshaller.JsonInstance: IProjectDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
