unit AWS.S3.Transform.IntelligentTieringConfigurationUnmarshaller;

interface

uses
  AWS.S3.Model.IntelligentTieringConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.IntelligentTieringFilterUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TieringUnmarshaller, 
  AWS.S3.Model.Tiering;

type
  IIntelligentTieringConfigurationUnmarshaller = IUnmarshaller<TIntelligentTieringConfiguration, TXmlUnmarshallerContext>;
  
  TIntelligentTieringConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIntelligentTieringConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIntelligentTieringConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringConfiguration;
    class function Instance: IIntelligentTieringConfigurationUnmarshaller; static;
  end;
  
implementation

{ TIntelligentTieringConfigurationUnmarshaller }

function TIntelligentTieringConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIntelligentTieringConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIntelligentTieringConfiguration;
begin
  UnmarshalledObject := TIntelligentTieringConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Filter', TargetDepth) then
        begin
          var Unmarshaller := TIntelligentTieringFilterUnmarshaller.Instance;
          UnmarshalledObject.Filter := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Tiering/member', TargetDepth) then
        begin
          var Unmarshaller := TTieringUnmarshaller.Instance;
          UnmarshalledObject.Tierings.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TIntelligentTieringConfigurationUnmarshaller.Create;
begin
  FInstance := TIntelligentTieringConfigurationUnmarshaller.Create;
end;

class function TIntelligentTieringConfigurationUnmarshaller.Instance: IIntelligentTieringConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
