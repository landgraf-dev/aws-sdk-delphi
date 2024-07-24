unit AWS.SSM.Transform.RunbookMarshaller;

interface

uses
  AWS.SSM.Model.Runbook, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.TargetLocationMarshaller, 
  AWS.SSM.Transform.TargetMarshaller;

type
  IRunbookMarshaller = IRequestMarshaller<TRunbook, TJsonMarshallerContext>;
  
  TRunbookMarshaller = class(TInterfacedObject, IRequestMarshaller<TRunbook, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRunbookMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRunbook; Context: TJsonMarshallerContext);
    class function Instance: IRunbookMarshaller; static;
  end;
  
implementation

{ TRunbookMarshaller }

procedure TRunbookMarshaller.Marshall(ARequestObject: TRunbook; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDocumentName then
  begin
    Context.Writer.WriteName('DocumentName');
    Context.Writer.WriteString(ARequestObject.DocumentName);
  end;
  if ARequestObject.IsSetDocumentVersion then
  begin
    Context.Writer.WriteName('DocumentVersion');
    Context.Writer.WriteString(ARequestObject.DocumentVersion);
  end;
  if ARequestObject.IsSetMaxConcurrency then
  begin
    Context.Writer.WriteName('MaxConcurrency');
    Context.Writer.WriteString(ARequestObject.MaxConcurrency);
  end;
  if ARequestObject.IsSetMaxErrors then
  begin
    Context.Writer.WriteName('MaxErrors');
    Context.Writer.WriteString(ARequestObject.MaxErrors);
  end;
  if ARequestObject.IsSetParameters then
  begin
    Context.Writer.WriteName('Parameters');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectParametersKvp in ARequestObject.Parameters do
    begin
      Context.Writer.WriteName(ARequestObjectParametersKvp.Key);
      var ARequestObjectParametersValue := ARequestObjectParametersKvp.Value;
      Context.Writer.WriteBeginArray;
      for var ARequestObjectParametersValueListValue in ARequestObjectParametersValue do
        Context.Writer.WriteString(ARequestObjectParametersValueListValue);
      Context.Writer.WriteEndArray;
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetTargetLocations then
  begin
    Context.Writer.WriteName('TargetLocations');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetLocationsListValue in ARequestObject.TargetLocations do
    begin
      Context.Writer.WriteBeginObject;
      TTargetLocationMarshaller.Instance.Marshall(ARequestObjectTargetLocationsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTargetMaps then
  begin
    Context.Writer.WriteName('TargetMaps');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetMapsListValue in ARequestObject.TargetMaps do
    begin
      Context.Writer.WriteBeginObject;
      for var ARequestObjectTargetMapsListValueKvp in ARequestObjectTargetMapsListValue do
      begin
        Context.Writer.WriteName(ARequestObjectTargetMapsListValueKvp.Key);
        var ARequestObjectTargetMapsListValueValue := ARequestObjectTargetMapsListValueKvp.Value;
        Context.Writer.WriteBeginArray;
        for var ARequestObjectTargetMapsListValueValueListValue in ARequestObjectTargetMapsListValueValue do
          Context.Writer.WriteString(ARequestObjectTargetMapsListValueValueListValue);
        Context.Writer.WriteEndArray;
      end;
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTargetParameterName then
  begin
    Context.Writer.WriteName('TargetParameterName');
    Context.Writer.WriteString(ARequestObject.TargetParameterName);
  end;
  if ARequestObject.IsSetTargets then
  begin
    Context.Writer.WriteName('Targets');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetsListValue in ARequestObject.Targets do
    begin
      Context.Writer.WriteBeginObject;
      TTargetMarshaller.Instance.Marshall(ARequestObjectTargetsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TRunbookMarshaller.Create;
begin
  FInstance := TRunbookMarshaller.Create;
end;

class function TRunbookMarshaller.Instance: IRunbookMarshaller;
begin
  Result := FInstance;
end;

end.
