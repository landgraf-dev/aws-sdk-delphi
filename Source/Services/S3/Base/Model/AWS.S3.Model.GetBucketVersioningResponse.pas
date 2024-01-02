unit AWS.S3.Model.GetBucketVersioningResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TGetBucketVersioningResponse = class;
  
  IGetBucketVersioningResponse = interface(IAmazonWebServiceResponse)
    function GetMFADelete: TMFADeleteStatus;
    procedure SetMFADelete(const Value: TMFADeleteStatus);
    function GetStatus: TBucketVersioningStatus;
    procedure SetStatus(const Value: TBucketVersioningStatus);
    function Obj: TGetBucketVersioningResponse;
    function IsSetMFADelete: Boolean;
    function IsSetStatus: Boolean;
    property MFADelete: TMFADeleteStatus read GetMFADelete write SetMFADelete;
    property Status: TBucketVersioningStatus read GetStatus write SetStatus;
  end;
  
  TGetBucketVersioningResponse = class(TAmazonWebServiceResponse, IGetBucketVersioningResponse)
  strict private
    FMFADelete: Nullable<TMFADeleteStatus>;
    FStatus: Nullable<TBucketVersioningStatus>;
    function GetMFADelete: TMFADeleteStatus;
    procedure SetMFADelete(const Value: TMFADeleteStatus);
    function GetStatus: TBucketVersioningStatus;
    procedure SetStatus(const Value: TBucketVersioningStatus);
  strict protected
    function Obj: TGetBucketVersioningResponse;
  public
    function IsSetMFADelete: Boolean;
    function IsSetStatus: Boolean;
    property MFADelete: TMFADeleteStatus read GetMFADelete write SetMFADelete;
    property Status: TBucketVersioningStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TGetBucketVersioningResponse }

function TGetBucketVersioningResponse.Obj: TGetBucketVersioningResponse;
begin
  Result := Self;
end;

function TGetBucketVersioningResponse.GetMFADelete: TMFADeleteStatus;
begin
  Result := FMFADelete.ValueOrDefault;
end;

procedure TGetBucketVersioningResponse.SetMFADelete(const Value: TMFADeleteStatus);
begin
  FMFADelete := Value;
end;

function TGetBucketVersioningResponse.IsSetMFADelete: Boolean;
begin
  Result := FMFADelete.HasValue;
end;

function TGetBucketVersioningResponse.GetStatus: TBucketVersioningStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetBucketVersioningResponse.SetStatus(const Value: TBucketVersioningStatus);
begin
  FStatus := Value;
end;

function TGetBucketVersioningResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
