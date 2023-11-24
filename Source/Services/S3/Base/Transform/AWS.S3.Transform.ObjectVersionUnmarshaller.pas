unit AWS.S3.Transform.ObjectVersionUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectVersion, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.OwnerUnmarshaller;

type
  IObjectVersionUnmarshaller = IUnmarshaller<TObjectVersion, TXmlUnmarshallerContext>;
  
  TObjectVersionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectVersion, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectVersionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectVersion;
    class function Instance: IObjectVersionUnmarshaller; static;
  end;
  
implementation

{ TObjectVersionUnmarshaller }

function TObjectVersionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectVersion;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectVersion;
begin
  UnmarshalledObject := TObjectVersion.Create;
  try
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
        if AContext.TestExpression('IsLatest', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsLatest := Unmarshaller.Unmarshall(AContext);
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
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Size := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('VersionId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VersionId := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectVersionUnmarshaller.Create;
begin
  FInstance := TObjectVersionUnmarshaller.Create;
end;

class function TObjectVersionUnmarshaller.Instance: IObjectVersionUnmarshaller;
begin
  Result := FInstance;
end;

end.
