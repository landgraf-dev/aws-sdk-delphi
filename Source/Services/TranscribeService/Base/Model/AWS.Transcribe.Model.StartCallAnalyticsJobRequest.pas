unit AWS.Transcribe.Model.StartCallAnalyticsJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.CallAnalyticsJobSettings;

type
  TStartCallAnalyticsJobRequest = class;
  
  IStartCallAnalyticsJobRequest = interface
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetChannelDefinitions: TObjectList<TChannelDefinition>;
    procedure SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
    function GetKeepChannelDefinitions: Boolean;
    procedure SetKeepChannelDefinitions(const Value: Boolean);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputLocation: string;
    procedure SetOutputLocation(const Value: string);
    function GetSettings: TCallAnalyticsJobSettings;
    procedure SetSettings(const Value: TCallAnalyticsJobSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function Obj: TStartCallAnalyticsJobRequest;
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetChannelDefinitions: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetMedia: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetSettings: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property ChannelDefinitions: TObjectList<TChannelDefinition> read GetChannelDefinitions write SetChannelDefinitions;
    property KeepChannelDefinitions: Boolean read GetKeepChannelDefinitions write SetKeepChannelDefinitions;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputLocation: string read GetOutputLocation write SetOutputLocation;
    property Settings: TCallAnalyticsJobSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
  end;
  
  TStartCallAnalyticsJobRequest = class(TAmazonTranscribeServiceRequest, IStartCallAnalyticsJobRequest)
  strict private
    FCallAnalyticsJobName: Nullable<string>;
    FChannelDefinitions: TObjectList<TChannelDefinition>;
    FKeepChannelDefinitions: Boolean;
    FDataAccessRoleArn: Nullable<string>;
    FMedia: TMedia;
    FKeepMedia: Boolean;
    FOutputEncryptionKMSKeyId: Nullable<string>;
    FOutputLocation: Nullable<string>;
    FSettings: TCallAnalyticsJobSettings;
    FKeepSettings: Boolean;
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetChannelDefinitions: TObjectList<TChannelDefinition>;
    procedure SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
    function GetKeepChannelDefinitions: Boolean;
    procedure SetKeepChannelDefinitions(const Value: Boolean);
    function GetDataAccessRoleArn: string;
    procedure SetDataAccessRoleArn(const Value: string);
    function GetMedia: TMedia;
    procedure SetMedia(const Value: TMedia);
    function GetKeepMedia: Boolean;
    procedure SetKeepMedia(const Value: Boolean);
    function GetOutputEncryptionKMSKeyId: string;
    procedure SetOutputEncryptionKMSKeyId(const Value: string);
    function GetOutputLocation: string;
    procedure SetOutputLocation(const Value: string);
    function GetSettings: TCallAnalyticsJobSettings;
    procedure SetSettings(const Value: TCallAnalyticsJobSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
  strict protected
    function Obj: TStartCallAnalyticsJobRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetChannelDefinitions: Boolean;
    function IsSetDataAccessRoleArn: Boolean;
    function IsSetMedia: Boolean;
    function IsSetOutputEncryptionKMSKeyId: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetSettings: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property ChannelDefinitions: TObjectList<TChannelDefinition> read GetChannelDefinitions write SetChannelDefinitions;
    property KeepChannelDefinitions: Boolean read GetKeepChannelDefinitions write SetKeepChannelDefinitions;
    property DataAccessRoleArn: string read GetDataAccessRoleArn write SetDataAccessRoleArn;
    property Media: TMedia read GetMedia write SetMedia;
    property KeepMedia: Boolean read GetKeepMedia write SetKeepMedia;
    property OutputEncryptionKMSKeyId: string read GetOutputEncryptionKMSKeyId write SetOutputEncryptionKMSKeyId;
    property OutputLocation: string read GetOutputLocation write SetOutputLocation;
    property Settings: TCallAnalyticsJobSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
  end;
  
implementation

{ TStartCallAnalyticsJobRequest }

constructor TStartCallAnalyticsJobRequest.Create;
begin
  inherited;
  FChannelDefinitions := TObjectList<TChannelDefinition>.Create;
end;

destructor TStartCallAnalyticsJobRequest.Destroy;
begin
  Settings := nil;
  Media := nil;
  ChannelDefinitions := nil;
  inherited;
end;

function TStartCallAnalyticsJobRequest.Obj: TStartCallAnalyticsJobRequest;
begin
  Result := Self;
end;

function TStartCallAnalyticsJobRequest.GetCallAnalyticsJobName: string;
begin
  Result := FCallAnalyticsJobName.ValueOrDefault;
end;

procedure TStartCallAnalyticsJobRequest.SetCallAnalyticsJobName(const Value: string);
begin
  FCallAnalyticsJobName := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetCallAnalyticsJobName: Boolean;
begin
  Result := FCallAnalyticsJobName.HasValue;
end;

function TStartCallAnalyticsJobRequest.GetChannelDefinitions: TObjectList<TChannelDefinition>;
begin
  Result := FChannelDefinitions;
end;

procedure TStartCallAnalyticsJobRequest.SetChannelDefinitions(const Value: TObjectList<TChannelDefinition>);
begin
  if FChannelDefinitions <> Value then
  begin
    if not KeepChannelDefinitions then
      FChannelDefinitions.Free;
    FChannelDefinitions := Value;
  end;
end;

function TStartCallAnalyticsJobRequest.GetKeepChannelDefinitions: Boolean;
begin
  Result := FKeepChannelDefinitions;
end;

procedure TStartCallAnalyticsJobRequest.SetKeepChannelDefinitions(const Value: Boolean);
begin
  FKeepChannelDefinitions := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetChannelDefinitions: Boolean;
begin
  Result := (FChannelDefinitions <> nil) and (FChannelDefinitions.Count > 0);
end;

function TStartCallAnalyticsJobRequest.GetDataAccessRoleArn: string;
begin
  Result := FDataAccessRoleArn.ValueOrDefault;
end;

procedure TStartCallAnalyticsJobRequest.SetDataAccessRoleArn(const Value: string);
begin
  FDataAccessRoleArn := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetDataAccessRoleArn: Boolean;
begin
  Result := FDataAccessRoleArn.HasValue;
end;

function TStartCallAnalyticsJobRequest.GetMedia: TMedia;
begin
  Result := FMedia;
end;

procedure TStartCallAnalyticsJobRequest.SetMedia(const Value: TMedia);
begin
  if FMedia <> Value then
  begin
    if not KeepMedia then
      FMedia.Free;
    FMedia := Value;
  end;
end;

function TStartCallAnalyticsJobRequest.GetKeepMedia: Boolean;
begin
  Result := FKeepMedia;
end;

procedure TStartCallAnalyticsJobRequest.SetKeepMedia(const Value: Boolean);
begin
  FKeepMedia := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetMedia: Boolean;
begin
  Result := FMedia <> nil;
end;

function TStartCallAnalyticsJobRequest.GetOutputEncryptionKMSKeyId: string;
begin
  Result := FOutputEncryptionKMSKeyId.ValueOrDefault;
end;

procedure TStartCallAnalyticsJobRequest.SetOutputEncryptionKMSKeyId(const Value: string);
begin
  FOutputEncryptionKMSKeyId := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetOutputEncryptionKMSKeyId: Boolean;
begin
  Result := FOutputEncryptionKMSKeyId.HasValue;
end;

function TStartCallAnalyticsJobRequest.GetOutputLocation: string;
begin
  Result := FOutputLocation.ValueOrDefault;
end;

procedure TStartCallAnalyticsJobRequest.SetOutputLocation(const Value: string);
begin
  FOutputLocation := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation.HasValue;
end;

function TStartCallAnalyticsJobRequest.GetSettings: TCallAnalyticsJobSettings;
begin
  Result := FSettings;
end;

procedure TStartCallAnalyticsJobRequest.SetSettings(const Value: TCallAnalyticsJobSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TStartCallAnalyticsJobRequest.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TStartCallAnalyticsJobRequest.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TStartCallAnalyticsJobRequest.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

end.
