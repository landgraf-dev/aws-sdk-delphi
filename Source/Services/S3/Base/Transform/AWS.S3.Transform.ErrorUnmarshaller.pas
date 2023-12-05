unit AWS.S3.Transform.ErrorUnmarshaller;

interface

uses
  AWS.S3.Model.Error, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IErrorUnmarshaller = IUnmarshaller<TError, TXmlUnmarshallerContext>;
  
  TErrorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TError, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IErrorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TError;
    class function Instance: IErrorUnmarshaller; static;
  end;
  
implementation

{ TErrorUnmarshaller }

function TErrorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TError;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TError;
begin
  UnmarshalledObject := TError.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Code', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Code := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('VersionId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.VersionId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TErrorUnmarshaller.Create;
begin
  FInstance := TErrorUnmarshaller.Create;
end;

class function TErrorUnmarshaller.Instance: IErrorUnmarshaller;
begin
  Result := FInstance;
end;

end.
