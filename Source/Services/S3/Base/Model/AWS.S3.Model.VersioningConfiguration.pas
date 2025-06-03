unit AWS.S3.Model.VersioningConfiguration;

interface

uses
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TVersioningConfiguration = class;
  
  IVersioningConfiguration = interface
    function GetMFADelete: TMFADelete;
    procedure SetMFADelete(const Value: TMFADelete);
    function GetStatus: TBucketVersioningStatus;
    procedure SetStatus(const Value: TBucketVersioningStatus);
    function Obj: TVersioningConfiguration;
    function IsSetMFADelete: Boolean;
    function IsSetStatus: Boolean;
    property MFADelete: TMFADelete read GetMFADelete write SetMFADelete;
    property Status: TBucketVersioningStatus read GetStatus write SetStatus;
  end;
  
  TVersioningConfiguration = class
  strict private
    FMFADelete: Nullable<TMFADelete>;
    FStatus: Nullable<TBucketVersioningStatus>;
    function GetMFADelete: TMFADelete;
    procedure SetMFADelete(const Value: TMFADelete);
    function GetStatus: TBucketVersioningStatus;
    procedure SetStatus(const Value: TBucketVersioningStatus);
  strict protected
    function Obj: TVersioningConfiguration;
  public
    function IsSetMFADelete: Boolean;
    function IsSetStatus: Boolean;
    property MFADelete: TMFADelete read GetMFADelete write SetMFADelete;
    property Status: TBucketVersioningStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TVersioningConfiguration }

function TVersioningConfiguration.Obj: TVersioningConfiguration;
begin
  Result := Self;
end;

function TVersioningConfiguration.GetMFADelete: TMFADelete;
begin
  Result := FMFADelete.ValueOrDefault;
end;

procedure TVersioningConfiguration.SetMFADelete(const Value: TMFADelete);
begin
  FMFADelete := Value;
end;

function TVersioningConfiguration.IsSetMFADelete: Boolean;
begin
  Result := FMFADelete.HasValue;
end;

function TVersioningConfiguration.GetStatus: TBucketVersioningStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TVersioningConfiguration.SetStatus(const Value: TBucketVersioningStatus);
begin
  FStatus := Value;
end;

function TVersioningConfiguration.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
