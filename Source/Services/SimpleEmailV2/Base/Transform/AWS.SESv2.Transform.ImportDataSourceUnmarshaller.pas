unit AWS.SESv2.Transform.ImportDataSourceUnmarshaller;

interface

uses
  AWS.SESv2.Model.ImportDataSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IImportDataSourceUnmarshaller = IUnmarshaller<TImportDataSource, TJsonUnmarshallerContext>;
  
  TImportDataSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TImportDataSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IImportDataSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TImportDataSource;
    class function JsonInstance: IImportDataSourceUnmarshaller; static;
  end;
  
implementation

{ TImportDataSourceUnmarshaller }

function TImportDataSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TImportDataSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TImportDataSource;
begin
  UnmarshalledObject := TImportDataSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DataFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Url', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Url := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TImportDataSourceUnmarshaller.Create;
begin
  FJsonInstance := TImportDataSourceUnmarshaller.Create;
end;

class function TImportDataSourceUnmarshaller.JsonInstance: IImportDataSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
