unit AWS.Translate.Transform.TextTranslationJobFilterMarshaller;

interface

uses
  System.DateUtils, 
  AWS.Translate.Model.TextTranslationJobFilter, 
  AWS.Transform.RequestMarshaller;

type
  ITextTranslationJobFilterMarshaller = IRequestMarshaller<TTextTranslationJobFilter, TJsonMarshallerContext>;
  
  TTextTranslationJobFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TTextTranslationJobFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITextTranslationJobFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTextTranslationJobFilter; Context: TJsonMarshallerContext);
    class function Instance: ITextTranslationJobFilterMarshaller; static;
  end;
  
implementation

{ TTextTranslationJobFilterMarshaller }

procedure TTextTranslationJobFilterMarshaller.Marshall(ARequestObject: TTextTranslationJobFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetJobName then
  begin
    Context.Writer.WriteName('JobName');
    Context.Writer.WriteString(ARequestObject.JobName);
  end;
  if ARequestObject.IsSetJobStatus then
  begin
    Context.Writer.WriteName('JobStatus');
    Context.Writer.WriteString(ARequestObject.JobStatus.Value);
  end;
  if ARequestObject.IsSetSubmittedAfterTime then
  begin
    Context.Writer.WriteName('SubmittedAfterTime');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.SubmittedAfterTime, False));
  end;
  if ARequestObject.IsSetSubmittedBeforeTime then
  begin
    Context.Writer.WriteName('SubmittedBeforeTime');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.SubmittedBeforeTime, False));
  end;
end;

class constructor TTextTranslationJobFilterMarshaller.Create;
begin
  FInstance := TTextTranslationJobFilterMarshaller.Create;
end;

class function TTextTranslationJobFilterMarshaller.Instance: ITextTranslationJobFilterMarshaller;
begin
  Result := FInstance;
end;

end.
