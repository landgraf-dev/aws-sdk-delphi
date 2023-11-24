unit AWS.S3.Model.BucketLoggingStatus;

interface

uses
  AWS.S3.Model.LoggingEnabled;

type
  TBucketLoggingStatus = class;
  
  IBucketLoggingStatus = interface
    function GetLoggingEnabled: TLoggingEnabled;
    procedure SetLoggingEnabled(const Value: TLoggingEnabled);
    function GetKeepLoggingEnabled: Boolean;
    procedure SetKeepLoggingEnabled(const Value: Boolean);
    function Obj: TBucketLoggingStatus;
    function IsSetLoggingEnabled: Boolean;
    property LoggingEnabled: TLoggingEnabled read GetLoggingEnabled write SetLoggingEnabled;
    property KeepLoggingEnabled: Boolean read GetKeepLoggingEnabled write SetKeepLoggingEnabled;
  end;
  
  TBucketLoggingStatus = class
  strict private
    FLoggingEnabled: TLoggingEnabled;
    FKeepLoggingEnabled: Boolean;
    function GetLoggingEnabled: TLoggingEnabled;
    procedure SetLoggingEnabled(const Value: TLoggingEnabled);
    function GetKeepLoggingEnabled: Boolean;
    procedure SetKeepLoggingEnabled(const Value: Boolean);
  strict protected
    function Obj: TBucketLoggingStatus;
  public
    destructor Destroy; override;
    function IsSetLoggingEnabled: Boolean;
    property LoggingEnabled: TLoggingEnabled read GetLoggingEnabled write SetLoggingEnabled;
    property KeepLoggingEnabled: Boolean read GetKeepLoggingEnabled write SetKeepLoggingEnabled;
  end;
  
implementation

{ TBucketLoggingStatus }

destructor TBucketLoggingStatus.Destroy;
begin
  LoggingEnabled := nil;
  inherited;
end;

function TBucketLoggingStatus.Obj: TBucketLoggingStatus;
begin
  Result := Self;
end;

function TBucketLoggingStatus.GetLoggingEnabled: TLoggingEnabled;
begin
  Result := FLoggingEnabled;
end;

procedure TBucketLoggingStatus.SetLoggingEnabled(const Value: TLoggingEnabled);
begin
  if FLoggingEnabled <> Value then
  begin
    if not KeepLoggingEnabled then
      FLoggingEnabled.Free;
    FLoggingEnabled := Value;
  end;
end;

function TBucketLoggingStatus.GetKeepLoggingEnabled: Boolean;
begin
  Result := FKeepLoggingEnabled;
end;

procedure TBucketLoggingStatus.SetKeepLoggingEnabled(const Value: Boolean);
begin
  FKeepLoggingEnabled := Value;
end;

function TBucketLoggingStatus.IsSetLoggingEnabled: Boolean;
begin
  Result := FLoggingEnabled <> nil;
end;

end.
