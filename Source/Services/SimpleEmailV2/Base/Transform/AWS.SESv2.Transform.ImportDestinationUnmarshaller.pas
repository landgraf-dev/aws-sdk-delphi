unit AWS.SESv2.Transform.ImportDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.ImportDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.ContactListDestinationUnmarshaller, 
  AWS.SESv2.Transform.SuppressionListDestinationUnmarshaller;

type
  IImportDestinationUnmarshaller = IUnmarshaller<TImportDestination, TJsonUnmarshallerContext>;
  
  TImportDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TImportDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IImportDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TImportDestination;
    class function JsonInstance: IImportDestinationUnmarshaller; static;
  end;
  
implementation

{ TImportDestinationUnmarshaller }

function TImportDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TImportDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TImportDestination;
begin
  UnmarshalledObject := TImportDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ContactListDestination', TargetDepth) then
      begin
        var Unmarshaller := TContactListDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.ContactListDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SuppressionListDestination', TargetDepth) then
      begin
        var Unmarshaller := TSuppressionListDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.SuppressionListDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TImportDestinationUnmarshaller.Create;
begin
  FJsonInstance := TImportDestinationUnmarshaller.Create;
end;

class function TImportDestinationUnmarshaller.JsonInstance: IImportDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
