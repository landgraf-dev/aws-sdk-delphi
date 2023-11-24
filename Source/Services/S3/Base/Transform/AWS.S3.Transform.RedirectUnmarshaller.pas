unit AWS.S3.Transform.RedirectUnmarshaller;

interface

uses
  AWS.S3.Model.Redirect, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRedirectUnmarshaller = IUnmarshaller<TRedirect, TXmlUnmarshallerContext>;
  
  TRedirectUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRedirect, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRedirectUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TRedirect;
    class function Instance: IRedirectUnmarshaller; static;
  end;
  
implementation

{ TRedirectUnmarshaller }

function TRedirectUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TRedirect;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TRedirect;
begin
  UnmarshalledObject := TRedirect.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('HostName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HostName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HttpRedirectCode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HttpRedirectCode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Protocol', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Protocol := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReplaceKeyPrefixWith', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ReplaceKeyPrefixWith := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReplaceKeyWith', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ReplaceKeyWith := Unmarshaller.Unmarshall(AContext);
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

class constructor TRedirectUnmarshaller.Create;
begin
  FInstance := TRedirectUnmarshaller.Create;
end;

class function TRedirectUnmarshaller.Instance: IRedirectUnmarshaller;
begin
  Result := FInstance;
end;

end.
