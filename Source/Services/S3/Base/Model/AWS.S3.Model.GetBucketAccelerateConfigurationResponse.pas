unit AWS.S3.Model.GetBucketAccelerateConfigurationResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Enums;

type
  TGetBucketAccelerateConfigurationResponse = class;
  
  IGetBucketAccelerateConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetStatus: TBucketAccelerateStatus;
    procedure SetStatus(const Value: TBucketAccelerateStatus);
    function Obj: TGetBucketAccelerateConfigurationResponse;
    function IsSetStatus: Boolean;
    property Status: TBucketAccelerateStatus read GetStatus write SetStatus;
  end;
  
  TGetBucketAccelerateConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketAccelerateConfigurationResponse)
  strict private
    FStatus: Nullable<TBucketAccelerateStatus>;
    function GetStatus: TBucketAccelerateStatus;
    procedure SetStatus(const Value: TBucketAccelerateStatus);
  strict protected
    function Obj: TGetBucketAccelerateConfigurationResponse;
  public
    function IsSetStatus: Boolean;
    property Status: TBucketAccelerateStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TGetBucketAccelerateConfigurationResponse }

function TGetBucketAccelerateConfigurationResponse.Obj: TGetBucketAccelerateConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketAccelerateConfigurationResponse.GetStatus: TBucketAccelerateStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetBucketAccelerateConfigurationResponse.SetStatus(const Value: TBucketAccelerateStatus);
begin
  FStatus := Value;
end;

function TGetBucketAccelerateConfigurationResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
