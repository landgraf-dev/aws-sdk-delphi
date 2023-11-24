unit AWS.S3.Transform.DeleteMarkerEntryUnmarshaller;

interface

uses
  AWS.S3.Model.DeleteMarkerEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.OwnerUnmarshaller;

type
  IDeleteMarkerEntryUnmarshaller = IUnmarshaller<TDeleteMarkerEntry, TXmlUnmarshallerContext>;
  
  TDeleteMarkerEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeleteMarkerEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDeleteMarkerEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMarkerEntry;
    class function Instance: IDeleteMarkerEntryUnmarshaller; static;
  end;
  
implementation

{ TDeleteMarkerEntryUnmarshaller }

function TDeleteMarkerEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDeleteMarkerEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDeleteMarkerEntry;
begin
  UnmarshalledObject := TDeleteMarkerEntry.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('IsLatest', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsLatest := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('LastModified', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.LastModified := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TOwnerUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
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
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDeleteMarkerEntryUnmarshaller.Create;
begin
  FInstance := TDeleteMarkerEntryUnmarshaller.Create;
end;

class function TDeleteMarkerEntryUnmarshaller.Instance: IDeleteMarkerEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.
