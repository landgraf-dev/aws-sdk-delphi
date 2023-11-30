unit AWS.S3Control.Transform.S3ObjectOwnerUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3ObjectOwner, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3ObjectOwnerUnmarshaller = IUnmarshaller<TS3ObjectOwner, TXmlUnmarshallerContext>;
  
  TS3ObjectOwnerUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3ObjectOwner, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3ObjectOwnerUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectOwner;
    class function Instance: IS3ObjectOwnerUnmarshaller; static;
  end;
  
implementation

{ TS3ObjectOwnerUnmarshaller }

function TS3ObjectOwnerUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectOwner;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3ObjectOwner;
begin
  UnmarshalledObject := TS3ObjectOwner.Create;
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TS3ObjectOwnerUnmarshaller.Create;
begin
  FInstance := TS3ObjectOwnerUnmarshaller.Create;
end;

class function TS3ObjectOwnerUnmarshaller.Instance: IS3ObjectOwnerUnmarshaller;
begin
  Result := FInstance;
end;

end.
