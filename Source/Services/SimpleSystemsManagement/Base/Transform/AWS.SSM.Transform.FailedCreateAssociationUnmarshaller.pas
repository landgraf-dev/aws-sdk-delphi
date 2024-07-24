unit AWS.SSM.Transform.FailedCreateAssociationUnmarshaller;

interface

uses
  AWS.SSM.Model.FailedCreateAssociation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.CreateAssociationBatchRequestEntryUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFailedCreateAssociationUnmarshaller = IUnmarshaller<TFailedCreateAssociation, TJsonUnmarshallerContext>;
  
  TFailedCreateAssociationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFailedCreateAssociation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFailedCreateAssociationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFailedCreateAssociation;
    class function JsonInstance: IFailedCreateAssociationUnmarshaller; static;
  end;
  
implementation

{ TFailedCreateAssociationUnmarshaller }

function TFailedCreateAssociationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFailedCreateAssociation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFailedCreateAssociation;
begin
  UnmarshalledObject := TFailedCreateAssociation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Entry', TargetDepth) then
      begin
        var Unmarshaller := TCreateAssociationBatchRequestEntryUnmarshaller.JsonInstance;
        UnmarshalledObject.Entry := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Fault', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Fault := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Message', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFailedCreateAssociationUnmarshaller.Create;
begin
  FJsonInstance := TFailedCreateAssociationUnmarshaller.Create;
end;

class function TFailedCreateAssociationUnmarshaller.JsonInstance: IFailedCreateAssociationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
