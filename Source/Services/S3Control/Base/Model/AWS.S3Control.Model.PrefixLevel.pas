unit AWS.S3Control.Model.PrefixLevel;

interface

uses
  AWS.S3Control.Model.PrefixLevelStorageMetrics;

type
  TPrefixLevel = class;
  
  IPrefixLevel = interface
    function GetStorageMetrics: TPrefixLevelStorageMetrics;
    procedure SetStorageMetrics(const Value: TPrefixLevelStorageMetrics);
    function GetKeepStorageMetrics: Boolean;
    procedure SetKeepStorageMetrics(const Value: Boolean);
    function Obj: TPrefixLevel;
    function IsSetStorageMetrics: Boolean;
    property StorageMetrics: TPrefixLevelStorageMetrics read GetStorageMetrics write SetStorageMetrics;
    property KeepStorageMetrics: Boolean read GetKeepStorageMetrics write SetKeepStorageMetrics;
  end;
  
  TPrefixLevel = class
  strict private
    FStorageMetrics: TPrefixLevelStorageMetrics;
    FKeepStorageMetrics: Boolean;
    function GetStorageMetrics: TPrefixLevelStorageMetrics;
    procedure SetStorageMetrics(const Value: TPrefixLevelStorageMetrics);
    function GetKeepStorageMetrics: Boolean;
    procedure SetKeepStorageMetrics(const Value: Boolean);
  strict protected
    function Obj: TPrefixLevel;
  public
    destructor Destroy; override;
    function IsSetStorageMetrics: Boolean;
    property StorageMetrics: TPrefixLevelStorageMetrics read GetStorageMetrics write SetStorageMetrics;
    property KeepStorageMetrics: Boolean read GetKeepStorageMetrics write SetKeepStorageMetrics;
  end;
  
implementation

{ TPrefixLevel }

destructor TPrefixLevel.Destroy;
begin
  StorageMetrics := nil;
  inherited;
end;

function TPrefixLevel.Obj: TPrefixLevel;
begin
  Result := Self;
end;

function TPrefixLevel.GetStorageMetrics: TPrefixLevelStorageMetrics;
begin
  Result := FStorageMetrics;
end;

procedure TPrefixLevel.SetStorageMetrics(const Value: TPrefixLevelStorageMetrics);
begin
  if FStorageMetrics <> Value then
  begin
    if not KeepStorageMetrics then
      FStorageMetrics.Free;
    FStorageMetrics := Value;
  end;
end;

function TPrefixLevel.GetKeepStorageMetrics: Boolean;
begin
  Result := FKeepStorageMetrics;
end;

procedure TPrefixLevel.SetKeepStorageMetrics(const Value: Boolean);
begin
  FKeepStorageMetrics := Value;
end;

function TPrefixLevel.IsSetStorageMetrics: Boolean;
begin
  Result := FStorageMetrics <> nil;
end;

end.
