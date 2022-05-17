unit AWS.Transcribe.Transform.InputDataConfigUnmarshaller;

interface

uses
  AWS.Transcribe.Model.InputDataConfig, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInputDataConfigUnmarshaller = IUnmarshaller<TInputDataConfig, TJsonUnmarshallerContext>;
  
  TInputDataConfigUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInputDataConfig, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInputDataConfigUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInputDataConfig;
    class function JsonInstance: IInputDataConfigUnmarshaller; static;
  end;
  
implementation

{ TInputDataConfigUnmarshaller }

function TInputDataConfigUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInputDataConfig;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInputDataConfig;
begin
  UnmarshalledObject := TInputDataConfig.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DataAccessRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataAccessRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Uri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Uri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TuningDataS3Uri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TuningDataS3Uri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInputDataConfigUnmarshaller.Create;
begin
  FJsonInstance := TInputDataConfigUnmarshaller.Create;
end;

class function TInputDataConfigUnmarshaller.JsonInstance: IInputDataConfigUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
