unit AWS.S3.Model.GetBucketReplicationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.ReplicationConfiguration;

type
  TGetBucketReplicationResponse = class;
  
  IGetBucketReplicationResponse = interface(IAmazonWebServiceResponse)
    function GetReplicationConfiguration: TReplicationConfiguration;
    procedure SetReplicationConfiguration(const Value: TReplicationConfiguration);
    function GetKeepReplicationConfiguration: Boolean;
    procedure SetKeepReplicationConfiguration(const Value: Boolean);
    function Obj: TGetBucketReplicationResponse;
    function IsSetReplicationConfiguration: Boolean;
    property ReplicationConfiguration: TReplicationConfiguration read GetReplicationConfiguration write SetReplicationConfiguration;
    property KeepReplicationConfiguration: Boolean read GetKeepReplicationConfiguration write SetKeepReplicationConfiguration;
  end;
  
  TGetBucketReplicationResponse = class(TAmazonWebServiceResponse, IGetBucketReplicationResponse)
  strict private
    FReplicationConfiguration: TReplicationConfiguration;
    FKeepReplicationConfiguration: Boolean;
    function GetReplicationConfiguration: TReplicationConfiguration;
    procedure SetReplicationConfiguration(const Value: TReplicationConfiguration);
    function GetKeepReplicationConfiguration: Boolean;
    procedure SetKeepReplicationConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketReplicationResponse;
  public
    destructor Destroy; override;
    function IsSetReplicationConfiguration: Boolean;
    property ReplicationConfiguration: TReplicationConfiguration read GetReplicationConfiguration write SetReplicationConfiguration;
    property KeepReplicationConfiguration: Boolean read GetKeepReplicationConfiguration write SetKeepReplicationConfiguration;
  end;
  
implementation

{ TGetBucketReplicationResponse }

destructor TGetBucketReplicationResponse.Destroy;
begin
  ReplicationConfiguration := nil;
  inherited;
end;

function TGetBucketReplicationResponse.Obj: TGetBucketReplicationResponse;
begin
  Result := Self;
end;

function TGetBucketReplicationResponse.GetReplicationConfiguration: TReplicationConfiguration;
begin
  Result := FReplicationConfiguration;
end;

procedure TGetBucketReplicationResponse.SetReplicationConfiguration(const Value: TReplicationConfiguration);
begin
  if FReplicationConfiguration <> Value then
  begin
    if not KeepReplicationConfiguration then
      FReplicationConfiguration.Free;
    FReplicationConfiguration := Value;
  end;
end;

function TGetBucketReplicationResponse.GetKeepReplicationConfiguration: Boolean;
begin
  Result := FKeepReplicationConfiguration;
end;

procedure TGetBucketReplicationResponse.SetKeepReplicationConfiguration(const Value: Boolean);
begin
  FKeepReplicationConfiguration := Value;
end;

function TGetBucketReplicationResponse.IsSetReplicationConfiguration: Boolean;
begin
  Result := FReplicationConfiguration <> nil;
end;

end.
