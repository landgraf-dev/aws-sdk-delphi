unit AWS.SSM.Transform.SessionUnmarshaller;

interface

uses
  AWS.SSM.Model.Session, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.SessionManagerOutputUrlUnmarshaller;

type
  ISessionUnmarshaller = IUnmarshaller<TSession, TJsonUnmarshallerContext>;
  
  TSessionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSession, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISessionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSession;
    class function JsonInstance: ISessionUnmarshaller; static;
  end;
  
implementation

{ TSessionUnmarshaller }

function TSessionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSession;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSession;
begin
  UnmarshalledObject := TSession.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Details', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Details := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.EndDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxSessionDuration', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxSessionDuration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TSessionManagerOutputUrlUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Owner', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Reason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Reason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SessionId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SessionId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Target', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Target := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSessionUnmarshaller.Create;
begin
  FJsonInstance := TSessionUnmarshaller.Create;
end;

class function TSessionUnmarshaller.JsonInstance: ISessionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
