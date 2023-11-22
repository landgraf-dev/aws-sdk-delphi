unit AWS.S3Control.Transform.LambdaInvokeOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.LambdaInvokeOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILambdaInvokeOperationUnmarshaller = IUnmarshaller<TLambdaInvokeOperation, TXmlUnmarshallerContext>;
  
  TLambdaInvokeOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLambdaInvokeOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILambdaInvokeOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLambdaInvokeOperation;
    class function Instance: ILambdaInvokeOperationUnmarshaller; static;
  end;
  
implementation

{ TLambdaInvokeOperationUnmarshaller }

function TLambdaInvokeOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLambdaInvokeOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLambdaInvokeOperation;
begin
  UnmarshalledObject := TLambdaInvokeOperation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('FunctionArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FunctionArn := Unmarshaller.Unmarshall(AContext);
          Continue;
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

class constructor TLambdaInvokeOperationUnmarshaller.Create;
begin
  FInstance := TLambdaInvokeOperationUnmarshaller.Create;
end;

class function TLambdaInvokeOperationUnmarshaller.Instance: ILambdaInvokeOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
