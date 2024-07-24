unit AWS.SSM.Model.DeleteResourceDataSyncRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeleteResourceDataSyncRequest = class;
  
  IDeleteResourceDataSyncRequest = interface
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
    function Obj: TDeleteResourceDataSyncRequest;
    function IsSetSyncName: Boolean;
    function IsSetSyncType: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
  TDeleteResourceDataSyncRequest = class(TAmazonSimpleSystemsManagementRequest, IDeleteResourceDataSyncRequest)
  strict private
    FSyncName: Nullable<string>;
    FSyncType: Nullable<string>;
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  strict protected
    function Obj: TDeleteResourceDataSyncRequest;
  public
    function IsSetSyncName: Boolean;
    function IsSetSyncType: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ TDeleteResourceDataSyncRequest }

function TDeleteResourceDataSyncRequest.Obj: TDeleteResourceDataSyncRequest;
begin
  Result := Self;
end;

function TDeleteResourceDataSyncRequest.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure TDeleteResourceDataSyncRequest.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function TDeleteResourceDataSyncRequest.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

function TDeleteResourceDataSyncRequest.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure TDeleteResourceDataSyncRequest.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function TDeleteResourceDataSyncRequest.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
