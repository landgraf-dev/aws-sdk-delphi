unit AWS.S3Control.Transform.S3ObjectMetadataUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3ObjectMetadata, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3ObjectMetadataUnmarshaller = IUnmarshaller<TS3ObjectMetadata, TXmlUnmarshallerContext>;
  
  TS3ObjectMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3ObjectMetadata, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3ObjectMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectMetadata;
    class function Instance: IS3ObjectMetadataUnmarshaller; static;
  end;
  
implementation

{ TS3ObjectMetadataUnmarshaller }

function TS3ObjectMetadataUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectMetadata;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3ObjectMetadata;
begin
  UnmarshalledObject := TS3ObjectMetadata.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CacheControl', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.CacheControl := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentDisposition', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ContentDisposition := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentEncoding', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ContentEncoding := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentLanguage', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ContentLanguage := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentLength', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.ContentLength := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentMD5', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ContentMD5 := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ContentType', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ContentType := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HttpExpiresDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.HttpExpiresDate := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RequesterCharged', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.RequesterCharged := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SSEAlgorithm', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SSEAlgorithm := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('UserMetadata', TargetDepth) then
        begin
          var Unmarshaller := TDictionaryUnmarshaller<string, string, IStringUnmarshaller, IStringUnmarshaller>.New(TStringUnmarshaller.Instance, TStringUnmarshaller.Instance);
          UnmarshalledObject.UserMetadata := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3ObjectMetadataUnmarshaller.Create;
begin
  FInstance := TS3ObjectMetadataUnmarshaller.Create;
end;

class function TS3ObjectMetadataUnmarshaller.Instance: IS3ObjectMetadataUnmarshaller;
begin
  Result := FInstance;
end;

end.
