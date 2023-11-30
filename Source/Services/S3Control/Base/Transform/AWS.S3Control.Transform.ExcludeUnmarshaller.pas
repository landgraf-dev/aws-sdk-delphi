unit AWS.S3Control.Transform.ExcludeUnmarshaller;

interface

uses
  AWS.S3Control.Model.Exclude, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IExcludeUnmarshaller = IUnmarshaller<TExclude, TXmlUnmarshallerContext>;
  
  TExcludeUnmarshaller = class(TInterfacedObject, IUnmarshaller<TExclude, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IExcludeUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TExclude;
    class function Instance: IExcludeUnmarshaller; static;
  end;
  
implementation

{ TExcludeUnmarshaller }

function TExcludeUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TExclude;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TExclude;
begin
  UnmarshalledObject := TExclude.Create;
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

class constructor TExcludeUnmarshaller.Create;
begin
  FInstance := TExcludeUnmarshaller.Create;
end;

class function TExcludeUnmarshaller.Instance: IExcludeUnmarshaller;
begin
  Result := FInstance;
end;

end.
