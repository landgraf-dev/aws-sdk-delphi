unit AWS.Textract.Transform.QueryUnmarshaller;

interface

uses
  AWS.Textract.Model.Query, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IQueryUnmarshaller = IUnmarshaller<TQuery, TJsonUnmarshallerContext>;
  
  TQueryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TQuery, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IQueryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TQuery;
    class function JsonInstance: IQueryUnmarshaller; static;
  end;
  
implementation

{ TQueryUnmarshaller }

function TQueryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TQuery;
var
  TargetDepth: Integer;
  UnmarshalledObject: TQuery;
begin
  UnmarshalledObject := TQuery.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Alias', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Alias := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Pages', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Pages := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TQueryUnmarshaller.Create;
begin
  FJsonInstance := TQueryUnmarshaller.Create;
end;

class function TQueryUnmarshaller.JsonInstance: IQueryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
