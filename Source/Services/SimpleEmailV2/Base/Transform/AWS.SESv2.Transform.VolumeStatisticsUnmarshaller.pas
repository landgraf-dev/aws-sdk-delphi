unit AWS.SESv2.Transform.VolumeStatisticsUnmarshaller;

interface

uses
  AWS.SESv2.Model.VolumeStatistics, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVolumeStatisticsUnmarshaller = IUnmarshaller<TVolumeStatistics, TJsonUnmarshallerContext>;
  
  TVolumeStatisticsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVolumeStatistics, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IVolumeStatisticsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TVolumeStatistics;
    class function JsonInstance: IVolumeStatisticsUnmarshaller; static;
  end;
  
implementation

{ TVolumeStatisticsUnmarshaller }

function TVolumeStatisticsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TVolumeStatistics;
var
  TargetDepth: Integer;
  UnmarshalledObject: TVolumeStatistics;
begin
  UnmarshalledObject := TVolumeStatistics.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InboxRawCount', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.InboxRawCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProjectedInbox', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.ProjectedInbox := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProjectedSpam', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.ProjectedSpam := Unmarshaller.Unmarshall(AContext);
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

class constructor TVolumeStatisticsUnmarshaller.Create;
begin
  FJsonInstance := TVolumeStatisticsUnmarshaller.Create;
end;

class function TVolumeStatisticsUnmarshaller.JsonInstance: IVolumeStatisticsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
