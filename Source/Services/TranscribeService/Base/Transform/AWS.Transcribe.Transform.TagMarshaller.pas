unit AWS.Transcribe.Transform.TagMarshaller;

interface

uses
  AWS.Transcribe.Model.Tag, 
  AWS.Transform.RequestMarshaller;

type
  ITagMarshaller = IRequestMarshaller<TTag, TJsonMarshallerContext>;
  
  TTagMarshaller = class(TInterfacedObject, IRequestMarshaller<TTag, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITagMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTag; Context: TJsonMarshallerContext);
    class function Instance: ITagMarshaller; static;
  end;
  
implementation

{ TTagMarshaller }

procedure TTagMarshaller.Marshall(ARequestObject: TTag; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TTagMarshaller.Create;
begin
  FInstance := TTagMarshaller.Create;
end;

class function TTagMarshaller.Instance: ITagMarshaller;
begin
  Result := FInstance;
end;

end.
