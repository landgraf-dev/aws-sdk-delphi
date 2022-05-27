unit AWS.Transcribe.Transform.SubtitlesMarshaller;

interface

uses
  AWS.Transcribe.Model.Subtitles, 
  AWS.Transform.RequestMarshaller;

type
  ISubtitlesMarshaller = IRequestMarshaller<TSubtitles, TJsonMarshallerContext>;
  
  TSubtitlesMarshaller = class(TInterfacedObject, IRequestMarshaller<TSubtitles, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISubtitlesMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSubtitles; Context: TJsonMarshallerContext);
    class function Instance: ISubtitlesMarshaller; static;
  end;
  
implementation

{ TSubtitlesMarshaller }

procedure TSubtitlesMarshaller.Marshall(ARequestObject: TSubtitles; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFormats then
  begin
    Context.Writer.WriteName('Formats');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectFormatsListValue in ARequestObject.Formats do
      Context.Writer.WriteString(ARequestObjectFormatsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetOutputStartIndex then
  begin
    Context.Writer.WriteName('OutputStartIndex');
    Context.Writer.WriteInteger(ARequestObject.OutputStartIndex);
  end;
end;

class constructor TSubtitlesMarshaller.Create;
begin
  FInstance := TSubtitlesMarshaller.Create;
end;

class function TSubtitlesMarshaller.Instance: ISubtitlesMarshaller;
begin
  Result := FInstance;
end;

end.
