unit AWS.S3.Model.OwnershipControlsRule;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TOwnershipControlsRule = class;
  
  IOwnershipControlsRule = interface
    function GetObjectOwnership: TObjectOwnership;
    procedure SetObjectOwnership(const Value: TObjectOwnership);
    function Obj: TOwnershipControlsRule;
    function IsSetObjectOwnership: Boolean;
    property ObjectOwnership: TObjectOwnership read GetObjectOwnership write SetObjectOwnership;
  end;
  
  TOwnershipControlsRule = class
  strict private
    FObjectOwnership: Nullable<TObjectOwnership>;
    function GetObjectOwnership: TObjectOwnership;
    procedure SetObjectOwnership(const Value: TObjectOwnership);
  strict protected
    function Obj: TOwnershipControlsRule;
  public
    function IsSetObjectOwnership: Boolean;
    property ObjectOwnership: TObjectOwnership read GetObjectOwnership write SetObjectOwnership;
  end;
  
implementation

{ TOwnershipControlsRule }

function TOwnershipControlsRule.Obj: TOwnershipControlsRule;
begin
  Result := Self;
end;

function TOwnershipControlsRule.GetObjectOwnership: TObjectOwnership;
begin
  Result := FObjectOwnership.ValueOrDefault;
end;

procedure TOwnershipControlsRule.SetObjectOwnership(const Value: TObjectOwnership);
begin
  FObjectOwnership := Value;
end;

function TOwnershipControlsRule.IsSetObjectOwnership: Boolean;
begin
  Result := FObjectOwnership.HasValue;
end;

end.
