unit AWS.S3.Transform.ServerSideEncryptionByDefaultUnmarshaller;

interface

uses
  AWS.S3.Model.ServerSideEncryptionByDefault, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IServerSideEncryptionByDefaultUnmarshaller = IUnmarshaller<TServerSideEncryptionByDefault, TXmlUnmarshallerContext>;
  
  TServerSideEncryptionByDefaultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TServerSideEncryptionByDefault, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IServerSideEncryptionByDefaultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionByDefault;
    class function Instance: IServerSideEncryptionByDefaultUnmarshaller; static;
  end;
  
implementation

{ TServerSideEncryptionByDefaultUnmarshaller }

function TServerSideEncryptionByDefaultUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TServerSideEncryptionByDefault;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TServerSideEncryptionByDefault;
begin
  UnmarshalledObject := TServerSideEncryptionByDefault.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('KMSMasterKeyID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.KMSMasterKeyID := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SSEAlgorithm', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SSEAlgorithm := Unmarshaller.Unmarshall(AContext);
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

class constructor TServerSideEncryptionByDefaultUnmarshaller.Create;
begin
  FInstance := TServerSideEncryptionByDefaultUnmarshaller.Create;
end;

class function TServerSideEncryptionByDefaultUnmarshaller.Instance: IServerSideEncryptionByDefaultUnmarshaller;
begin
  Result := FInstance;
end;

end.
