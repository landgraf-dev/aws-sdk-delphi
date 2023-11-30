unit AWS.S3.Transform.DeletedObjectUnmarshaller;

interface

uses
  AWS.S3.Model.DeletedObject, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeletedObjectUnmarshaller = IUnmarshaller<TDeletedObject, TXmlUnmarshallerContext>;
  
  TDeletedObjectUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeletedObject, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDeletedObjectUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDeletedObject;
    class function Instance: IDeletedObjectUnmarshaller; static;
  end;
  
implementation

{ TDeletedObjectUnmarshaller }

function TDeletedObjectUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDeletedObject;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDeletedObject;
begin
  UnmarshalledObject := TDeletedObject.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DeleteMarker', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.DeleteMarker := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DeleteMarkerVersionId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DeleteMarkerVersionId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('VersionId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VersionId := Unmarshaller.Unmarshall(AContext);
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

class constructor TDeletedObjectUnmarshaller.Create;
begin
  FInstance := TDeletedObjectUnmarshaller.Create;
end;

class function TDeletedObjectUnmarshaller.Instance: IDeletedObjectUnmarshaller;
begin
  Result := FInstance;
end;

end.
