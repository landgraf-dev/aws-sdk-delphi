unit AWS.SSM.Model.CreateResourceDataSyncRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.ResourceDataSyncS3Destination, 
  AWS.Nullable, 
  AWS.SSM.Model.ResourceDataSyncSource;

type
  TCreateResourceDataSyncRequest = class;
  
  ICreateResourceDataSyncRequest = interface
    function GetS3Destination: TResourceDataSyncS3Destination;
    procedure SetS3Destination(const Value: TResourceDataSyncS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSource;
    procedure SetSyncSource(const Value: TResourceDataSyncSource);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
    function Obj: TCreateResourceDataSyncRequest;
    function IsSetS3Destination: Boolean;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property S3Destination: TResourceDataSyncS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSource read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
  TCreateResourceDataSyncRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateResourceDataSyncRequest)
  strict private
    FS3Destination: TResourceDataSyncS3Destination;
    FKeepS3Destination: Boolean;
    FSyncName: Nullable<string>;
    FSyncSource: TResourceDataSyncSource;
    FKeepSyncSource: Boolean;
    FSyncType: Nullable<string>;
    function GetS3Destination: TResourceDataSyncS3Destination;
    procedure SetS3Destination(const Value: TResourceDataSyncS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSource;
    procedure SetSyncSource(const Value: TResourceDataSyncSource);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  strict protected
    function Obj: TCreateResourceDataSyncRequest;
  public
    destructor Destroy; override;
    function IsSetS3Destination: Boolean;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property S3Destination: TResourceDataSyncS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSource read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ TCreateResourceDataSyncRequest }

destructor TCreateResourceDataSyncRequest.Destroy;
begin
  SyncSource := nil;
  S3Destination := nil;
  inherited;
end;

function TCreateResourceDataSyncRequest.Obj: TCreateResourceDataSyncRequest;
begin
  Result := Self;
end;

function TCreateResourceDataSyncRequest.GetS3Destination: TResourceDataSyncS3Destination;
begin
  Result := FS3Destination;
end;

procedure TCreateResourceDataSyncRequest.SetS3Destination(const Value: TResourceDataSyncS3Destination);
begin
  if FS3Destination <> Value then
  begin
    if not KeepS3Destination then
      FS3Destination.Free;
    FS3Destination := Value;
  end;
end;

function TCreateResourceDataSyncRequest.GetKeepS3Destination: Boolean;
begin
  Result := FKeepS3Destination;
end;

procedure TCreateResourceDataSyncRequest.SetKeepS3Destination(const Value: Boolean);
begin
  FKeepS3Destination := Value;
end;

function TCreateResourceDataSyncRequest.IsSetS3Destination: Boolean;
begin
  Result := FS3Destination <> nil;
end;

function TCreateResourceDataSyncRequest.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure TCreateResourceDataSyncRequest.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function TCreateResourceDataSyncRequest.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

function TCreateResourceDataSyncRequest.GetSyncSource: TResourceDataSyncSource;
begin
  Result := FSyncSource;
end;

procedure TCreateResourceDataSyncRequest.SetSyncSource(const Value: TResourceDataSyncSource);
begin
  if FSyncSource <> Value then
  begin
    if not KeepSyncSource then
      FSyncSource.Free;
    FSyncSource := Value;
  end;
end;

function TCreateResourceDataSyncRequest.GetKeepSyncSource: Boolean;
begin
  Result := FKeepSyncSource;
end;

procedure TCreateResourceDataSyncRequest.SetKeepSyncSource(const Value: Boolean);
begin
  FKeepSyncSource := Value;
end;

function TCreateResourceDataSyncRequest.IsSetSyncSource: Boolean;
begin
  Result := FSyncSource <> nil;
end;

function TCreateResourceDataSyncRequest.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure TCreateResourceDataSyncRequest.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function TCreateResourceDataSyncRequest.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
