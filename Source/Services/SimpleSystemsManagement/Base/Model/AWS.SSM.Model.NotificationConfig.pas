unit AWS.SSM.Model.NotificationConfig;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TNotificationConfig = class;
  
  INotificationConfig = interface
    function GetNotificationArn: string;
    procedure SetNotificationArn(const Value: string);
    function GetNotificationEvents: TList<string>;
    procedure SetNotificationEvents(const Value: TList<string>);
    function GetKeepNotificationEvents: Boolean;
    procedure SetKeepNotificationEvents(const Value: Boolean);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
    function Obj: TNotificationConfig;
    function IsSetNotificationArn: Boolean;
    function IsSetNotificationEvents: Boolean;
    function IsSetNotificationType: Boolean;
    property NotificationArn: string read GetNotificationArn write SetNotificationArn;
    property NotificationEvents: TList<string> read GetNotificationEvents write SetNotificationEvents;
    property KeepNotificationEvents: Boolean read GetKeepNotificationEvents write SetKeepNotificationEvents;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
  end;
  
  TNotificationConfig = class
  strict private
    FNotificationArn: Nullable<string>;
    FNotificationEvents: TList<string>;
    FKeepNotificationEvents: Boolean;
    FNotificationType: Nullable<TNotificationType>;
    function GetNotificationArn: string;
    procedure SetNotificationArn(const Value: string);
    function GetNotificationEvents: TList<string>;
    procedure SetNotificationEvents(const Value: TList<string>);
    function GetKeepNotificationEvents: Boolean;
    procedure SetKeepNotificationEvents(const Value: Boolean);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
  strict protected
    function Obj: TNotificationConfig;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNotificationArn: Boolean;
    function IsSetNotificationEvents: Boolean;
    function IsSetNotificationType: Boolean;
    property NotificationArn: string read GetNotificationArn write SetNotificationArn;
    property NotificationEvents: TList<string> read GetNotificationEvents write SetNotificationEvents;
    property KeepNotificationEvents: Boolean read GetKeepNotificationEvents write SetKeepNotificationEvents;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
  end;
  
implementation

{ TNotificationConfig }

constructor TNotificationConfig.Create;
begin
  inherited;
  FNotificationEvents := TList<string>.Create;
end;

destructor TNotificationConfig.Destroy;
begin
  NotificationEvents := nil;
  inherited;
end;

function TNotificationConfig.Obj: TNotificationConfig;
begin
  Result := Self;
end;

function TNotificationConfig.GetNotificationArn: string;
begin
  Result := FNotificationArn.ValueOrDefault;
end;

procedure TNotificationConfig.SetNotificationArn(const Value: string);
begin
  FNotificationArn := Value;
end;

function TNotificationConfig.IsSetNotificationArn: Boolean;
begin
  Result := FNotificationArn.HasValue;
end;

function TNotificationConfig.GetNotificationEvents: TList<string>;
begin
  Result := FNotificationEvents;
end;

procedure TNotificationConfig.SetNotificationEvents(const Value: TList<string>);
begin
  if FNotificationEvents <> Value then
  begin
    if not KeepNotificationEvents then
      FNotificationEvents.Free;
    FNotificationEvents := Value;
  end;
end;

function TNotificationConfig.GetKeepNotificationEvents: Boolean;
begin
  Result := FKeepNotificationEvents;
end;

procedure TNotificationConfig.SetKeepNotificationEvents(const Value: Boolean);
begin
  FKeepNotificationEvents := Value;
end;

function TNotificationConfig.IsSetNotificationEvents: Boolean;
begin
  Result := (FNotificationEvents <> nil) and (FNotificationEvents.Count > 0);
end;

function TNotificationConfig.GetNotificationType: TNotificationType;
begin
  Result := FNotificationType.ValueOrDefault;
end;

procedure TNotificationConfig.SetNotificationType(const Value: TNotificationType);
begin
  FNotificationType := Value;
end;

function TNotificationConfig.IsSetNotificationType: Boolean;
begin
  Result := FNotificationType.HasValue;
end;

end.
