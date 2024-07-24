unit AWS.SSM.Model.ResourceDataSyncS3Destination;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.ResourceDataSyncDestinationDataSharing, 
  AWS.SSM.Enums;

type
  TResourceDataSyncS3Destination = class;
  
  IResourceDataSyncS3Destination = interface
    function GetAWSKMSKeyARN: string;
    procedure SetAWSKMSKeyARN(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDestinationDataSharing: TResourceDataSyncDestinationDataSharing;
    procedure SetDestinationDataSharing(const Value: TResourceDataSyncDestinationDataSharing);
    function GetKeepDestinationDataSharing: Boolean;
    procedure SetKeepDestinationDataSharing(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRegion: string;
    procedure SetRegion(const Value: string);
    function GetSyncFormat: TResourceDataSyncS3Format;
    procedure SetSyncFormat(const Value: TResourceDataSyncS3Format);
    function Obj: TResourceDataSyncS3Destination;
    function IsSetAWSKMSKeyARN: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetDestinationDataSharing: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRegion: Boolean;
    function IsSetSyncFormat: Boolean;
    property AWSKMSKeyARN: string read GetAWSKMSKeyARN write SetAWSKMSKeyARN;
    property BucketName: string read GetBucketName write SetBucketName;
    property DestinationDataSharing: TResourceDataSyncDestinationDataSharing read GetDestinationDataSharing write SetDestinationDataSharing;
    property KeepDestinationDataSharing: Boolean read GetKeepDestinationDataSharing write SetKeepDestinationDataSharing;
    property Prefix: string read GetPrefix write SetPrefix;
    property Region: string read GetRegion write SetRegion;
    property SyncFormat: TResourceDataSyncS3Format read GetSyncFormat write SetSyncFormat;
  end;
  
  TResourceDataSyncS3Destination = class
  strict private
    FAWSKMSKeyARN: Nullable<string>;
    FBucketName: Nullable<string>;
    FDestinationDataSharing: TResourceDataSyncDestinationDataSharing;
    FKeepDestinationDataSharing: Boolean;
    FPrefix: Nullable<string>;
    FRegion: Nullable<string>;
    FSyncFormat: Nullable<TResourceDataSyncS3Format>;
    function GetAWSKMSKeyARN: string;
    procedure SetAWSKMSKeyARN(const Value: string);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDestinationDataSharing: TResourceDataSyncDestinationDataSharing;
    procedure SetDestinationDataSharing(const Value: TResourceDataSyncDestinationDataSharing);
    function GetKeepDestinationDataSharing: Boolean;
    procedure SetKeepDestinationDataSharing(const Value: Boolean);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRegion: string;
    procedure SetRegion(const Value: string);
    function GetSyncFormat: TResourceDataSyncS3Format;
    procedure SetSyncFormat(const Value: TResourceDataSyncS3Format);
  strict protected
    function Obj: TResourceDataSyncS3Destination;
  public
    destructor Destroy; override;
    function IsSetAWSKMSKeyARN: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetDestinationDataSharing: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRegion: Boolean;
    function IsSetSyncFormat: Boolean;
    property AWSKMSKeyARN: string read GetAWSKMSKeyARN write SetAWSKMSKeyARN;
    property BucketName: string read GetBucketName write SetBucketName;
    property DestinationDataSharing: TResourceDataSyncDestinationDataSharing read GetDestinationDataSharing write SetDestinationDataSharing;
    property KeepDestinationDataSharing: Boolean read GetKeepDestinationDataSharing write SetKeepDestinationDataSharing;
    property Prefix: string read GetPrefix write SetPrefix;
    property Region: string read GetRegion write SetRegion;
    property SyncFormat: TResourceDataSyncS3Format read GetSyncFormat write SetSyncFormat;
  end;
  
implementation

{ TResourceDataSyncS3Destination }

destructor TResourceDataSyncS3Destination.Destroy;
begin
  DestinationDataSharing := nil;
  inherited;
end;

function TResourceDataSyncS3Destination.Obj: TResourceDataSyncS3Destination;
begin
  Result := Self;
end;

function TResourceDataSyncS3Destination.GetAWSKMSKeyARN: string;
begin
  Result := FAWSKMSKeyARN.ValueOrDefault;
end;

procedure TResourceDataSyncS3Destination.SetAWSKMSKeyARN(const Value: string);
begin
  FAWSKMSKeyARN := Value;
end;

function TResourceDataSyncS3Destination.IsSetAWSKMSKeyARN: Boolean;
begin
  Result := FAWSKMSKeyARN.HasValue;
end;

function TResourceDataSyncS3Destination.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TResourceDataSyncS3Destination.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TResourceDataSyncS3Destination.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TResourceDataSyncS3Destination.GetDestinationDataSharing: TResourceDataSyncDestinationDataSharing;
begin
  Result := FDestinationDataSharing;
end;

procedure TResourceDataSyncS3Destination.SetDestinationDataSharing(const Value: TResourceDataSyncDestinationDataSharing);
begin
  if FDestinationDataSharing <> Value then
  begin
    if not KeepDestinationDataSharing then
      FDestinationDataSharing.Free;
    FDestinationDataSharing := Value;
  end;
end;

function TResourceDataSyncS3Destination.GetKeepDestinationDataSharing: Boolean;
begin
  Result := FKeepDestinationDataSharing;
end;

procedure TResourceDataSyncS3Destination.SetKeepDestinationDataSharing(const Value: Boolean);
begin
  FKeepDestinationDataSharing := Value;
end;

function TResourceDataSyncS3Destination.IsSetDestinationDataSharing: Boolean;
begin
  Result := FDestinationDataSharing <> nil;
end;

function TResourceDataSyncS3Destination.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TResourceDataSyncS3Destination.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TResourceDataSyncS3Destination.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TResourceDataSyncS3Destination.GetRegion: string;
begin
  Result := FRegion.ValueOrDefault;
end;

procedure TResourceDataSyncS3Destination.SetRegion(const Value: string);
begin
  FRegion := Value;
end;

function TResourceDataSyncS3Destination.IsSetRegion: Boolean;
begin
  Result := FRegion.HasValue;
end;

function TResourceDataSyncS3Destination.GetSyncFormat: TResourceDataSyncS3Format;
begin
  Result := FSyncFormat.ValueOrDefault;
end;

procedure TResourceDataSyncS3Destination.SetSyncFormat(const Value: TResourceDataSyncS3Format);
begin
  FSyncFormat := Value;
end;

function TResourceDataSyncS3Destination.IsSetSyncFormat: Boolean;
begin
  Result := FSyncFormat.HasValue;
end;

end.
