unit AWS.Rekognition.Transform.SummaryUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Summary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.S3ObjectUnmarshaller;

type
  ISummaryUnmarshaller = IUnmarshaller<TSummary, TJsonUnmarshallerContext>;
  
  TSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSummary;
    class function JsonInstance: ISummaryUnmarshaller; static;
  end;
  
implementation

{ TSummaryUnmarshaller }

function TSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSummary;
begin
  UnmarshalledObject := TSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('S3Object', TargetDepth) then
      begin
        var Unmarshaller := TS3ObjectUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Object := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSummaryUnmarshaller.Create;
begin
  FJsonInstance := TSummaryUnmarshaller.Create;
end;

class function TSummaryUnmarshaller.JsonInstance: ISummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
