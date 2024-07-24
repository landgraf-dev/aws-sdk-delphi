unit AWS.SSM.Transform.CloudWatchOutputConfigMarshaller;

interface

uses
  AWS.SSM.Model.CloudWatchOutputConfig, 
  AWS.Transform.RequestMarshaller;

type
  ICloudWatchOutputConfigMarshaller = IRequestMarshaller<TCloudWatchOutputConfig, TJsonMarshallerContext>;
  
  TCloudWatchOutputConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TCloudWatchOutputConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICloudWatchOutputConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCloudWatchOutputConfig; Context: TJsonMarshallerContext);
    class function Instance: ICloudWatchOutputConfigMarshaller; static;
  end;
  
implementation

{ TCloudWatchOutputConfigMarshaller }

procedure TCloudWatchOutputConfigMarshaller.Marshall(ARequestObject: TCloudWatchOutputConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCloudWatchLogGroupName then
  begin
    Context.Writer.WriteName('CloudWatchLogGroupName');
    Context.Writer.WriteString(ARequestObject.CloudWatchLogGroupName);
  end;
  if ARequestObject.IsSetCloudWatchOutputEnabled then
  begin
    Context.Writer.WriteName('CloudWatchOutputEnabled');
    Context.Writer.WriteBoolean(ARequestObject.CloudWatchOutputEnabled);
  end;
end;

class constructor TCloudWatchOutputConfigMarshaller.Create;
begin
  FInstance := TCloudWatchOutputConfigMarshaller.Create;
end;

class function TCloudWatchOutputConfigMarshaller.Instance: ICloudWatchOutputConfigMarshaller;
begin
  Result := FInstance;
end;

end.
