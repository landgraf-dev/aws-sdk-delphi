unit AWS.S3Control.Transform.JobManifestLocationUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobManifestLocation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobManifestLocationUnmarshaller = IUnmarshaller<TJobManifestLocation, TXmlUnmarshallerContext>;
  
  TJobManifestLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobManifestLocation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobManifestLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifestLocation;
    class function Instance: IJobManifestLocationUnmarshaller; static;
  end;
  
implementation

{ TJobManifestLocationUnmarshaller }

function TJobManifestLocationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifestLocation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobManifestLocation;
begin
  UnmarshalledObject := TJobManifestLocation.Create;
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
        if AContext.TestExpression('ObjectArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ObjectVersionId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectVersionId := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobManifestLocationUnmarshaller.Create;
begin
  FInstance := TJobManifestLocationUnmarshaller.Create;
end;

class function TJobManifestLocationUnmarshaller.Instance: IJobManifestLocationUnmarshaller;
begin
  Result := FInstance;
end;

end.
