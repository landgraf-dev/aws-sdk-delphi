unit AWS.Rekognition.Model.StreamProcessorSettingsForUpdate;

interface

uses
  AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate;

type
  TStreamProcessorSettingsForUpdate = class;
  
  IStreamProcessorSettingsForUpdate = interface
    function GetConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate;
    procedure SetConnectedHomeForUpdate(const Value: TConnectedHomeSettingsForUpdate);
    function GetKeepConnectedHomeForUpdate: Boolean;
    procedure SetKeepConnectedHomeForUpdate(const Value: Boolean);
    function Obj: TStreamProcessorSettingsForUpdate;
    function IsSetConnectedHomeForUpdate: Boolean;
    property ConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate read GetConnectedHomeForUpdate write SetConnectedHomeForUpdate;
    property KeepConnectedHomeForUpdate: Boolean read GetKeepConnectedHomeForUpdate write SetKeepConnectedHomeForUpdate;
  end;
  
  TStreamProcessorSettingsForUpdate = class
  strict private
    FConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate;
    FKeepConnectedHomeForUpdate: Boolean;
    function GetConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate;
    procedure SetConnectedHomeForUpdate(const Value: TConnectedHomeSettingsForUpdate);
    function GetKeepConnectedHomeForUpdate: Boolean;
    procedure SetKeepConnectedHomeForUpdate(const Value: Boolean);
  strict protected
    function Obj: TStreamProcessorSettingsForUpdate;
  public
    destructor Destroy; override;
    function IsSetConnectedHomeForUpdate: Boolean;
    property ConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate read GetConnectedHomeForUpdate write SetConnectedHomeForUpdate;
    property KeepConnectedHomeForUpdate: Boolean read GetKeepConnectedHomeForUpdate write SetKeepConnectedHomeForUpdate;
  end;
  
implementation

{ TStreamProcessorSettingsForUpdate }

destructor TStreamProcessorSettingsForUpdate.Destroy;
begin
  ConnectedHomeForUpdate := nil;
  inherited;
end;

function TStreamProcessorSettingsForUpdate.Obj: TStreamProcessorSettingsForUpdate;
begin
  Result := Self;
end;

function TStreamProcessorSettingsForUpdate.GetConnectedHomeForUpdate: TConnectedHomeSettingsForUpdate;
begin
  Result := FConnectedHomeForUpdate;
end;

procedure TStreamProcessorSettingsForUpdate.SetConnectedHomeForUpdate(const Value: TConnectedHomeSettingsForUpdate);
begin
  if FConnectedHomeForUpdate <> Value then
  begin
    if not KeepConnectedHomeForUpdate then
      FConnectedHomeForUpdate.Free;
    FConnectedHomeForUpdate := Value;
  end;
end;

function TStreamProcessorSettingsForUpdate.GetKeepConnectedHomeForUpdate: Boolean;
begin
  Result := FKeepConnectedHomeForUpdate;
end;

procedure TStreamProcessorSettingsForUpdate.SetKeepConnectedHomeForUpdate(const Value: Boolean);
begin
  FKeepConnectedHomeForUpdate := Value;
end;

function TStreamProcessorSettingsForUpdate.IsSetConnectedHomeForUpdate: Boolean;
begin
  Result := FConnectedHomeForUpdate <> nil;
end;

end.
