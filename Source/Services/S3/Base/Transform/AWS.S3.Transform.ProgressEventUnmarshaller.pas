unit AWS.S3.Transform.ProgressEventUnmarshaller;

interface

uses
  AWS.S3.Model.ProgressEvent, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ProgressUnmarshaller;

type
  IProgressEventUnmarshaller = IUnmarshaller<TProgressEvent, TXmlUnmarshallerContext>;
  
  TProgressEventUnmarshaller = class(TInterfacedObject, IUnmarshaller<TProgressEvent, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IProgressEventUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TProgressEvent;
    class function Instance: IProgressEventUnmarshaller; static;
  end;
  
implementation

{ TProgressEventUnmarshaller }

function TProgressEventUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TProgressEvent;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TProgressEvent;
begin
  UnmarshalledObject := TProgressEvent.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Details', TargetDepth) then
        begin
          var Unmarshaller := TProgressUnmarshaller.Instance;
          UnmarshalledObject.Details := Unmarshaller.Unmarshall(AContext);
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

class constructor TProgressEventUnmarshaller.Create;
begin
  FInstance := TProgressEventUnmarshaller.Create;
end;

class function TProgressEventUnmarshaller.Instance: IProgressEventUnmarshaller;
begin
  Result := FInstance;
end;

end.
