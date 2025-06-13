unit AWS.S3.Transform.ObjectUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectTypes, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.OwnerUnmarshaller;

type
  IObjectUnmarshaller = IUnmarshaller<TS3Object, TXmlUnmarshallerContext>;
  
  TObjectUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Object, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Object;
    class function Instance: IObjectUnmarshaller; static;
  end;
  
implementation

{ TObjectUnmarshaller }

function TObjectUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Object;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Object;
begin
  UnmarshalledObject := TS3Object.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ETag', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ETag := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('LastModified', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.LastModified := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TOwnerUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Size', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.Size := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectUnmarshaller.Create;
begin
  FInstance := TObjectUnmarshaller.Create;
end;

class function TObjectUnmarshaller.Instance: IObjectUnmarshaller;
begin
  Result := FInstance;
end;

end.
