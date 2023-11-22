unit AWS.S3Control.Transform.AwsLambdaTransformationUnmarshaller;

interface

uses
  AWS.S3Control.Model.AwsLambdaTransformation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAwsLambdaTransformationUnmarshaller = IUnmarshaller<TAwsLambdaTransformation, TXmlUnmarshallerContext>;
  
  TAwsLambdaTransformationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAwsLambdaTransformation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAwsLambdaTransformationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAwsLambdaTransformation;
    class function Instance: IAwsLambdaTransformationUnmarshaller; static;
  end;
  
implementation

{ TAwsLambdaTransformationUnmarshaller }

function TAwsLambdaTransformationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAwsLambdaTransformation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAwsLambdaTransformation;
begin
  UnmarshalledObject := TAwsLambdaTransformation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('FunctionArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FunctionArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('FunctionPayload', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FunctionPayload := Unmarshaller.Unmarshall(AContext);
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

class constructor TAwsLambdaTransformationUnmarshaller.Create;
begin
  FInstance := TAwsLambdaTransformationUnmarshaller.Create;
end;

class function TAwsLambdaTransformationUnmarshaller.Instance: IAwsLambdaTransformationUnmarshaller;
begin
  Result := FInstance;
end;

end.
