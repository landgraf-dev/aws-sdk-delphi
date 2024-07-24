unit AWS.SSM.Model.ResourceDataSyncDestinationDataSharing;

interface

uses
  AWS.Nullable;

type
  TResourceDataSyncDestinationDataSharing = class;
  
  IResourceDataSyncDestinationDataSharing = interface
    function GetDestinationDataSharingType: string;
    procedure SetDestinationDataSharingType(const Value: string);
    function Obj: TResourceDataSyncDestinationDataSharing;
    function IsSetDestinationDataSharingType: Boolean;
    property DestinationDataSharingType: string read GetDestinationDataSharingType write SetDestinationDataSharingType;
  end;
  
  TResourceDataSyncDestinationDataSharing = class
  strict private
    FDestinationDataSharingType: Nullable<string>;
    function GetDestinationDataSharingType: string;
    procedure SetDestinationDataSharingType(const Value: string);
  strict protected
    function Obj: TResourceDataSyncDestinationDataSharing;
  public
    function IsSetDestinationDataSharingType: Boolean;
    property DestinationDataSharingType: string read GetDestinationDataSharingType write SetDestinationDataSharingType;
  end;
  
implementation

{ TResourceDataSyncDestinationDataSharing }

function TResourceDataSyncDestinationDataSharing.Obj: TResourceDataSyncDestinationDataSharing;
begin
  Result := Self;
end;

function TResourceDataSyncDestinationDataSharing.GetDestinationDataSharingType: string;
begin
  Result := FDestinationDataSharingType.ValueOrDefault;
end;

procedure TResourceDataSyncDestinationDataSharing.SetDestinationDataSharingType(const Value: string);
begin
  FDestinationDataSharingType := Value;
end;

function TResourceDataSyncDestinationDataSharing.IsSetDestinationDataSharingType: Boolean;
begin
  Result := FDestinationDataSharingType.HasValue;
end;

end.
