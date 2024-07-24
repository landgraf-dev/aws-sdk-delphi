unit AWS.SSM.Model.UpdateResourceDataSyncRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.ResourceDataSyncSource;

type
  TUpdateResourceDataSyncRequest = class;
  
  IUpdateResourceDataSyncRequest = interface
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSource;
    procedure SetSyncSource(const Value: TResourceDataSyncSource);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
    function Obj: TUpdateResourceDataSyncRequest;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSource read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
  TUpdateResourceDataSyncRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateResourceDataSyncRequest)
  strict private
    FSyncName: Nullable<string>;
    FSyncSource: TResourceDataSyncSource;
    FKeepSyncSource: Boolean;
    FSyncType: Nullable<string>;
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncSource: TResourceDataSyncSource;
    procedure SetSyncSource(const Value: TResourceDataSyncSource);
    function GetKeepSyncSource: Boolean;
    procedure SetKeepSyncSource(const Value: Boolean);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  strict protected
    function Obj: TUpdateResourceDataSyncRequest;
  public
    destructor Destroy; override;
    function IsSetSyncName: Boolean;
    function IsSetSyncSource: Boolean;
    function IsSetSyncType: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncSource: TResourceDataSyncSource read GetSyncSource write SetSyncSource;
    property KeepSyncSource: Boolean read GetKeepSyncSource write SetKeepSyncSource;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ TUpdateResourceDataSyncRequest }

destructor TUpdateResourceDataSyncRequest.Destroy;
begin
  SyncSource := nil;
  inherited;
end;

function TUpdateResourceDataSyncRequest.Obj: TUpdateResourceDataSyncRequest;
begin
  Result := Self;
end;

function TUpdateResourceDataSyncRequest.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure TUpdateResourceDataSyncRequest.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function TUpdateResourceDataSyncRequest.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

function TUpdateResourceDataSyncRequest.GetSyncSource: TResourceDataSyncSource;
begin
  Result := FSyncSource;
end;

procedure TUpdateResourceDataSyncRequest.SetSyncSource(const Value: TResourceDataSyncSource);
begin
  if FSyncSource <> Value then
  begin
    if not KeepSyncSource then
      FSyncSource.Free;
    FSyncSource := Value;
  end;
end;

function TUpdateResourceDataSyncRequest.GetKeepSyncSource: Boolean;
begin
  Result := FKeepSyncSource;
end;

procedure TUpdateResourceDataSyncRequest.SetKeepSyncSource(const Value: Boolean);
begin
  FKeepSyncSource := Value;
end;

function TUpdateResourceDataSyncRequest.IsSetSyncSource: Boolean;
begin
  Result := FSyncSource <> nil;
end;

function TUpdateResourceDataSyncRequest.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure TUpdateResourceDataSyncRequest.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function TUpdateResourceDataSyncRequest.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
