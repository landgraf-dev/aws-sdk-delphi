unit AWS.SES.Transform.BulkEmailDestinationStatusUnmarshaller;

interface

uses
  AWS.SES.Model.BulkEmailDestinationStatus, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBulkEmailDestinationStatusUnmarshaller = IUnmarshaller<TBulkEmailDestinationStatus, TXmlUnmarshallerContext>;
  
  TBulkEmailDestinationStatusUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBulkEmailDestinationStatus, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBulkEmailDestinationStatusUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBulkEmailDestinationStatus;
    class function Instance: IBulkEmailDestinationStatusUnmarshaller; static;
  end;
  
implementation

{ TBulkEmailDestinationStatusUnmarshaller }

function TBulkEmailDestinationStatusUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBulkEmailDestinationStatus;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TBulkEmailDestinationStatus;
begin
  UnmarshalledObject := TBulkEmailDestinationStatus.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Error', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Error := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MessageId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MessageId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TBulkEmailDestinationStatusUnmarshaller.Create;
begin
  FInstance := TBulkEmailDestinationStatusUnmarshaller.Create;
end;

class function TBulkEmailDestinationStatusUnmarshaller.Instance: IBulkEmailDestinationStatusUnmarshaller;
begin
  Result := FInstance;
end;

end.
