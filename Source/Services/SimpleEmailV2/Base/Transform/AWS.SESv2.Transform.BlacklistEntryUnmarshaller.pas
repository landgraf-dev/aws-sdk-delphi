unit AWS.SESv2.Transform.BlacklistEntryUnmarshaller;

interface

uses
  AWS.SESv2.Model.BlacklistEntry, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBlacklistEntryUnmarshaller = IUnmarshaller<TBlacklistEntry, TJsonUnmarshallerContext>;
  
  TBlacklistEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBlacklistEntry, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IBlacklistEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TBlacklistEntry;
    class function JsonInstance: IBlacklistEntryUnmarshaller; static;
  end;
  
implementation

{ TBlacklistEntryUnmarshaller }

function TBlacklistEntryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TBlacklistEntry;
var
  TargetDepth: Integer;
  UnmarshalledObject: TBlacklistEntry;
begin
  UnmarshalledObject := TBlacklistEntry.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ListingTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ListingTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RblName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RblName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TBlacklistEntryUnmarshaller.Create;
begin
  FJsonInstance := TBlacklistEntryUnmarshaller.Create;
end;

class function TBlacklistEntryUnmarshaller.JsonInstance: IBlacklistEntryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
