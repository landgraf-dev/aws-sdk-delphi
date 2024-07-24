unit AWS.SSM.Transform.AssociationStatusUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationStatus, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAssociationStatusUnmarshaller = IUnmarshaller<TAssociationStatus, TJsonUnmarshallerContext>;
  
  TAssociationStatusUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationStatus, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationStatusUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationStatus;
    class function JsonInstance: IAssociationStatusUnmarshaller; static;
  end;
  
implementation

{ TAssociationStatusUnmarshaller }

function TAssociationStatusUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationStatus;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationStatus;
begin
  UnmarshalledObject := TAssociationStatus.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AdditionalInfo', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AdditionalInfo := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Date', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.Date := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAssociationStatusUnmarshaller.Create;
begin
  FJsonInstance := TAssociationStatusUnmarshaller.Create;
end;

class function TAssociationStatusUnmarshaller.JsonInstance: IAssociationStatusUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
