unit AWS.SSM.Model.ResourceDataSyncOrganizationalUnit;

interface

uses
  AWS.Nullable;

type
  TResourceDataSyncOrganizationalUnit = class;
  
  IResourceDataSyncOrganizationalUnit = interface
    function GetOrganizationalUnitId: string;
    procedure SetOrganizationalUnitId(const Value: string);
    function Obj: TResourceDataSyncOrganizationalUnit;
    function IsSetOrganizationalUnitId: Boolean;
    property OrganizationalUnitId: string read GetOrganizationalUnitId write SetOrganizationalUnitId;
  end;
  
  TResourceDataSyncOrganizationalUnit = class
  strict private
    FOrganizationalUnitId: Nullable<string>;
    function GetOrganizationalUnitId: string;
    procedure SetOrganizationalUnitId(const Value: string);
  strict protected
    function Obj: TResourceDataSyncOrganizationalUnit;
  public
    function IsSetOrganizationalUnitId: Boolean;
    property OrganizationalUnitId: string read GetOrganizationalUnitId write SetOrganizationalUnitId;
  end;
  
implementation

{ TResourceDataSyncOrganizationalUnit }

function TResourceDataSyncOrganizationalUnit.Obj: TResourceDataSyncOrganizationalUnit;
begin
  Result := Self;
end;

function TResourceDataSyncOrganizationalUnit.GetOrganizationalUnitId: string;
begin
  Result := FOrganizationalUnitId.ValueOrDefault;
end;

procedure TResourceDataSyncOrganizationalUnit.SetOrganizationalUnitId(const Value: string);
begin
  FOrganizationalUnitId := Value;
end;

function TResourceDataSyncOrganizationalUnit.IsSetOrganizationalUnitId: Boolean;
begin
  Result := FOrganizationalUnitId.HasValue;
end;

end.
