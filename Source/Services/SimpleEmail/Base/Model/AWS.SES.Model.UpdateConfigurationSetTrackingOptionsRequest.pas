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
    function Obj: TUpdateConfigurationSetTrackingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
  end;
  
  TUpdateConfigurationSetTrackingOptionsRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateConfigurationSetTrackingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FTrackingOptions: TTrackingOptions;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
  strict protected
    function Obj: TUpdateConfigurationSetTrackingOptionsRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
  end;
  
implementation

{ TUpdateConfigurationSetTrackingOptionsRequest }

destructor TUpdateConfigurationSetTrackingOptionsRequest.Destroy;
begin
  FTrackingOptions.Free;
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
    FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TUpdateConfigurationSetTrackingOptionsRequest.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
