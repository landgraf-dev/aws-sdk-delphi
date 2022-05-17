unit AWS.Transcribe.Transform.MediaMarshaller;

interface

uses
  AWS.Transcribe.Model.Media, 
  AWS.Transform.RequestMarshaller;

type
  IMediaMarshaller = IRequestMarshaller<TMedia, TJsonMarshallerContext>;
  
  TMediaMarshaller = class(TInterfacedObject, IRequestMarshaller<TMedia, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMediaMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMedia; Context: TJsonMarshallerContext);
    class function Instance: IMediaMarshaller; static;
  end;
  
implementation

{ TMediaMarshaller }

procedure TMediaMarshaller.Marshall(ARequestObject: TMedia; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMediaFileUri then
  begin
    Context.Writer.WriteName('MediaFileUri');
    Context.Writer.WriteString(ARequestObject.MediaFileUri);
  end;
end;

class constructor TMediaMarshaller.Create;
begin
  FInstance := TMediaMarshaller.Create;
end;

class function TMediaMarshaller.Instance: IMediaMarshaller;
begin
  Result := FInstance;
end;

end.
