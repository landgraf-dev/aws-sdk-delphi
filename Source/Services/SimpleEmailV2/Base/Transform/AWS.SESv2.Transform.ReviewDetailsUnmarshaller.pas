unit AWS.SESv2.Transform.ReviewDetailsUnmarshaller;

interface

uses
  AWS.SESv2.Model.ReviewDetails, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReviewDetailsUnmarshaller = IUnmarshaller<TReviewDetails, TJsonUnmarshallerContext>;
  
  TReviewDetailsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReviewDetails, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IReviewDetailsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TReviewDetails;
    class function JsonInstance: IReviewDetailsUnmarshaller; static;
  end;
  
implementation

{ TReviewDetailsUnmarshaller }

function TReviewDetailsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TReviewDetails;
var
  TargetDepth: Integer;
  UnmarshalledObject: TReviewDetails;
begin
  UnmarshalledObject := TReviewDetails.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CaseId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CaseId := Unmarshaller.Unmarshall(AContext);
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

class constructor TReviewDetailsUnmarshaller.Create;
begin
  FJsonInstance := TReviewDetailsUnmarshaller.Create;
end;

class function TReviewDetailsUnmarshaller.JsonInstance: IReviewDetailsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
