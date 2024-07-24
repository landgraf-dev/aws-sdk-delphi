unit AWS.SSM.Model.InstanceAssociationOutputUrl;

interface

uses
  AWS.SSM.Model.S3OutputUrl;

type
  TInstanceAssociationOutputUrl = class;
  
  IInstanceAssociationOutputUrl = interface
    function GetS3OutputUrl: TS3OutputUrl;
    procedure SetS3OutputUrl(const Value: TS3OutputUrl);
    function GetKeepS3OutputUrl: Boolean;
    procedure SetKeepS3OutputUrl(const Value: Boolean);
    function Obj: TInstanceAssociationOutputUrl;
    function IsSetS3OutputUrl: Boolean;
    property S3OutputUrl: TS3OutputUrl read GetS3OutputUrl write SetS3OutputUrl;
    property KeepS3OutputUrl: Boolean read GetKeepS3OutputUrl write SetKeepS3OutputUrl;
  end;
  
  TInstanceAssociationOutputUrl = class
  strict private
    FS3OutputUrl: TS3OutputUrl;
    FKeepS3OutputUrl: Boolean;
    function GetS3OutputUrl: TS3OutputUrl;
    procedure SetS3OutputUrl(const Value: TS3OutputUrl);
    function GetKeepS3OutputUrl: Boolean;
    procedure SetKeepS3OutputUrl(const Value: Boolean);
  strict protected
    function Obj: TInstanceAssociationOutputUrl;
  public
    destructor Destroy; override;
    function IsSetS3OutputUrl: Boolean;
    property S3OutputUrl: TS3OutputUrl read GetS3OutputUrl write SetS3OutputUrl;
    property KeepS3OutputUrl: Boolean read GetKeepS3OutputUrl write SetKeepS3OutputUrl;
  end;
  
implementation

{ TInstanceAssociationOutputUrl }

destructor TInstanceAssociationOutputUrl.Destroy;
begin
  S3OutputUrl := nil;
  inherited;
end;

function TInstanceAssociationOutputUrl.Obj: TInstanceAssociationOutputUrl;
begin
  Result := Self;
end;

function TInstanceAssociationOutputUrl.GetS3OutputUrl: TS3OutputUrl;
begin
  Result := FS3OutputUrl;
end;

procedure TInstanceAssociationOutputUrl.SetS3OutputUrl(const Value: TS3OutputUrl);
begin
  if FS3OutputUrl <> Value then
  begin
    if not KeepS3OutputUrl then
      FS3OutputUrl.Free;
    FS3OutputUrl := Value;
  end;
end;

function TInstanceAssociationOutputUrl.GetKeepS3OutputUrl: Boolean;
begin
  Result := FKeepS3OutputUrl;
end;

procedure TInstanceAssociationOutputUrl.SetKeepS3OutputUrl(const Value: Boolean);
begin
  FKeepS3OutputUrl := Value;
end;

function TInstanceAssociationOutputUrl.IsSetS3OutputUrl: Boolean;
begin
  Result := FS3OutputUrl <> nil;
end;

end.
