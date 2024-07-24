unit AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.ResourceDataSyncOrganizationalUnit;

type
  TResourceDataSyncAwsOrganizationsSource = class;
  
  IResourceDataSyncAwsOrganizationsSource = interface
    function GetOrganizationSourceType: string;
    procedure SetOrganizationSourceType(const Value: string);
    function GetOrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit>;
    procedure SetOrganizationalUnits(const Value: TObjectList<TResourceDataSyncOrganizationalUnit>);
    function GetKeepOrganizationalUnits: Boolean;
    procedure SetKeepOrganizationalUnits(const Value: Boolean);
    function Obj: TResourceDataSyncAwsOrganizationsSource;
    function IsSetOrganizationSourceType: Boolean;
    function IsSetOrganizationalUnits: Boolean;
    property OrganizationSourceType: string read GetOrganizationSourceType write SetOrganizationSourceType;
    property OrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit> read GetOrganizationalUnits write SetOrganizationalUnits;
    property KeepOrganizationalUnits: Boolean read GetKeepOrganizationalUnits write SetKeepOrganizationalUnits;
  end;
  
  TResourceDataSyncAwsOrganizationsSource = class
  strict private
    FOrganizationSourceType: Nullable<string>;
    FOrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit>;
    FKeepOrganizationalUnits: Boolean;
    function GetOrganizationSourceType: string;
    procedure SetOrganizationSourceType(const Value: string);
    function GetOrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit>;
    procedure SetOrganizationalUnits(const Value: TObjectList<TResourceDataSyncOrganizationalUnit>);
    function GetKeepOrganizationalUnits: Boolean;
    procedure SetKeepOrganizationalUnits(const Value: Boolean);
  strict protected
    function Obj: TResourceDataSyncAwsOrganizationsSource;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetOrganizationSourceType: Boolean;
    function IsSetOrganizationalUnits: Boolean;
    property OrganizationSourceType: string read GetOrganizationSourceType write SetOrganizationSourceType;
    property OrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit> read GetOrganizationalUnits write SetOrganizationalUnits;
    property KeepOrganizationalUnits: Boolean read GetKeepOrganizationalUnits write SetKeepOrganizationalUnits;
  end;
  
implementation

{ TResourceDataSyncAwsOrganizationsSource }

constructor TResourceDataSyncAwsOrganizationsSource.Create;
begin
  inherited;
  FOrganizationalUnits := TObjectList<TResourceDataSyncOrganizationalUnit>.Create;
end;

destructor TResourceDataSyncAwsOrganizationsSource.Destroy;
begin
  OrganizationalUnits := nil;
  inherited;
end;

function TResourceDataSyncAwsOrganizationsSource.Obj: TResourceDataSyncAwsOrganizationsSource;
begin
  Result := Self;
end;

function TResourceDataSyncAwsOrganizationsSource.GetOrganizationSourceType: string;
begin
  Result := FOrganizationSourceType.ValueOrDefault;
end;

procedure TResourceDataSyncAwsOrganizationsSource.SetOrganizationSourceType(const Value: string);
begin
  FOrganizationSourceType := Value;
end;

function TResourceDataSyncAwsOrganizationsSource.IsSetOrganizationSourceType: Boolean;
begin
  Result := FOrganizationSourceType.HasValue;
end;

function TResourceDataSyncAwsOrganizationsSource.GetOrganizationalUnits: TObjectList<TResourceDataSyncOrganizationalUnit>;
begin
  Result := FOrganizationalUnits;
end;

procedure TResourceDataSyncAwsOrganizationsSource.SetOrganizationalUnits(const Value: TObjectList<TResourceDataSyncOrganizationalUnit>);
begin
  if FOrganizationalUnits <> Value then
  begin
    if not KeepOrganizationalUnits then
      FOrganizationalUnits.Free;
    FOrganizationalUnits := Value;
  end;
end;

function TResourceDataSyncAwsOrganizationsSource.GetKeepOrganizationalUnits: Boolean;
begin
  Result := FKeepOrganizationalUnits;
end;

procedure TResourceDataSyncAwsOrganizationsSource.SetKeepOrganizationalUnits(const Value: Boolean);
begin
  FKeepOrganizationalUnits := Value;
end;

function TResourceDataSyncAwsOrganizationsSource.IsSetOrganizationalUnits: Boolean;
begin
  Result := (FOrganizationalUnits <> nil) and (FOrganizationalUnits.Count > 0);
end;

end.
