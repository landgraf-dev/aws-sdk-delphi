unit AWS.SSM.Transform.TargetLocationMarshaller;

interface

uses
  AWS.SSM.Model.TargetLocation, 
  AWS.Transform.RequestMarshaller;

type
  ITargetLocationMarshaller = IRequestMarshaller<TTargetLocation, TJsonMarshallerContext>;
  
  TTargetLocationMarshaller = class(TInterfacedObject, IRequestMarshaller<TTargetLocation, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITargetLocationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTargetLocation; Context: TJsonMarshallerContext);
    class function Instance: ITargetLocationMarshaller; static;
  end;
  
implementation

{ TTargetLocationMarshaller }

procedure TTargetLocationMarshaller.Marshall(ARequestObject: TTargetLocation; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAccounts then
  begin
    Context.Writer.WriteName('Accounts');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectAccountsListValue in ARequestObject.Accounts do
      Context.Writer.WriteString(ARequestObjectAccountsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetExecutionRoleName then
  begin
    Context.Writer.WriteName('ExecutionRoleName');
    Context.Writer.WriteString(ARequestObject.ExecutionRoleName);
  end;
  if ARequestObject.IsSetRegions then
  begin
    Context.Writer.WriteName('Regions');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectRegionsListValue in ARequestObject.Regions do
      Context.Writer.WriteString(ARequestObjectRegionsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTargetLocationMaxConcurrency then
  begin
    Context.Writer.WriteName('TargetLocationMaxConcurrency');
    Context.Writer.WriteString(ARequestObject.TargetLocationMaxConcurrency);
  end;
  if ARequestObject.IsSetTargetLocationMaxErrors then
  begin
    Context.Writer.WriteName('TargetLocationMaxErrors');
    Context.Writer.WriteString(ARequestObject.TargetLocationMaxErrors);
  end;
end;

class constructor TTargetLocationMarshaller.Create;
begin
  FInstance := TTargetLocationMarshaller.Create;
end;

class function TTargetLocationMarshaller.Instance: ITargetLocationMarshaller;
begin
  Result := FInstance;
end;

end.
