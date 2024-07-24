unit AWS.SSM.Transform.ReviewInformationUnmarshaller;

interface

uses
  AWS.SSM.Model.ReviewInformation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReviewInformationUnmarshaller = IUnmarshaller<TReviewInformation, TJsonUnmarshallerContext>;
  
  TReviewInformationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReviewInformation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IReviewInformationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TReviewInformation;
    class function JsonInstance: IReviewInformationUnmarshaller; static;
  end;
  
implementation

{ TReviewInformationUnmarshaller }

function TReviewInformationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TReviewInformation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TReviewInformation;
begin
  UnmarshalledObject := TReviewInformation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ReviewedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ReviewedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Reviewer', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Reviewer := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TReviewInformationUnmarshaller.Create;
begin
  FJsonInstance := TReviewInformationUnmarshaller.Create;
end;

class function TReviewInformationUnmarshaller.JsonInstance: IReviewInformationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
