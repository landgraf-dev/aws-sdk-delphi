unit AWS.S3.Model.AnalyticsExportDestination;

interface

uses
  AWS.S3.Model.AnalyticsS3BucketDestination;

type
  TAnalyticsExportDestination = class;
  
  IAnalyticsExportDestination = interface
    function GetS3BucketDestination: TAnalyticsS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TAnalyticsS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
    function Obj: TAnalyticsExportDestination;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TAnalyticsS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
  TAnalyticsExportDestination = class
  strict private
    FS3BucketDestination: TAnalyticsS3BucketDestination;
    FKeepS3BucketDestination: Boolean;
    function GetS3BucketDestination: TAnalyticsS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TAnalyticsS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
  strict protected
    function Obj: TAnalyticsExportDestination;
  public
    destructor Destroy; override;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TAnalyticsS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
implementation

{ TAnalyticsExportDestination }

destructor TAnalyticsExportDestination.Destroy;
begin
  S3BucketDestination := nil;
  inherited;
end;

function TAnalyticsExportDestination.Obj: TAnalyticsExportDestination;
begin
  Result := Self;
end;

function TAnalyticsExportDestination.GetS3BucketDestination: TAnalyticsS3BucketDestination;
begin
  Result := FS3BucketDestination;
end;

procedure TAnalyticsExportDestination.SetS3BucketDestination(const Value: TAnalyticsS3BucketDestination);
begin
  if FS3BucketDestination <> Value then
  begin
    if not KeepS3BucketDestination then
      FS3BucketDestination.Free;
    FS3BucketDestination := Value;
  end;
end;

function TAnalyticsExportDestination.GetKeepS3BucketDestination: Boolean;
begin
  Result := FKeepS3BucketDestination;
end;

procedure TAnalyticsExportDestination.SetKeepS3BucketDestination(const Value: Boolean);
begin
  FKeepS3BucketDestination := Value;
end;

function TAnalyticsExportDestination.IsSetS3BucketDestination: Boolean;
begin
  Result := FS3BucketDestination <> nil;
end;

end.
