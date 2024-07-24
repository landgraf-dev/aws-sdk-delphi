unit AWS.SSM.Model.ResourceDataSyncAlreadyExistsException;

interface

uses
  AWS.SSM.Exception, 
  AWS.Nullable;

type
  EResourceDataSyncAlreadyExistsException = class(EAmazonSimpleSystemsManagementException)
  strict private
    FSyncName: Nullable<string>;
    function GetSyncName: string;
    procedure SetSyncName(const Value: string);
  public
    function IsSetSyncName: Boolean;
    property SyncName: string read GetSyncName write SetSyncName;
  end;
  
implementation

{ EResourceDataSyncAlreadyExistsException }

function EResourceDataSyncAlreadyExistsException.GetSyncName: string;
begin
  Result := FSyncName.ValueOrDefault;
end;

procedure EResourceDataSyncAlreadyExistsException.SetSyncName(const Value: string);
begin
  FSyncName := Value;
end;

function EResourceDataSyncAlreadyExistsException.IsSetSyncName: Boolean;
begin
  Result := FSyncName.HasValue;
end;

end.
