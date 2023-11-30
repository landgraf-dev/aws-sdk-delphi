unit AWS.S3Control.Transform.S3GrantUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3Grant, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3GranteeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3GrantUnmarshaller = IUnmarshaller<TS3Grant, TXmlUnmarshallerContext>;
  
  TS3GrantUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Grant, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3GrantUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Grant;
    class function Instance: IS3GrantUnmarshaller; static;
  end;
  
implementation

{ TS3GrantUnmarshaller }

function TS3GrantUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Grant;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Grant;
begin
  UnmarshalledObject := TS3Grant.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Grantee', TargetDepth) then
        begin
          var Unmarshaller := TS3GranteeUnmarshaller.Instance;
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TS3GrantUnmarshaller.Create;
begin
  FInstance := TS3GrantUnmarshaller.Create;
end;

class function TS3GrantUnmarshaller.Instance: IS3GrantUnmarshaller;
begin
  Result := FInstance;
end;

end.
