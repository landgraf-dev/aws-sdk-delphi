unit AWS.S3.Transform.SourceSelectionCriteriaUnmarshaller;

interface

uses
  AWS.S3.Model.SourceSelectionCriteria, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ReplicaModificationsUnmarshaller, 
  AWS.S3.Transform.SseKmsEncryptedObjectsUnmarshaller;

type
  ISourceSelectionCriteriaUnmarshaller = IUnmarshaller<TSourceSelectionCriteria, TXmlUnmarshallerContext>;
  
  TSourceSelectionCriteriaUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSourceSelectionCriteria, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISourceSelectionCriteriaUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSourceSelectionCriteria;
    class function Instance: ISourceSelectionCriteriaUnmarshaller; static;
  end;
  
implementation

{ TSourceSelectionCriteriaUnmarshaller }

function TSourceSelectionCriteriaUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSourceSelectionCriteria;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSourceSelectionCriteria;
begin
  UnmarshalledObject := TSourceSelectionCriteria.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ReplicaModifications', TargetDepth) then
        begin
          var Unmarshaller := TReplicaModificationsUnmarshaller.Instance;
          UnmarshalledObject.ReplicaModifications := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SseKmsEncryptedObjects', TargetDepth) then
        begin
          var Unmarshaller := TSseKmsEncryptedObjectsUnmarshaller.Instance;
          UnmarshalledObject.SseKmsEncryptedObjects := Unmarshaller.Unmarshall(AContext);
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

class constructor TSourceSelectionCriteriaUnmarshaller.Create;
begin
  FInstance := TSourceSelectionCriteriaUnmarshaller.Create;
end;

class function TSourceSelectionCriteriaUnmarshaller.Instance: ISourceSelectionCriteriaUnmarshaller;
begin
  Result := FInstance;
end;

end.
