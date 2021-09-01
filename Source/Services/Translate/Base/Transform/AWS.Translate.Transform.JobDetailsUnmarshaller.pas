unit AWS.Translate.Transform.JobDetailsUnmarshaller;

interface

uses
  AWS.Translate.Model.JobDetails, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobDetailsUnmarshaller = IUnmarshaller<TJobDetails, TJsonUnmarshallerContext>;
  
  TJobDetailsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobDetails, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IJobDetailsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TJobDetails;
    class function JsonInstance: IJobDetailsUnmarshaller; static;
  end;
  
implementation

{ TJobDetailsUnmarshaller }

function TJobDetailsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TJobDetails;
var
  TargetDepth: Integer;
  UnmarshalledObject: TJobDetails;
begin
  UnmarshalledObject := TJobDetails.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DocumentsWithErrorsCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentsWithErrorsCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InputDocumentsCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.InputDocumentsCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranslatedDocumentsCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TranslatedDocumentsCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TJobDetailsUnmarshaller.Create;
begin
  FJsonInstance := TJobDetailsUnmarshaller.Create;
end;

class function TJobDetailsUnmarshaller.JsonInstance: IJobDetailsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
