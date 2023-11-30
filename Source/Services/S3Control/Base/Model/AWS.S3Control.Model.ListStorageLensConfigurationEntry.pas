unit AWS.S3Control.Model.ListStorageLensConfigurationEntry;

interface

uses
  AWS.Nullable;

type
  TListStorageLensConfigurationEntry = class;
  
  IListStorageLensConfigurationEntry = interface
    function GetHomeRegion: string;
    procedure SetHomeRegion(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetStorageLensArn: string;
    procedure SetStorageLensArn(const Value: string);
    function Obj: TListStorageLensConfigurationEntry;
    function IsSetHomeRegion: Boolean;
    function IsSetId: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetStorageLensArn: Boolean;
    property HomeRegion: string read GetHomeRegion write SetHomeRegion;
    property Id: string read GetId write SetId;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property StorageLensArn: string read GetStorageLensArn write SetStorageLensArn;
  end;
  
  TListStorageLensConfigurationEntry = class
  strict private
    FHomeRegion: Nullable<string>;
    FId: Nullable<string>;
    FIsEnabled: Nullable<Boolean>;
    FStorageLensArn: Nullable<string>;
    function GetHomeRegion: string;
    procedure SetHomeRegion(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIsEnabled: Boolean;
    procedure SetIsEnabled(const Value: Boolean);
    function GetStorageLensArn: string;
    procedure SetStorageLensArn(const Value: string);
  strict protected
    function Obj: TListStorageLensConfigurationEntry;
  public
    function IsSetHomeRegion: Boolean;
    function IsSetId: Boolean;
    function IsSetIsEnabled: Boolean;
    function IsSetStorageLensArn: Boolean;
    property HomeRegion: string read GetHomeRegion write SetHomeRegion;
    property Id: string read GetId write SetId;
    property IsEnabled: Boolean read GetIsEnabled write SetIsEnabled;
    property StorageLensArn: string read GetStorageLensArn write SetStorageLensArn;
  end;
  
implementation

{ TListStorageLensConfigurationEntry }

function TListStorageLensConfigurationEntry.Obj: TListStorageLensConfigurationEntry;
begin
  Result := Self;
end;

function TListStorageLensConfigurationEntry.GetHomeRegion: string;
begin
  Result := FHomeRegion.ValueOrDefault;
end;

procedure TListStorageLensConfigurationEntry.SetHomeRegion(const Value: string);
begin
  FHomeRegion := Value;
end;

function TListStorageLensConfigurationEntry.IsSetHomeRegion: Boolean;
begin
  Result := FHomeRegion.HasValue;
end;

function TListStorageLensConfigurationEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TListStorageLensConfigurationEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TListStorageLensConfigurationEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TListStorageLensConfigurationEntry.GetIsEnabled: Boolean;
begin
  Result := FIsEnabled.ValueOrDefault;
end;

procedure TListStorageLensConfigurationEntry.SetIsEnabled(const Value: Boolean);
begin
  FIsEnabled := Value;
end;

function TListStorageLensConfigurationEntry.IsSetIsEnabled: Boolean;
begin
  Result := FIsEnabled.HasValue;
end;

function TListStorageLensConfigurationEntry.GetStorageLensArn: string;
begin
  Result := FStorageLensArn.ValueOrDefault;
end;

procedure TListStorageLensConfigurationEntry.SetStorageLensArn(const Value: string);
begin
  FStorageLensArn := Value;
end;

function TListStorageLensConfigurationEntry.IsSetStorageLensArn: Boolean;
begin
  Result := FStorageLensArn.HasValue;
end;

end.
