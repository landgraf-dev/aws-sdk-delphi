unit AWS.S3.Transform.TargetGrantUnmarshaller;

interface

uses
  AWS.S3.Model.TargetGrant, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.GranteeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITargetGrantUnmarshaller = IUnmarshaller<TTargetGrant, TXmlUnmarshallerContext>;
  
  TTargetGrantUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTargetGrant, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITargetGrantUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTargetGrant;
    class function Instance: ITargetGrantUnmarshaller; static;
  end;
  
implementation

{ TTargetGrantUnmarshaller }

function TTargetGrantUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTargetGrant;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTargetGrant;
begin
  UnmarshalledObject := TTargetGrant.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Grantee', TargetDepth) then
        begin
          var Unmarshaller := TGranteeUnmarshaller.Instance;
          UnmarshalledObject.Grantee := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Permission', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Permission := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTargetGrantUnmarshaller.Create;
begin
  FInstance := TTargetGrantUnmarshaller.Create;
end;

class function TTargetGrantUnmarshaller.Instance: ITargetGrantUnmarshaller;
begin
  Result := FInstance;
end;

end.
