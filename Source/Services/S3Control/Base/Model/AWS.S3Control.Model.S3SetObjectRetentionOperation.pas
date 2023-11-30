unit AWS.S3Control.Model.S3SetObjectRetentionOperation;

interface

uses
  AWS.Nullable, 
  AWS.S3Control.Model.S3Retention;

type
  TS3SetObjectRetentionOperation = class;
  
  IS3SetObjectRetentionOperation = interface
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetRetention: TS3Retention;
    procedure SetRetention(const Value: TS3Retention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
    function Obj: TS3SetObjectRetentionOperation;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetRetention: Boolean;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property Retention: TS3Retention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
  end;
  
  TS3SetObjectRetentionOperation = class
  strict private
    FBypassGovernanceRetention: Nullable<Boolean>;
    FRetention: TS3Retention;
    FKeepRetention: Boolean;
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetRetention: TS3Retention;
    procedure SetRetention(const Value: TS3Retention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
  strict protected
    function Obj: TS3SetObjectRetentionOperation;
  public
    destructor Destroy; override;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetRetention: Boolean;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property Retention: TS3Retention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
  end;
  
implementation

{ TS3SetObjectRetentionOperation }

destructor TS3SetObjectRetentionOperation.Destroy;
begin
  Retention := nil;
  inherited;
end;

function TS3SetObjectRetentionOperation.Obj: TS3SetObjectRetentionOperation;
begin
  Result := Self;
end;

function TS3SetObjectRetentionOperation.GetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.ValueOrDefault;
end;

procedure TS3SetObjectRetentionOperation.SetBypassGovernanceRetention(const Value: Boolean);
begin
  FBypassGovernanceRetention := Value;
end;

function TS3SetObjectRetentionOperation.IsSetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.HasValue;
end;

function TS3SetObjectRetentionOperation.GetRetention: TS3Retention;
begin
  Result := FRetention;
end;

procedure TS3SetObjectRetentionOperation.SetRetention(const Value: TS3Retention);
begin
  if FRetention <> Value then
  begin
    if not KeepRetention then
      FRetention.Free;
    FRetention := Value;
  end;
end;

function TS3SetObjectRetentionOperation.GetKeepRetention: Boolean;
begin
  Result := FKeepRetention;
end;

procedure TS3SetObjectRetentionOperation.SetKeepRetention(const Value: Boolean);
begin
  FKeepRetention := Value;
end;

function TS3SetObjectRetentionOperation.IsSetRetention: Boolean;
begin
  Result := FRetention <> nil;
end;

end.
