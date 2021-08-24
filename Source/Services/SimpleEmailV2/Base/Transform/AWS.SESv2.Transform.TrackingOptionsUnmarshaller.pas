unit AWS.SESv2.Transform.TrackingOptionsUnmarshaller;

interface

uses
  AWS.SESv2.Model.TrackingOptions, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITrackingOptionsUnmarshaller = IUnmarshaller<TTrackingOptions, TJsonUnmarshallerContext>;
  
  TTrackingOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTrackingOptions, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITrackingOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTrackingOptions;
    class function JsonInstance: ITrackingOptionsUnmarshaller; static;
  end;
  
implementation

{ TTrackingOptionsUnmarshaller }

function TTrackingOptionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTrackingOptions;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTrackingOptions;
begin
  UnmarshalledObject := TTrackingOptions.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('CustomRedirectDomain', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CustomRedirectDomain := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTrackingOptionsUnmarshaller.Create;
begin
  FJsonInstance := TTrackingOptionsUnmarshaller.Create;
end;

class function TTrackingOptionsUnmarshaller.JsonInstance: ITrackingOptionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
