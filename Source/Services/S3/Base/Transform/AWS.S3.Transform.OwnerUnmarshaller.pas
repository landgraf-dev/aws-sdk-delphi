unit AWS.S3.Transform.OwnerUnmarshaller;

interface

uses
  AWS.S3.Model.Owner, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOwnerUnmarshaller = IUnmarshaller<TOwner, TXmlUnmarshallerContext>;
  
  TOwnerUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOwner, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IOwnerUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TOwner;
    class function Instance: IOwnerUnmarshaller; static;
  end;
  
implementation

{ TOwnerUnmarshaller }

function TOwnerUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TOwner;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TOwner;
begin
  UnmarshalledObject := TOwner.Create;
  try
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
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
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

class constructor TOwnerUnmarshaller.Create;
begin
  FInstance := TOwnerUnmarshaller.Create;
end;

class function TOwnerUnmarshaller.Instance: IOwnerUnmarshaller;
begin
  Result := FInstance;
end;

end.
