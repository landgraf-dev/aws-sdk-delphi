unit AWS.SSM.Model.ResourceDataSyncItem;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.ResourceDataSyncS3Destination, 
  AWS.SSM.Model.ResourceDataSyncSourceWithState;

type
  TResourceDataSyncItem = class;
  
  IResourceDataSyncItem = interface
    function GetLastStatus: TLastResourceDataSyncStatus;
    procedure SetLastStatus(const Value: TLastResourceDataSyncStatus);
    function GetLastSuccessfulSyncTime: TDateTime;
    procedure SetLastSuccessfulSyncTime(const Value: TDateTime);
    function GetLastSyncStatusMessage: string;
    procedure SetLastSyncStatusMessage(const Value: string);
    function GetLastSyncTime: TDateTime;
    procedure SetLastSyncTime(const Value: TDateTime);
    function GetS3Destination: TResourceDataSyncS3Destination;
    procedure SetS3Destination(const Value: TResourceDataSyncS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
    function GetSyncCreatedTime: TDateTime;
    procedure SetSyncCreatedTime(const Value: TDateTime);
    function GetSyncLastModifiedTime: TDateTime;
    procedure SetSyncLastModifiedTime(const Value: TDateTime);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSourceWithState;
    procedure SetSyncSource(const Value: TResourceDataSyncSourceWithState);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
    function Obj: TResourceDataSyncItem;
    function IsSetLastStatus: Boolean;
    function IsSetLastSuccessfulSyncTime: Boolean;
    function IsSetLastSyncStatusMessage: Boolean;
    function IsSetLastSyncTime: Boolean;
    function IsSetS3Destination: Boolean;
    function IsSetSyncCreatedTime: Boolean;
    function IsSetSyncLastModifiedTime: Boolean;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property LastStatus: TLastResourceDataSyncStatus read GetLastStatus write SetLastStatus;
    property LastSuccessfulSyncTime: TDateTime read GetLastSuccessfulSyncTime write SetLastSuccessfulSyncTime;
    property LastSyncStatusMessage: string read GetLastSyncStatusMessage write SetLastSyncStatusMessage;
    property LastSyncTime: TDateTime read GetLastSyncTime write SetLastSyncTime;
    property S3Destination: TResourceDataSyncS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
    property SyncCreatedTime: TDateTime read GetSyncCreatedTime write SetSyncCreatedTime;
    property SyncLastModifiedTime: TDateTime read GetSyncLastModifiedTime write SetSyncLastModifiedTime;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSourceWithState read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
  TResourceDataSyncItem = class
  strict private
    FLastStatus: Nullable<TLastResourceDataSyncStatus>;
    FLastSuccessfulSyncTime: Nullable<TDateTime>;
    FLastSyncStatusMessage: Nullable<string>;
    FLastSyncTime: Nullable<TDateTime>;
    FS3Destination: TResourceDataSyncS3Destination;
    FKeepS3Destination: Boolean;
    FSyncCreatedTime: Nullable<TDateTime>;
    FSyncLastModifiedTime: Nullable<TDateTime>;
    FSyncName: Nullable<string>;
    FSyncSource: TResourceDataSyncSourceWithState;
    FKeepSyncSource: Boolean;
    FSyncType: Nullable<string>;
    function GetLastStatus: TLastResourceDataSyncStatus;
    procedure SetLastStatus(const Value: TLastResourceDataSyncStatus);
    function GetLastSuccessfulSyncTime: TDateTime;
    procedure SetLastSuccessfulSyncTime(const Value: TDateTime);
    function GetLastSyncStatusMessage: string;
    procedure SetLastSyncStatusMessage(const Value: string);
    function GetLastSyncTime: TDateTime;
    procedure SetLastSyncTime(const Value: TDateTime);
    function GetS3Destination: TResourceDataSyncS3Destination;
    procedure SetS3Destination(const Value: TResourceDataSyncS3Destination);
    function GetKeepS3Destination: Boolean;
    procedure SetKeepS3Destination(const Value: Boolean);
    function GetSyncCreatedTime: TDateTime;
    procedure SetSyncCreatedTime(const Value: TDateTime);
    function GetSyncLastModifiedTime: TDateTime;
    procedure SetSyncLastModifiedTime(const Value: TDateTime);
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSourceWithState;
    procedure SetSyncSource(const Value: TResourceDataSyncSourceWithState);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  strict protected
    function Obj: TResourceDataSyncItem;
  public
    destructor Destroy; override;
    function IsSetLastStatus: Boolean;
    function IsSetLastSuccessfulSyncTime: Boolean;
    function IsSetLastSyncStatusMessage: Boolean;
    function IsSetLastSyncTime: Boolean;
    function IsSetS3Destination: Boolean;
    function IsSetSyncCreatedTime: Boolean;
    function IsSetSyncLastModifiedTime: Boolean;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property LastStatus: TLastResourceDataSyncStatus read GetLastStatus write SetLastStatus;
    property LastSuccessfulSyncTime: TDateTime read GetLastSuccessfulSyncTime write SetLastSuccessfulSyncTime;
    property LastSyncStatusMessage: string read GetLastSyncStatusMessage write SetLastSyncStatusMessage;
    property LastSyncTime: TDateTime read GetLastSyncTime write SetLastSyncTime;
    property S3Destination: TResourceDataSyncS3Destination read GetS3Destination write SetS3Destination;
    property KeepS3Destination: Boolean read GetKeepS3Destination write SetKeepS3Destination;
    property SyncCreatedTime: TDateTime read GetSyncCreatedTime write SetSyncCreatedTime;
    property SyncLastModifiedTime: TDateTime read GetSyncLastModifiedTime write SetSyncLastModifiedTime;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSourceWithState read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ TResourceDataSyncItem }

destructor TResourceDataSyncItem.Destroy;
begin
  SyncSource := nil;
  S3Destination := nil;
  inherited;
end;

function TResourceDataSyncItem.Obj: TResourceDataSyncItem;
begin
  Result := Self;
end;

function TResourceDataSyncItem.GetLastStatus: TLastResourceDataSyncStatus;
begin
  Result := FLastStatus.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetLastStatus(const Value: TLastResourceDataSyncStatus);
begin
  FLastStatus := Value;
end;

function TResourceDataSyncItem.IsSetLastStatus: Boolean;
begin
  Result := FLastStatus.HasValue;
end;

function TResourceDataSyncItem.GetLastSuccessfulSyncTime: TDateTime;
begin
  Result := FLastSuccessfulSyncTime.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetLastSuccessfulSyncTime(const Value: TDateTime);
begin
  FLastSuccessfulSyncTime := Value;
end;

function TResourceDataSyncItem.IsSetLastSuccessfulSyncTime: Boolean;
begin
  Result := FLastSuccessfulSyncTime.HasValue;
end;

function TResourceDataSyncItem.GetLastSyncStatusMessage: string;
begin
  Result := FLastSyncStatusMessage.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetLastSyncStatusMessage(const Value: string);
begin
  FLastSyncStatusMessage := Value;
end;

function TResourceDataSyncItem.IsSetLastSyncStatusMessage: Boolean;
begin
  Result := FLastSyncStatusMessage.HasValue;
end;

function TResourceDataSyncItem.GetLastSyncTime: TDateTime;
begin
  Result := FLastSyncTime.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetLastSyncTime(const Value: TDateTime);
begin
  FLastSyncTime := Value;
end;

function TResourceDataSyncItem.IsSetLastSyncTime: Boolean;
begin
  Result := FLastSyncTime.HasValue;
end;

function TResourceDataSyncItem.GetS3Destination: TResourceDataSyncS3Destination;
begin
  Result := FS3Destination;
end;

procedure TResourceDataSyncItem.SetS3Destination(const Value: TResourceDataSyncS3Destination);
begin
  if FS3Destination <> Value then
  begin
    if not KeepS3Destination then
      FS3Destination.Free;
    FS3Destination := Value;
  end;
end;

function TResourceDataSyncItem.GetKeepS3Destination: Boolean;
begin
  Result := FKeepS3Destination;
end;

procedure TResourceDataSyncItem.SetKeepS3Destination(const Value: Boolean);
begin
  FKeepS3Destination := Value;
end;

function TResourceDataSyncItem.IsSetS3Destination: Boolean;
begin
  Result := FS3Destination <> nil;
end;

function TResourceDataSyncItem.GetSyncCreatedTime: TDateTime;
begin
  Result := FSyncCreatedTime.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetSyncCreatedTime(const Value: TDateTime);
begin
  FSyncCreatedTime := Value;
end;

function TResourceDataSyncItem.IsSetSyncCreatedTime: Boolean;
begin
  Result := FSyncCreatedTime.HasValue;
end;

function TResourceDataSyncItem.GetSyncLastModifiedTime: TDateTime;
begin
  Result := FSyncLastModifiedTime.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetSyncLastModifiedTime(const Value: TDateTime);
begin
  FSyncLastModifiedTime := Value;
end;

function TResourceDataSyncItem.IsSetSyncLastModifiedTime: Boolean;
begin
  Result := FSyncLastModifiedTime.HasValue;
end;

function TResourceDataSyncItem.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function TResourceDataSyncItem.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

function TResourceDataSyncItem.GetSyncSource: TResourceDataSyncSourceWithState;
begin
  Result := FSyncSource;
end;

procedure TResourceDataSyncItem.SetSyncSource(const Value: TResourceDataSyncSourceWithState);
begin
  if FSyncSource <> Value then
  begin
    if not KeepSyncSource then
      FSyncSource.Free;
    FSyncSource := Value;
  end;
end;

function TResourceDataSyncItem.GetKeepSyncSource: Boolean;
begin
  Result := FKeepSyncSource;
end;

procedure TResourceDataSyncItem.SetKeepSyncSource(const Value: Boolean);
begin
  FKeepSyncSource := Value;
end;

function TResourceDataSyncItem.IsSetSyncSource: Boolean;
begin
  Result := FSyncSource <> nil;
end;

function TResourceDataSyncItem.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure TResourceDataSyncItem.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function TResourceDataSyncItem.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
