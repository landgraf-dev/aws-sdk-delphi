unit AWS.SESv2.Transform.ContactUnmarshaller;

interface

uses
  AWS.SESv2.Model.Contact, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.TopicPreferenceUnmarshaller, 
  AWS.SESv2.Model.TopicPreference;

type
  IContactUnmarshaller = IUnmarshaller<TContact, TJsonUnmarshallerContext>;
  
  TContactUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContact, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IContactUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TContact;
    class function JsonInstance: IContactUnmarshaller; static;
  end;
  
implementation

{ TContactUnmarshaller }

function TContactUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TContact;
var
  TargetDepth: Integer;
  UnmarshalledObject: TContact;
begin
  UnmarshalledObject := TContact.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.EmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TopicDefaultPreferences', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTopicPreference, ITopicPreferenceUnmarshaller>.JsonNew(TTopicPreferenceUnmarshaller.JsonInstance);
        UnmarshalledObject.TopicDefaultPreferences := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TopicPreferences', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTopicPreference, ITopicPreferenceUnmarshaller>.JsonNew(TTopicPreferenceUnmarshaller.JsonInstance);
        UnmarshalledObject.TopicPreferences := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UnsubscribeAll', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.UnsubscribeAll := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TContactUnmarshaller.Create;
begin
  FJsonInstance := TContactUnmarshaller.Create;
end;

class function TContactUnmarshaller.JsonInstance: IContactUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
