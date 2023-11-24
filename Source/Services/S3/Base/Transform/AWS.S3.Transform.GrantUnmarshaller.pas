unit AWS.S3.Transform.GrantUnmarshaller;

interface

uses
  AWS.S3.Model.Grant, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.GranteeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IGrantUnmarshaller = IUnmarshaller<TGrant, TXmlUnmarshallerContext>;
  
  TGrantUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGrant, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IGrantUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TGrant;
    class function Instance: IGrantUnmarshaller; static;
  end;
  
implementation

{ TGrantUnmarshaller }

function TGrantUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TGrant;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TGrant;
begin
  UnmarshalledObject := TGrant.Create;
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

class constructor TGrantUnmarshaller.Create;
begin
  FInstance := TGrantUnmarshaller.Create;
end;

class function TGrantUnmarshaller.Instance: IGrantUnmarshaller;
begin
  Result := FInstance;
end;

end.
