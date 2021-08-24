unit AWS.SESv2.Transform.ContactListUnmarshaller;

interface

uses
  AWS.SESv2.Model.ContactList, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IContactListUnmarshaller = IUnmarshaller<TContactList, TJsonUnmarshallerContext>;
  
  TContactListUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContactList, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IContactListUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TContactList;
    class function JsonInstance: IContactListUnmarshaller; static;
  end;
  
implementation

{ TContactListUnmarshaller }

function TContactListUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TContactList;
var
  TargetDepth: Integer;
  UnmarshalledObject: TContactList;
begin
  UnmarshalledObject := TContactList.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ContactListName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContactListName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TContactListUnmarshaller.Create;
begin
  FJsonInstance := TContactListUnmarshaller.Create;
end;

class function TContactListUnmarshaller.JsonInstance: IContactListUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
