unit AWS.S3Control.Transform.JobManifestUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobManifest, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.JobManifestLocationUnmarshaller, 
  AWS.S3Control.Transform.JobManifestSpecUnmarshaller;

type
  IJobManifestUnmarshaller = IUnmarshaller<TJobManifest, TXmlUnmarshallerContext>;
  
  TJobManifestUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobManifest, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobManifestUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifest;
    class function Instance: IJobManifestUnmarshaller; static;
  end;
  
implementation

{ TJobManifestUnmarshaller }

function TJobManifestUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifest;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobManifest;
begin
  UnmarshalledObject := TJobManifest.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Location', TargetDepth) then
        begin
          var Unmarshaller := TJobManifestLocationUnmarshaller.Instance;
          UnmarshalledObject.Location := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Spec', TargetDepth) then
        begin
          var Unmarshaller := TJobManifestSpecUnmarshaller.Instance;
          UnmarshalledObject.Spec := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobManifestUnmarshaller.Create;
begin
  FInstance := TJobManifestUnmarshaller.Create;
end;

class function TJobManifestUnmarshaller.Instance: IJobManifestUnmarshaller;
begin
  Result := FInstance;
end;

end.
