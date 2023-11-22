unit AWS.S3Control.Transform.JobManifestSpecUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobManifestSpec, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobManifestSpecUnmarshaller = IUnmarshaller<TJobManifestSpec, TXmlUnmarshallerContext>;
  
  TJobManifestSpecUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobManifestSpec, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobManifestSpecUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifestSpec;
    class function Instance: IJobManifestSpecUnmarshaller; static;
  end;
  
implementation

{ TJobManifestSpecUnmarshaller }

function TJobManifestSpecUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobManifestSpec;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobManifestSpec;
begin
  UnmarshalledObject := TJobManifestSpec.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Fields/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Fields.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Format', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobManifestSpecUnmarshaller.Create;
begin
  FInstance := TJobManifestSpecUnmarshaller.Create;
end;

class function TJobManifestSpecUnmarshaller.Instance: IJobManifestSpecUnmarshaller;
begin
  Result := FInstance;
end;

end.
