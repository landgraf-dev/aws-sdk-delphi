unit AWS.S3Control.Transform.AccessPointUnmarshaller;

interface

uses
  AWS.S3Control.Model.AccessPoint, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.VpcConfigurationUnmarshaller;

type
  IAccessPointUnmarshaller = IUnmarshaller<TAccessPoint, TXmlUnmarshallerContext>;
  
  TAccessPointUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAccessPoint, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAccessPointUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAccessPoint;
    class function Instance: IAccessPointUnmarshaller; static;
  end;
  
implementation

{ TAccessPointUnmarshaller }

function TAccessPointUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAccessPoint;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAccessPoint;
begin
  UnmarshalledObject := TAccessPoint.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessPointArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AccessPointArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Bucket := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NetworkOrigin', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.NetworkOrigin := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('VpcConfiguration', TargetDepth) then
        begin
          var Unmarshaller := TVpcConfigurationUnmarshaller.Instance;
          UnmarshalledObject.VpcConfiguration := Unmarshaller.Unmarshall(AContext);
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

class constructor TAccessPointUnmarshaller.Create;
begin
  FInstance := TAccessPointUnmarshaller.Create;
end;

class function TAccessPointUnmarshaller.Instance: IAccessPointUnmarshaller;
begin
  Result := FInstance;
end;

end.
