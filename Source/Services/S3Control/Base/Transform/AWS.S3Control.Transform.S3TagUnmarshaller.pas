unit AWS.S3Control.Transform.S3TagUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3Tag, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3TagUnmarshaller = IUnmarshaller<TS3Tag, TXmlUnmarshallerContext>;
  
  TS3TagUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Tag, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3TagUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Tag;
    class function Instance: IS3TagUnmarshaller; static;
  end;
  
implementation

{ TS3TagUnmarshaller }

function TS3TagUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Tag;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Tag;
begin
  UnmarshalledObject := TS3Tag.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Value', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3TagUnmarshaller.Create;
begin
  FInstance := TS3TagUnmarshaller.Create;
end;

class function TS3TagUnmarshaller.Instance: IS3TagUnmarshaller;
begin
  Result := FInstance;
end;

end.
