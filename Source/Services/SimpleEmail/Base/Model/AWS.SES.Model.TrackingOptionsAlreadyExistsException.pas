unit AWS.SES.Model.TrackingOptionsAlreadyExistsException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ETrackingOptionsAlreadyExistsException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ ETrackingOptionsAlreadyExistsException }

function ETrackingOptionsAlreadyExistsException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure ETrackingOptionsAlreadyExistsException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function ETrackingOptionsAlreadyExistsException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
