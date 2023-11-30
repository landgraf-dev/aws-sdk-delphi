unit AWS.S3Control.Transform.ObjectLambdaContentTransformationUnmarshaller;

interface

uses
  AWS.S3Control.Model.ObjectLambdaContentTransformation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.AwsLambdaTransformationUnmarshaller;

type
  IObjectLambdaContentTransformationUnmarshaller = IUnmarshaller<TObjectLambdaContentTransformation, TXmlUnmarshallerContext>;
  
  TObjectLambdaContentTransformationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLambdaContentTransformation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLambdaContentTransformationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaContentTransformation;
    class function Instance: IObjectLambdaContentTransformationUnmarshaller; static;
  end;
  
implementation

{ TObjectLambdaContentTransformationUnmarshaller }

function TObjectLambdaContentTransformationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLambdaContentTransformation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLambdaContentTransformation;
begin
  UnmarshalledObject := TObjectLambdaContentTransformation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('AwsLambda', TargetDepth) then
        begin
          var Unmarshaller := TAwsLambdaTransformationUnmarshaller.Instance;
          UnmarshalledObject.AwsLambda := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TObjectLambdaContentTransformationUnmarshaller.Create;
begin
  FInstance := TObjectLambdaContentTransformationUnmarshaller.Create;
end;

class function TObjectLambdaContentTransformationUnmarshaller.Instance: IObjectLambdaContentTransformationUnmarshaller;
begin
  Result := FInstance;
end;

end.
