unit AWS.S3Control.Transform.StorageLensAwsOrgUnmarshaller;

interface

uses
  AWS.S3Control.Model.StorageLensAwsOrg, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStorageLensAwsOrgUnmarshaller = IUnmarshaller<TStorageLensAwsOrg, TXmlUnmarshallerContext>;
  
  TStorageLensAwsOrgUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageLensAwsOrg, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageLensAwsOrgUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensAwsOrg;
    class function Instance: IStorageLensAwsOrgUnmarshaller; static;
  end;
  
implementation

{ TStorageLensAwsOrgUnmarshaller }

function TStorageLensAwsOrgUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensAwsOrg;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageLensAwsOrg;
begin
  UnmarshalledObject := TStorageLensAwsOrg.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Arn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TStorageLensAwsOrgUnmarshaller.Create;
begin
  FInstance := TStorageLensAwsOrgUnmarshaller.Create;
end;

class function TStorageLensAwsOrgUnmarshaller.Instance: IStorageLensAwsOrgUnmarshaller;
begin
  Result := FInstance;
end;

end.
