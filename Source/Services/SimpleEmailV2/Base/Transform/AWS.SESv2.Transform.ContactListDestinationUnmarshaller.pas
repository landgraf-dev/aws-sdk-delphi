unit AWS.SESv2.Transform.ContactListDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.ContactListDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IContactListDestinationUnmarshaller = IUnmarshaller<TContactListDestination, TJsonUnmarshallerContext>;
  
  TContactListDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContactListDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IContactListDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TContactListDestination;
    class function JsonInstance: IContactListDestinationUnmarshaller; static;
  end;
  
implementation

{ TContactListDestinationUnmarshaller }

function TContactListDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TContactListDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TContactListDestination;
begin
  UnmarshalledObject := TContactListDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ContactListImportAction', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContactListImportAction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContactListName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContactListName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TContactListDestinationUnmarshaller.Create;
begin
  FJsonInstance := TContactListDestinationUnmarshaller.Create;
end;

class function TContactListDestinationUnmarshaller.JsonInstance: IContactListDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
