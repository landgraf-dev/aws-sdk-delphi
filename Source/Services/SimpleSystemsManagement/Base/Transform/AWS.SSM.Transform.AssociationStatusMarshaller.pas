unit AWS.SSM.Transform.AssociationStatusMarshaller;

interface

uses
  System.DateUtils, 
  AWS.SSM.Model.AssociationStatus, 
  AWS.Transform.RequestMarshaller;

type
  IAssociationStatusMarshaller = IRequestMarshaller<TAssociationStatus, TJsonMarshallerContext>;
  
  TAssociationStatusMarshaller = class(TInterfacedObject, IRequestMarshaller<TAssociationStatus, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAssociationStatusMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAssociationStatus; Context: TJsonMarshallerContext);
    class function Instance: IAssociationStatusMarshaller; static;
  end;
  
implementation

{ TAssociationStatusMarshaller }

procedure TAssociationStatusMarshaller.Marshall(ARequestObject: TAssociationStatus; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAdditionalInfo then
  begin
    Context.Writer.WriteName('AdditionalInfo');
    Context.Writer.WriteString(ARequestObject.AdditionalInfo);
  end;
  if ARequestObject.IsSetDate then
  begin
    Context.Writer.WriteName('Date');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.Date, False));
  end;
  if ARequestObject.IsSetMessage then
  begin
    Context.Writer.WriteName('Message');
    Context.Writer.WriteString(ARequestObject.Message);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name.Value);
  end;
end;

class constructor TAssociationStatusMarshaller.Create;
begin
  FInstance := TAssociationStatusMarshaller.Create;
end;

class function TAssociationStatusMarshaller.Instance: IAssociationStatusMarshaller;
begin
  Result := FInstance;
end;

end.
