unit AWS.SESv2.Transform.AccountDetailsUnmarshaller;

interface

uses
  AWS.SESv2.Model.AccountDetails, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.ReviewDetailsUnmarshaller;

type
  IAccountDetailsUnmarshaller = IUnmarshaller<TAccountDetails, TJsonUnmarshallerContext>;
  
  TAccountDetailsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAccountDetails, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAccountDetailsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAccountDetails;
    class function JsonInstance: IAccountDetailsUnmarshaller; static;
  end;
  
implementation

{ TAccountDetailsUnmarshaller }

function TAccountDetailsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAccountDetails;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAccountDetails;
begin
  UnmarshalledObject := TAccountDetails.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AdditionalContactEmailAddresses', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.AdditionalContactEmailAddresses := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContactLanguage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContactLanguage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MailType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MailType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReviewDetails', TargetDepth) then
      begin
        var Unmarshaller := TReviewDetailsUnmarshaller.JsonInstance;
        UnmarshalledObject.ReviewDetails := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UseCaseDescription', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.UseCaseDescription := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('WebsiteURL', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.WebsiteURL := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAccountDetailsUnmarshaller.Create;
begin
  FJsonInstance := TAccountDetailsUnmarshaller.Create;
end;

class function TAccountDetailsUnmarshaller.JsonInstance: IAccountDetailsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
