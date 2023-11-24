unit AWS.S3.Transform.PolicyStatusUnmarshaller;

interface

uses
  AWS.S3.Model.PolicyStatus, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPolicyStatusUnmarshaller = IUnmarshaller<TPolicyStatus, TXmlUnmarshallerContext>;
  
  TPolicyStatusUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPolicyStatus, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPolicyStatusUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPolicyStatus;
    class function Instance: IPolicyStatusUnmarshaller; static;
  end;
  
implementation

{ TPolicyStatusUnmarshaller }

function TPolicyStatusUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPolicyStatus;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPolicyStatus;
begin
  UnmarshalledObject := TPolicyStatus.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('IsPublic', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsPublic := Unmarshaller.Unmarshall(AContext);
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

class constructor TPolicyStatusUnmarshaller.Create;
begin
  FInstance := TPolicyStatusUnmarshaller.Create;
end;

class function TPolicyStatusUnmarshaller.Instance: IPolicyStatusUnmarshaller;
begin
  Result := FInstance;
end;

end.
