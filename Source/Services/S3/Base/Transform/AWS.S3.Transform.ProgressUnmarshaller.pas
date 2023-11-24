unit AWS.S3.Transform.ProgressUnmarshaller;

interface

uses
  AWS.S3.Model.Progress, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IProgressUnmarshaller = IUnmarshaller<TProgress, TXmlUnmarshallerContext>;
  
  TProgressUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProgress, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IProgressUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TProgress;
    class function Instance: IProgressUnmarshaller; static;
  end;
  
implementation

{ TProgressUnmarshaller }

function TProgressUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TProgress;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TProgress;
begin
  UnmarshalledObject := TProgress.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BytesProcessed', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesProcessed := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BytesReturned', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesReturned := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BytesScanned', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.BytesScanned := Unmarshaller.Unmarshall(AContext);
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

class constructor TProgressUnmarshaller.Create;
begin
  FInstance := TProgressUnmarshaller.Create;
end;

class function TProgressUnmarshaller.Instance: IProgressUnmarshaller;
begin
  Result := FInstance;
end;

end.
