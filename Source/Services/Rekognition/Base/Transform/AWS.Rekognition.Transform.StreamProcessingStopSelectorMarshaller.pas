unit AWS.Rekognition.Transform.StreamProcessingStopSelectorMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessingStopSelector, 
  AWS.Transform.RequestMarshaller;

type
  IStreamProcessingStopSelectorMarshaller = IRequestMarshaller<TStreamProcessingStopSelector, TJsonMarshallerContext>;
  
  TStreamProcessingStopSelectorMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessingStopSelector, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessingStopSelectorMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessingStopSelector; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessingStopSelectorMarshaller; static;
  end;
  
implementation

{ TStreamProcessingStopSelectorMarshaller }

procedure TStreamProcessingStopSelectorMarshaller.Marshall(ARequestObject: TStreamProcessingStopSelector; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMaxDurationInSeconds then
  begin
    Context.Writer.WriteName('MaxDurationInSeconds');
    Context.Writer.WriteInteger(ARequestObject.MaxDurationInSeconds);
  end;
end;

class constructor TStreamProcessingStopSelectorMarshaller.Create;
begin
  FInstance := TStreamProcessingStopSelectorMarshaller.Create;
end;

class function TStreamProcessingStopSelectorMarshaller.Instance: IStreamProcessingStopSelectorMarshaller;
begin
  Result := FInstance;
end;

end.
