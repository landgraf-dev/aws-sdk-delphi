unit AWS.S3Control.Transform.IncludeUnmarshaller;

interface

uses
  AWS.S3Control.Model.Include, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIncludeUnmarshaller = IUnmarshaller<TInclude, TXmlUnmarshallerContext>;
  
  TIncludeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInclude, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIncludeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInclude;
    class function Instance: IIncludeUnmarshaller; static;
  end;
  
implementation

{ TIncludeUnmarshaller }

function TIncludeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInclude;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInclude;
begin
  UnmarshalledObject := TInclude.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Buckets/Arn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Buckets.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Regions/Region', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Regions.Add(Unmarshaller.Unmarshall(AContext));
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

class constructor TIncludeUnmarshaller.Create;
begin
  FInstance := TIncludeUnmarshaller.Create;
end;

class function TIncludeUnmarshaller.Instance: IIncludeUnmarshaller;
begin
  Result := FInstance;
end;

end.
