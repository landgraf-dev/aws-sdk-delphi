unit AWS.SSM.Model.InstanceAssociationOutputLocation;

interface

uses
  AWS.SSM.Model.S3OutputLocation;

type
  TInstanceAssociationOutputLocation = class;
  
  IInstanceAssociationOutputLocation = interface
    function GetS3Location: TS3OutputLocation;
    procedure SetS3Location(const Value: TS3OutputLocation);
    function GetKeepS3Location: Boolean;
    procedure SetKeepS3Location(const Value: Boolean);
    function Obj: TInstanceAssociationOutputLocation;
    function IsSetS3Location: Boolean;
    property S3Location: TS3OutputLocation read GetS3Location write SetS3Location;
    property KeepS3Location: Boolean read GetKeepS3Location write SetKeepS3Location;
  end;
  
  TInstanceAssociationOutputLocation = class
  strict private
    FS3Location: TS3OutputLocation;
    FKeepS3Location: Boolean;
    function GetS3Location: TS3OutputLocation;
    procedure SetS3Location(const Value: TS3OutputLocation);
    function GetKeepS3Location: Boolean;
    procedure SetKeepS3Location(const Value: Boolean);
  strict protected
    function Obj: TInstanceAssociationOutputLocation;
  public
    destructor Destroy; override;
    function IsSetS3Location: Boolean;
    property S3Location: TS3OutputLocation read GetS3Location write SetS3Location;
    property KeepS3Location: Boolean read GetKeepS3Location write SetKeepS3Location;
  end;
  
implementation

{ TInstanceAssociationOutputLocation }

destructor TInstanceAssociationOutputLocation.Destroy;
begin
  S3Location := nil;
  inherited;
end;

function TInstanceAssociationOutputLocation.Obj: TInstanceAssociationOutputLocation;
begin
  Result := Self;
end;

function TInstanceAssociationOutputLocation.GetS3Location: TS3OutputLocation;
begin
  Result := FS3Location;
end;

procedure TInstanceAssociationOutputLocation.SetS3Location(const Value: TS3OutputLocation);
begin
  if FS3Location <> Value then
  begin
    if not KeepS3Location then
      FS3Location.Free;
    FS3Location := Value;
  end;
end;

function TInstanceAssociationOutputLocation.GetKeepS3Location: Boolean;
begin
  Result := FKeepS3Location;
end;

procedure TInstanceAssociationOutputLocation.SetKeepS3Location(const Value: Boolean);
begin
  FKeepS3Location := Value;
end;

function TInstanceAssociationOutputLocation.IsSetS3Location: Boolean;
begin
  Result := FS3Location <> nil;
end;

end.
