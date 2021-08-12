unit AWS.SNS.Transform.PhoneNumberInformationUnmarshaller;

interface

uses
  AWS.SNS.Model.PhoneNumberInformation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPhoneNumberInformationUnmarshaller = IUnmarshaller<TPhoneNumberInformation, TXmlUnmarshallerContext>;
  
  TPhoneNumberInformationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPhoneNumberInformation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IPhoneNumberInformationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TPhoneNumberInformation;
    class function Instance: IPhoneNumberInformationUnmarshaller; static;
  end;
  
implementation

{ TPhoneNumberInformationUnmarshaller }

function TPhoneNumberInformationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TPhoneNumberInformation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TPhoneNumberInformation;
begin
  UnmarshalledObject := TPhoneNumberInformation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CreatedAt', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreatedAt := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Iso2CountryCode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Iso2CountryCode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NumberCapabilities/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.NumberCapabilities.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('PhoneNumber', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.PhoneNumber := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RouteType', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.RouteType := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPhoneNumberInformationUnmarshaller.Create;
begin
  FInstance := TPhoneNumberInformationUnmarshaller.Create;
end;

class function TPhoneNumberInformationUnmarshaller.Instance: IPhoneNumberInformationUnmarshaller;
begin
  Result := FInstance;
end;

end.
