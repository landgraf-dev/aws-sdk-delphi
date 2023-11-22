unit AWS.S3Control.Transform.StorageLensTagUnmarshaller;

interface

uses
  AWS.S3Control.Model.StorageLensTag, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStorageLensTagUnmarshaller = IUnmarshaller<TStorageLensTag, TXmlUnmarshallerContext>;
  
  TStorageLensTagUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageLensTag, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageLensTagUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensTag;
    class function Instance: IStorageLensTagUnmarshaller; static;
  end;
  
implementation

{ TStorageLensTagUnmarshaller }

function TStorageLensTagUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensTag;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageLensTag;
begin
  UnmarshalledObject := TStorageLensTag.Create;
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

class constructor TStorageLensTagUnmarshaller.Create;
begin
  FInstance := TStorageLensTagUnmarshaller.Create;
end;

class function TStorageLensTagUnmarshaller.Instance: IStorageLensTagUnmarshaller;
begin
  Result := FInstance;
end;

end.
