unit AWS.S3.Transform.GranteeUnmarshaller;

interface

uses
  AWS.S3.Model.Grantee, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IGranteeUnmarshaller = IUnmarshaller<TGrantee, TXmlUnmarshallerContext>;
  
  TGranteeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGrantee, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IGranteeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TGrantee;
    class function Instance: IGranteeUnmarshaller; static;
  end;
  
implementation

{ TGranteeUnmarshaller }

function TGranteeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TGrantee;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TGrantee;
begin
  UnmarshalledObject := TGrantee.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DisplayName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('EmailAddress', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.EmailAddress := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('xsi:type', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('URI', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.URI := Unmarshaller.Unmarshall(AContext);
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

class constructor TGranteeUnmarshaller.Create;
begin
  FInstance := TGranteeUnmarshaller.Create;
end;

class function TGranteeUnmarshaller.Instance: IGranteeUnmarshaller;
begin
  Result := FInstance;
end;

end.
