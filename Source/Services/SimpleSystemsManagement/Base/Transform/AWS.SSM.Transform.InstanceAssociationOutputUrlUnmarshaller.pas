unit AWS.SSM.Transform.InstanceAssociationOutputUrlUnmarshaller;

interface

uses
  AWS.SSM.Model.InstanceAssociationOutputUrl, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.S3OutputUrlUnmarshaller;

type
  IInstanceAssociationOutputUrlUnmarshaller = IUnmarshaller<TInstanceAssociationOutputUrl, TJsonUnmarshallerContext>;
  
  TInstanceAssociationOutputUrlUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstanceAssociationOutputUrl, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceAssociationOutputUrlUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationOutputUrl;
    class function JsonInstance: IInstanceAssociationOutputUrlUnmarshaller; static;
  end;
  
implementation

{ TInstanceAssociationOutputUrlUnmarshaller }

function TInstanceAssociationOutputUrlUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationOutputUrl;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstanceAssociationOutputUrl;
begin
  UnmarshalledObject := TInstanceAssociationOutputUrl.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('S3OutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TS3OutputUrlUnmarshaller.JsonInstance;
        UnmarshalledObject.S3OutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstanceAssociationOutputUrlUnmarshaller.Create;
begin
  FJsonInstance := TInstanceAssociationOutputUrlUnmarshaller.Create;
end;

class function TInstanceAssociationOutputUrlUnmarshaller.JsonInstance: IInstanceAssociationOutputUrlUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
