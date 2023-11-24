unit AWS.S3.Model.AccessControlTranslation;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TAccessControlTranslation = class;
  
  IAccessControlTranslation = interface
    function GetOwner: TOwnerOverride;
    procedure SetOwner(const Value: TOwnerOverride);
    function Obj: TAccessControlTranslation;
    function IsSetOwner: Boolean;
    property Owner: TOwnerOverride read GetOwner write SetOwner;
  end;
  
  TAccessControlTranslation = class
  strict private
    FOwner: Nullable<TOwnerOverride>;
    function GetOwner: TOwnerOverride;
    procedure SetOwner(const Value: TOwnerOverride);
  strict protected
    function Obj: TAccessControlTranslation;
  public
    function IsSetOwner: Boolean;
    property Owner: TOwnerOverride read GetOwner write SetOwner;
  end;
  
implementation

{ TAccessControlTranslation }

function TAccessControlTranslation.Obj: TAccessControlTranslation;
begin
  Result := Self;
end;

function TAccessControlTranslation.GetOwner: TOwnerOverride;
begin
  Result := FOwner.ValueOrDefault;
end;

procedure TAccessControlTranslation.SetOwner(const Value: TOwnerOverride);
begin
  FOwner := Value;
end;

function TAccessControlTranslation.IsSetOwner: Boolean;
begin
  Result := FOwner.HasValue;
end;

end.
