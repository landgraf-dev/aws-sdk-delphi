unit AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.TrackingOptions;

type
  TUpdateConfigurationSetTrackingOptionsRequest = class;
  
  IUpdateConfigurationSetTrackingOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
    function Obj: TUpdateConfigurationSetTrackingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
  TUpdateConfigurationSetTrackingOptionsRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateConfigurationSetTrackingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FTrackingOptions: TTrackingOptions;
    FKeepTrackingOptions: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
  strict protected
    function Obj: TUpdateConfigurationSetTrackingOptionsRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
implementation

{ TUpdateConfigurationSetTrackingOptionsRequest }

destructor TUpdateConfigurationSetTrackingOptionsRequest.Destroy;
begin
  TrackingOptions := nil;
  inherited;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.Obj: TUpdateConfigurationSetTrackingOptionsRequest;
begin
  Result := Self;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TUpdateConfigurationSetTrackingOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.GetTrackingOptions: TTrackingOptions;
begin
  Result := FTrackingOptions;
end;

procedure TUpdateConfigurationSetTrackingOptionsRequest.SetTrackingOptions(const Value: TTrackingOptions);
begin
  if FTrackingOptions <> Value then
  begin
    if not KeepTrackingOptions then
      FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.GetKeepTrackingOptions: Boolean;
begin
  Result := FKeepTrackingOptions;
end;

procedure TUpdateConfigurationSetTrackingOptionsRequest.SetKeepTrackingOptions(const Value: Boolean);
begin
  FKeepTrackingOptions := Value;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
