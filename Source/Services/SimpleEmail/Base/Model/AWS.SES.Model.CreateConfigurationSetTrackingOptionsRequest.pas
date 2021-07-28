unit AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.TrackingOptions;

type
  TCreateConfigurationSetTrackingOptionsRequest = class;
  
  ICreateConfigurationSetTrackingOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function Obj: TCreateConfigurationSetTrackingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
  end;
  
  TCreateConfigurationSetTrackingOptionsRequest = class(TAmazonSimpleEmailServiceRequest, ICreateConfigurationSetTrackingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FTrackingOptions: TTrackingOptions;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
  strict protected
    function Obj: TCreateConfigurationSetTrackingOptionsRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
  end;
  
implementation

{ TCreateConfigurationSetTrackingOptionsRequest }

destructor TCreateConfigurationSetTrackingOptionsRequest.Destroy;
begin
  FTrackingOptions.Free;
  inherited;
end;

function TCreateConfigurationSetTrackingOptionsRequest.Obj: TCreateConfigurationSetTrackingOptionsRequest;
begin
  Result := Self;
end;

function TCreateConfigurationSetTrackingOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TCreateConfigurationSetTrackingOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TCreateConfigurationSetTrackingOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TCreateConfigurationSetTrackingOptionsRequest.GetTrackingOptions: TTrackingOptions;
begin
  Result := FTrackingOptions;
end;

procedure TCreateConfigurationSetTrackingOptionsRequest.SetTrackingOptions(const Value: TTrackingOptions);
begin
  if FTrackingOptions <> Value then
  begin
    FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TCreateConfigurationSetTrackingOptionsRequest.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
