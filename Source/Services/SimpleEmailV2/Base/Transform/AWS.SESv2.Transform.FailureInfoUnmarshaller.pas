unit AWS.SESv2.Transform.FailureInfoUnmarshaller;

interface

uses
  AWS.SESv2.Model.FailureInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFailureInfoUnmarshaller = IUnmarshaller<TFailureInfo, TJsonUnmarshallerContext>;
  
  TFailureInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFailureInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFailureInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFailureInfo;
    class function JsonInstance: IFailureInfoUnmarshaller; static;
  end;
  
implementation

{ TFailureInfoUnmarshaller }

function TFailureInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFailureInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFailureInfo;
begin
  UnmarshalledObject := TFailureInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ErrorMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ErrorMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailedRecordsS3Url', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailedRecordsS3Url := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFailureInfoUnmarshaller.Create;
begin
  FJsonInstance := TFailureInfoUnmarshaller.Create;
end;

class function TFailureInfoUnmarshaller.JsonInstance: IFailureInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
