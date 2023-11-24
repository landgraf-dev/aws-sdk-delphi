unit AWS.S3.Transform.PartUnmarshaller;

interface

uses
  AWS.S3.Model.Part, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPartUnmarshaller = IUnmarshaller<TPart, TXmlUnmarshallerContext>;
  
  TPartUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPart, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPartUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPart;
    class function Instance: IPartUnmarshaller; static;
  end;
  
implementation

{ TPartUnmarshaller }

function TPartUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPart;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPart;
begin
  UnmarshalledObject := TPart.Create;
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
        if AContext.TestExpression('LastModified', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.LastModified := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('PartNumber', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.PartNumber := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Size', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Size := Unmarshaller.Unmarshall(AContext);
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

class constructor TPartUnmarshaller.Create;
begin
  FInstance := TPartUnmarshaller.Create;
end;

class function TPartUnmarshaller.Instance: IPartUnmarshaller;
begin
  Result := FInstance;
end;

end.
