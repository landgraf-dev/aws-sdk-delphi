unit AWS.SSM.Model.ResourceDataSyncNotFoundException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EResourceDataSyncNotFoundException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FSyncName: Nullable<string>;
    FSyncType: Nullable<string>;
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
    function GetSyncType: string;
    procedure SetSyncType(const Value: string);
  public
    function IsSetSyncName: Boolean;
    function IsSetSyncType: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
    property SyncType: string read GetSyncType write SetSyncType;
  end;
  
implementation

{ EResourceDataSyncNotFoundException }

function EResourceDataSyncNotFoundException.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure EResourceDataSyncNotFoundException.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function EResourceDataSyncNotFoundException.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

function EResourceDataSyncNotFoundException.GetSyncType: string;
begin
  Result := FSyncType.ValueOrDefault;
end;

procedure EResourceDataSyncNotFoundException.SetSyncType(const Value: string);
begin
  FSyncType := Value;
end;

function EResourceDataSyncNotFoundException.IsSetSyncType: Boolean;
begin
  Result := FSyncType.HasValue;
end;

end.
