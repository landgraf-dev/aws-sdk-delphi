unit AWS.S3Control.Transform.ObjectLambdaTransformationConfigurationUnmarshaller;

interface

uses
  AWS.S3Control.Model.ObjectLambdaTransformationConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.ObjectLambdaContentTransformationUnmarshaller;

type
  IObjectLambdaTransformationConfigurationUnmarshaller = IUnmarshaller<TObjectLambdaTransformationConfiguration, TXmlUnmarshallerContext>;
  
  TObjectLambdaTransformationConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLambdaTransformationConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLambdaTransformationConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaTransformationConfiguration;
    class function Instance: IObjectLambdaTransformationConfigurationUnmarshaller; static;
  end;
  
implementation

{ TObjectLambdaTransformationConfigurationUnmarshaller }

function TObjectLambdaTransformationConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaTransformationConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLambdaTransformationConfiguration;
begin
  UnmarshalledObject := TObjectLambdaTransformationConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Actions/Action', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Actions.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('ContentTransformation', TargetDepth) then
        begin
          var Unmarshaller := TObjectLambdaContentTransformationUnmarshaller.Instance;
          UnmarshalledObject.ContentTransformation := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectLambdaTransformationConfigurationUnmarshaller.Create;
begin
  FInstance := TObjectLambdaTransformationConfigurationUnmarshaller.Create;
end;

class function TObjectLambdaTransformationConfigurationUnmarshaller.Instance: IObjectLambdaTransformationConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
