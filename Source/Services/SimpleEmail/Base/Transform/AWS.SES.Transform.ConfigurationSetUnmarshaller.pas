unit AWS.SES.Transform.ConfigurationSetUnmarshaller;

interface

uses
  AWS.SES.Model.ConfigurationSet, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConfigurationSetUnmarshaller = IUnmarshaller<TConfigurationSet, TXmlUnmarshallerContext>;
  
  TConfigurationSetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TConfigurationSet, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IConfigurationSetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TConfigurationSet;
    class function Instance: IConfigurationSetUnmarshaller; static;
  end;
  
implementation

{ TConfigurationSetUnmarshaller }

function TConfigurationSetUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TConfigurationSet;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TConfigurationSet;
begin
  UnmarshalledObject := TConfigurationSet.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
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

class constructor TConfigurationSetUnmarshaller.Create;
begin
  FInstance := TConfigurationSetUnmarshaller.Create;
end;

class function TConfigurationSetUnmarshaller.Instance: IConfigurationSetUnmarshaller;
begin
  Result := FInstance;
end;

end.
