unit AWS.SSM.Transform.ActivationUnmarshaller;

interface

uses
  AWS.SSM.Model.Activation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.TagUnmarshaller, 
  AWS.SSM.Model.Tag;

type
  IActivationUnmarshaller = IUnmarshaller<TActivation, TJsonUnmarshallerContext>;
  
  TActivationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TActivation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IActivationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TActivation;
    class function JsonInstance: IActivationUnmarshaller; static;
  end;
  
implementation

{ TActivationUnmarshaller }

function TActivationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TActivation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TActivation;
begin
  UnmarshalledObject := TActivation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ActivationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ActivationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DefaultInstanceName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultInstanceName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExpirationDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ExpirationDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Expired', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Expired := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IamRole', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IamRole := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RegistrationLimit', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RegistrationLimit := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RegistrationsCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RegistrationsCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        UnmarshalledObject.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TActivationUnmarshaller.Create;
begin
  FJsonInstance := TActivationUnmarshaller.Create;
end;

class function TActivationUnmarshaller.JsonInstance: IActivationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
