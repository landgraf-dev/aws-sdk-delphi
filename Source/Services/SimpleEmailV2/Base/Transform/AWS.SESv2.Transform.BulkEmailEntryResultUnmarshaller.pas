unit AWS.SESv2.Transform.BulkEmailEntryResultUnmarshaller;

interface

uses
  AWS.SESv2.Model.BulkEmailEntryResult, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBulkEmailEntryResultUnmarshaller = IUnmarshaller<TBulkEmailEntryResult, TJsonUnmarshallerContext>;
  
  TBulkEmailEntryResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBulkEmailEntryResult, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IBulkEmailEntryResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TBulkEmailEntryResult;
    class function JsonInstance: IBulkEmailEntryResultUnmarshaller; static;
  end;
  
implementation

{ TBulkEmailEntryResultUnmarshaller }

function TBulkEmailEntryResultUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TBulkEmailEntryResult;
var
  TargetDepth: Integer;
  UnmarshalledObject: TBulkEmailEntryResult;
begin
  UnmarshalledObject := TBulkEmailEntryResult.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Error', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Error := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MessageId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MessageId := Unmarshaller.Unmarshall(AContext);
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

class constructor TBulkEmailEntryResultUnmarshaller.Create;
begin
  FJsonInstance := TBulkEmailEntryResultUnmarshaller.Create;
end;

class function TBulkEmailEntryResultUnmarshaller.JsonInstance: IBulkEmailEntryResultUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
