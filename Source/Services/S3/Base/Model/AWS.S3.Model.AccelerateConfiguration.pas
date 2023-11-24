unit AWS.S3.Model.AccelerateConfiguration;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TAccelerateConfiguration = class;
  
  IAccelerateConfiguration = interface
    function GetStatus: TBucketAccelerateStatus;
    procedure SetStatus(const Value: TBucketAccelerateStatus);
    function Obj: TAccelerateConfiguration;
    function IsSetStatus: Boolean;
    property Status: TBucketAccelerateStatus read GetStatus write SetStatus;
  end;
  
  TAccelerateConfiguration = class
  strict private
    FStatus: Nullable<TBucketAccelerateStatus>;
    function GetStatus: TBucketAccelerateStatus;
    procedure SetStatus(const Value: TBucketAccelerateStatus);
  strict protected
    function Obj: TAccelerateConfiguration;
  public
    function IsSetStatus: Boolean;
    property Status: TBucketAccelerateStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TAccelerateConfiguration }

function TAccelerateConfiguration.Obj: TAccelerateConfiguration;
begin
  Result := Self;
end;

function TAccelerateConfiguration.GetStatus: TBucketAccelerateStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TAccelerateConfiguration.SetStatus(const Value: TBucketAccelerateStatus);
begin
  FStatus := Value;
end;

function TAccelerateConfiguration.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
