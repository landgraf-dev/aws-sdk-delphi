unit AWS.SES.Model.TrackingOptionsDoesNotExistException;

interface

uses
  AWS.SES.Exception, 
  AWS.Nullable;

type
  ETrackingOptionsDoesNotExistException = class(EAmazonSimpleEmailServiceException)
  strict private
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  public
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ ETrackingOptionsDoesNotExistException }

function ETrackingOptionsDoesNotExistException.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure ETrackingOptionsDoesNotExistException.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function ETrackingOptionsDoesNotExistException.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
