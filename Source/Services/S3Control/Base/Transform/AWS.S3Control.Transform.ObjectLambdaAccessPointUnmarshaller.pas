unit AWS.S3Control.Transform.ObjectLambdaAccessPointUnmarshaller;

interface

uses
  AWS.S3Control.Model.ObjectLambdaAccessPoint, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IObjectLambdaAccessPointUnmarshaller = IUnmarshaller<TObjectLambdaAccessPoint, TXmlUnmarshallerContext>;
  
  TObjectLambdaAccessPointUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLambdaAccessPoint, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLambdaAccessPointUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaAccessPoint;
    class function Instance: IObjectLambdaAccessPointUnmarshaller; static;
  end;
  
implementation

{ TObjectLambdaAccessPointUnmarshaller }

function TObjectLambdaAccessPointUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaAccessPoint;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLambdaAccessPoint;
begin
  UnmarshalledObject := TObjectLambdaAccessPoint.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ObjectLambdaAccessPointArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectLambdaAccessPointArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectLambdaAccessPointUnmarshaller.Create;
begin
  FInstance := TObjectLambdaAccessPointUnmarshaller.Create;
end;

class function TObjectLambdaAccessPointUnmarshaller.Instance: IObjectLambdaAccessPointUnmarshaller;
begin
  Result := FInstance;
end;

end.
