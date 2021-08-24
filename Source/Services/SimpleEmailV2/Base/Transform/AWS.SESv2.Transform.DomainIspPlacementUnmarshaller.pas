unit AWS.SESv2.Transform.DomainIspPlacementUnmarshaller;

interface

uses
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDomainIspPlacementUnmarshaller = IUnmarshaller<TDomainIspPlacement, TJsonUnmarshallerContext>;
  
  TDomainIspPlacementUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDomainIspPlacement, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDomainIspPlacementUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDomainIspPlacement;
    class function JsonInstance: IDomainIspPlacementUnmarshaller; static;
  end;
  
implementation

{ TDomainIspPlacementUnmarshaller }

function TDomainIspPlacementUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDomainIspPlacement;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDomainIspPlacement;
begin
  UnmarshalledObject := TDomainIspPlacement.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InboxPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.InboxPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InboxRawCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.InboxRawCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IspName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IspName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpamPercentage', TargetDepth) then
      begin
        var Unmarshaller := TDoubleUnmarshaller.JsonInstance;
        UnmarshalledObject.SpamPercentage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpamRawCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.SpamRawCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDomainIspPlacementUnmarshaller.Create;
begin
  FJsonInstance := TDomainIspPlacementUnmarshaller.Create;
end;

class function TDomainIspPlacementUnmarshaller.JsonInstance: IDomainIspPlacementUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
