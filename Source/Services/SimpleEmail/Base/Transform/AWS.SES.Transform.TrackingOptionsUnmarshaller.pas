unit AWS.SES.Transform.TrackingOptionsUnmarshaller;

interface

uses
  AWS.SES.Model.TrackingOptions, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITrackingOptionsUnmarshaller = IUnmarshaller<TTrackingOptions, TXmlUnmarshallerContext>;
  
  TTrackingOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTrackingOptions, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITrackingOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTrackingOptions;
    class function Instance: ITrackingOptionsUnmarshaller; static;
  end;
  
implementation

{ TTrackingOptionsUnmarshaller }

function TTrackingOptionsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTrackingOptions;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTrackingOptions;
begin
  UnmarshalledObject := TTrackingOptions.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('CustomRedirectDomain', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.CustomRedirectDomain := Unmarshaller.Unmarshall(AContext);
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

class constructor TTrackingOptionsUnmarshaller.Create;
begin
  FInstance := TTrackingOptionsUnmarshaller.Create;
end;

class function TTrackingOptionsUnmarshaller.Instance: ITrackingOptionsUnmarshaller;
begin
  Result := FInstance;
end;

end.
