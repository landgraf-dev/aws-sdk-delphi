unit AWS.S3.Transform.RedirectAllRequestsToUnmarshaller;

interface

uses
  AWS.S3.Model.RedirectAllRequestsTo, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRedirectAllRequestsToUnmarshaller = IUnmarshaller<TRedirectAllRequestsTo, TXmlUnmarshallerContext>;
  
  TRedirectAllRequestsToUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRedirectAllRequestsTo, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRedirectAllRequestsToUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TRedirectAllRequestsTo;
    class function Instance: IRedirectAllRequestsToUnmarshaller; static;
  end;
  
implementation

{ TRedirectAllRequestsToUnmarshaller }

function TRedirectAllRequestsToUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TRedirectAllRequestsTo;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TRedirectAllRequestsTo;
begin
  UnmarshalledObject := TRedirectAllRequestsTo.Create;
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
        if AContext.TestExpression('Protocol', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Protocol := Unmarshaller.Unmarshall(AContext);
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

class constructor TRedirectAllRequestsToUnmarshaller.Create;
begin
  FInstance := TRedirectAllRequestsToUnmarshaller.Create;
end;

class function TRedirectAllRequestsToUnmarshaller.Instance: IRedirectAllRequestsToUnmarshaller;
begin
  Result := FInstance;
end;

end.
